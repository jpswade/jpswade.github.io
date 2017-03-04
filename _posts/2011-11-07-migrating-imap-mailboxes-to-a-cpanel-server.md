---
id: 3322
title: Migrating IMAP mailboxes to a cPanel server
date: 2011-11-07T23:02:22+00:00
author: James Wade
layout: post
guid: http://wade.be/?p=3322
permalink: /migrating-imap-mailboxes-to-a-cpanel-server/
aktt_notify_twitter:
  - yes
aktt_tweeted:
  - 1
dsq_thread_id:
  - 4536798462
categories:
  - Sysadmin
tags:
  - centos
  - cpanel
  - imap
  - imapsync
  - migration
---
<p class="lead">
  A customer got in touch with us and explained their situation.<a href="http://wade.be/upload/Envelope.png"><img class="alignright size-full wp-image-3328" title="Envelope" src="http://wade.be/upload/Envelope.png" alt="" width="256" height="256" srcset="http://wade.be/upload/Envelope-150x150.png 150w, http://wade.be/upload/Envelope.png 256w" sizes="(max-width: 256px) 100vw, 256px" /></a>
</p>

They need to setup their email on the go and configure some forwarders. Their issue was that they were never given access to the control panel by the account holder and have since lost touch.

This unfortunately left them in a situation where they had no control over their hosting, they asked me to help them out.

My task was to migrate their existing IMAP mailboxes to their hosting account on one of our cPanel servers&#8230;

<!--more-->

The first thing I did was get their UK domain onto our TAG giving us control over that for a small cost of £10+VAT, which the customer was only happy to pay.

There are other ways to get control of the domain without the cost, such as dealing with the host directly but in this case, fasthosts refuses to communicate with you unless you're a customer. Ridiculous.

From here on inward, you'll need root access to cPanel WHM on your server, or know someone who has.

At this point you need to start to create your mailboxes on the new server that match up to the existing ones.

The only issue with this is that you may find you can't add &#8220;Remote Domains&#8221; (domains hosted elsewhere).

> This item lets you allow cPanel users to create parked and addon domains that resolve to other servers. To make your selection, click the button corresponding to the option you wish to use. This value defaults to Off.
> 
> Warning: Enabling this option can cause major security issues. We strongly recommend that you do not enable this option.

You'll need to &#8220;[Allow Remote Domains](http://docs.cpanel.net/twiki/bin/view/AllDocumentation/WHMDocs/TweakSettings#Domains)&#8221; (Under &#8220;Tweak Settings&#8221; in WHM) so you're able to add the domain. Once added, you can turn it off again.

As I said, once the domain is added you can [create your mailboxes](http://www.cpanel.net/media/tutorials/emailaccounts.htm) in cPanel to match what you already have.

I then went ahead and added them to the customer's email client (Outlook 2007) to make sure everything was working as expected (it was).

They should have two sets of accounts added for each email address, the only difference between them should be the servers they use.

### Migrating

This is where the fun starts.

If you've tried moving messages before in Outlook you'll know it's pretty slow. The issue is that, you're downloading the message from the existing server, copying it to your computer, then uploading it to the other server.

This is a slow process, especially if you're on regular UK broadband. In addition to that, you'll find that Outlook will lock up while it waits for the server to respond.

I tested moving a few thousand messages: it took 8 hours. At this rate it would take around a week to do all of the accounts which isn't feasible in a live environment.

Thunderbird isn't much better. There had to be a better solution&#8230;

I got in touch with cPanel, as they have a dedicated &#8220;migration&#8221; team, however they were asking for shell, ftp or control panel access, none of which the customer had.

At first I had considered a server side, IMAP compatible email client such as Mutt or PINE, but I felt this may be a bit cumbersome.

Enter imapsync&#8230;

### imapsync

After a quick search I came across imapsync which appears to be the solution I was looking for.

It's written in Perl and is open source so there's no reason it shouldn't run on a CentOS server.

To install imapsync on CentOS (with cPanel) you'll need to do the following:

First of all, imapsync isn't in any of the official CentOS repositories so you need to install the [RPMForge repository](http://wiki.centos.org/AdditionalResources/Repositories/RPMForge).

So, for example, on a CentOS 4 i386 install I would do:

> wget http://packages.sw.be/rpmforge-release/rpmforge-release-0.5.2-2.el4.rf.i386.rpm
> 
> rpm -i rpmforge-release-0.5.2-2.el4.rf.i386.rpm

Now it's installed, you can utilise it by using yum combined with &#8220;&#8211;enablerepo=rpmforge&#8221; to install imapsync.

However, before you go ahead and do that, you need to realise that because cPanel has it's own set of perl modules and blocks the OS ones, you need to disable the &#8220;exclude&#8221; line in the yum configuration file.

> nano -w /etc/yum.conf
> 
> Note: Use whatever editor you prefer, I'm using nano. The -w is for no word wrap as this file contains long lines.

In this file, you need to comment out the following like:

> #exclude=apache\* bind-chroot courier\* dovecot\* exim\* filesystem httpd\* mod_ssl\* mysql\* nsd\* perl\* php\* pr$

The hash (#) at the beginning means it'll no longer be parsed, so nothing is excluded.

Now you can go ahead and install imapsync trouble free:

> yum install imapsync &#8211;enablerepo=rpmforge

This should install imapsync and any dependencies (such as the required perl modules).

The only advice that cPanel gave me when doing this is:

> It is possible this could break some components of cPanel, but it should be generally repairable as long as you run &#8220;/scripts/checkperlmodules &#8211;full &#8211;force&#8221; afterwards to rebuild/reinstall the cPanel versions of the various modules.

I suggest you also do that once imapsync is installed to ensure you don't break anything in cPanel.

### Migration

Now we have imapsync installed we can actually use it&#8230;

> <pre>imapsync \
       --host1 mail.example.co.uk --authmech1 PLAIN --user1 joe.blogs@example.co.uk --password1 12345678 \
       --host2 lemon.phurix.com --authmech2 PLAIN --user2 joe.blogs@example.co.uk --password2 99999999</pre>

This should be enough to get you going, but do be aware of the SECURITY issues outlined in the [imapsync README](http://ks.lamiral.info/imapsync/README).

Once this is done, all you need to do is get the name servers (or just the MX) changed on the domain to new hosting and after about 4 hours you should be good to go.