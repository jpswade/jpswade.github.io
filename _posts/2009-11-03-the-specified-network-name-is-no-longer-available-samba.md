---
id: 218
title: The specified network name is no longer available samba
date: 2009-11-03T13:02:14+00:00
author: admin
layout: post
guid: http://jpswade.github.io/?p=218
permalink: /the-specified-network-name-is-no-longer-available-samba/
aktt_notify_twitter:
  - yes
aktt_tweeted:
  - 1
categories:
  - Sysadmin
tags:
  - centos
  - samba
  - smb
---
<p class="lead">
  I keep getting this error:
</p>

> Error Copying File or Folder
> 
> Cannot copy xxx: The specified network name is no longer available.

Why?

<!--more-->

Well, I&#8217;m trying to copy a folder from my Windows XP SP2 Pro workstation onto my network share drive, which in fact is a samba (smb) server running on my &#8220;CentOS release 4.6 (Final)&#8221; box.

First thing to do is to check the error logs (generally) at &#8220;/var/log/samba&#8221;&#8230;

> <pre id="codemain" class="code">Sep  8 16:26:13 blade smbd[5913]: [2008/09/08 16:26:13, 0] lib/util_sock.c:read_data(534)
Sep  8 16:26:13 blade smbd[5913]:   read_data: read failure for 4 bytes to client 192.168.0.3. Error = Connection reset by peer
Sep  8 16:26:14 blade smbd[5914]: [2008/09/08 16:26:14, 0] lib/util_sock.c:set_socket_options(237)
Sep  8 16:26:14 blade smbd[5914]:   Unknown socket option TCP_NODELAY_SO_RCVBUF
Sep  8 16:26:14 blade smbd[5914]: [2008/09/08 16:26:14, 0] lib/util_sock.c:set_socket_options(237)
Sep  8 16:26:14 blade smbd[5914]:   Unknown socket option SO_SNBUF</pre>

Doesn&#8217;t seem very helpful&#8230;

I can&#8217;t work out why I&#8217;m getting these errors, why is the peer being reset?

I [learned that the peer](http://www.mail-archive.com/samba@lists.samba.org/msg91461.html) is the client machine that the server is peering to, which means the problem is that my workstation is disconnecting me.

I checked my Event Viewer (%SystemRoot%\system32\eventvwr.msc), which said:

> NetBT failed to process a request because it encountered OutOfResources exception(s) in the last 1 hour. Event ID: 4322

I might have known that the problem would be with windows and not linux.

However, maybe I spoke too soon, as a quick search lands me on the [redhat site](http://rhn.redhat.com/errata/RHBA-2008-0711.html), which states:

> * when Windows® clients performed file operations on files stored on a
  
> Samba share, various error messages popped-up, and the &#8220;Event ID: 4322&#8221;
  
> error was logged on the Windows® clients:
> 
> NetBT failed to process a request because it encountered OutOfResources
  
> exception(s) in the last 1 hour.

Which does describe the problem I&#8217;m having exactly, although i&#8217;ve only been experiencing this recently&#8230;

On the other hand the Microsoft site suggests I should [Disable then Enable the network adapter](http://technet.microsoft.com/en-us/library/cc727761.aspx)&#8230;

I tried this, and it appeared to work&#8230; At least for now&#8230;

Low and behold I soon got this error a short time later. Now what?

I decided to take a look into the [samba bug](https://bugzilla.samba.org/show_bug.cgi?id=4796) mentioned above. Apparently the problem is seen in Samba 3.0.25 and 3.0.25a, but not Samba 3.0.24. I am running 3.0.25b-1.el4_6.5 (smbd &#8211;version).

After investigating my yum log (/var/log/yum.log) I see the following&#8230;

> Jul 08 01:38:04 Updated: samba-common.i386 3.0.25b-1.el4_6.5
  
> Jul 08 01:39:11 Updated: samba.i386 3.0.25b-1.el4_6.5
  
> Jul 08 01:39:17 Updated: samba-client.i386 3.0.25b-1.el4_6.5

This means that it&#8217;s not very likely to be that as I&#8217;ve been running it for more than two months, and i&#8217;ve only recently switched to this workstation (after an uber hardware failure).

I tried from another machine, and I can copy anything without seeing these errors&#8230; The plot thickens&#8230;

I&#8217;m now convinced that the problem is with my workstation and not the server. Now what?

I [noticed a thread by a guy](http://groups.google.com/group/linux.samba/browse_thread/thread/3dca4ea0d4e7ef9a/9d9832a09a83ae54) who mentioned that his machine (like mine) was up to date, SP2, but did not have IE7, unlike my other machines. This interested me. Maybe his [bug isn&#8217;t fixed](https://bugzilla.samba.org/show_bug.cgi?id=4796) in the version I&#8217;m using? I think it is, it&#8217;s quite old&#8230;

However, it seems his solution was to upgrade to 3.0.25c and/or change the connection from &#8220;netbios-ssn&#8221; (port 139) to &#8220;microsoft-ds&#8221; (port 445)&#8230; somehow. I checked on both ends, and appears I&#8217;m already using &#8220;microsoft-ds&#8221; on this machine anyway&#8230;

Frustration is starting to kick in&#8230;

I&#8217;m out of ideas, perhaps I should roll back to an older version, see if that helps? My logs report this as been the previous version:

> Jun 07 17:01:55 Updated: samba-common.i386 3.0.10-1.4E.12.2
  
> Jun 07 17:04:29 Updated: samba-client.i386 3.0.10-1.4E.12.2
  
> Jun 07 17:07:44 Updated: samba.i386 3.0.10-1.4E.12.2

I had second thoughts about this when reading the samba change log (rpm -q &#8211;changelog samba). There seems to be quite a few security fixes that I&#8217;d rather keep&#8230;

I&#8217;m totally out of ideas&#8230; &#8220;yum remove samba&#8221; it is&#8230; However, apparently to install an old version I have to first install a plugin called &#8220;yum-allowdowngrade&#8221;.

This is getting complicated, especially when it probably isn&#8217;t a problem with the server.

I decided to try an updated version instead&#8230;

> yum remove samba
  
> yum remove samba-common
  
> rpm -i http://charliebrady.org/samba/samba-common-3.0.30-0.i386.rpm
> 
> rpm -i ftp://ftp.pbone.net/mirror/www.startcom.org/AS-4.0.0/os/i386/StartCom/RPMS/perl-Convert-ASN1-0.18-3.noarch.rpm
  
> rpm -i http://charliebrady.org/samba/samba-3.0.30-0.i386.rpm
  
> service samba start

It&#8217;s installed, and it started, however I appear to have lost my settings.

> mv /etc/samba/smb.conf /etc/samba/smb.conf.recent
  
> mv /etc/samba/smb.conf.rpmsave /etc/samba/smb.conf
  
> service smb restart

Testing, and so far so good!

In summary, when I was convinced it was the silly windows based client workstation, instead it was the insanely overly complex linux server. This could all be avoided if redhat/centos wasn&#8217;t so keen on [backporting](http://www.redhat.com/security/updates/backporting/?sc_cid=3093) and I had the latest version in the first place.

I look forward to the updates.