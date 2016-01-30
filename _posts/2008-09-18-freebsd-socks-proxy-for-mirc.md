---
id: 220
title: Setting up a FreeBSD socks proxy server for use with mIRC
date: 2008-09-18T03:51:48+00:00
author: admin
layout:
  - default
guid: http://jpswade.github.io/?p=220
permalink: /freebsd-socks-proxy-for-mirc/
aktt_notify_twitter:
  - yes
categories:
  - Development
  - Sysadmin
tags:
  - FreeBSD
---
<p class="lead">
  <em>Update: Looking for the sss.pl? Try the <a href="https://sourceforge.net/projects/ssspl/">Simple Sockets Server</a> project page.</em>
</p>

I&#8217;m getting fed up with my current IRC BNC software. At the moment I&#8217;m using psyBNC, which means I have to connect to it like you would an IRC server, then issue commands to that to tell it to connect to the IRC server of your choice.

I no longer need the features of psyBNC and decided that there must be a better way.

At first I started looking at other, more basic BNC software, but then worked out that they work in very much the same way as psyBNC in the fact that you have to first connect to it, then tell it where to connect to.

So I thought&#8230; What about a socks5 proxy?

<!--more-->

My BNC currently runs on my FreeBSD server, which I use for my IRC activity as it has plenty of IPs and lots of Vhosts.

mIRC can connect to an IRC Server through a Socks4, Socks5, or Proxy firewall.

In mIRC the fields the Firewall/Proxy dialogue box are as follows: Firewall Support <None|Server|DCC|Both>; Protocol <Socks4|Socks5|Proxy>; Hostname; User ID; Password; Port.

Judging by this, what I need is some kind of Socks daemon/server that has the ability to allow for a username or user id and a password.

I had a look at using OpenSSH&#8217;s Socks compatible dynamic forwarding by doing the following:

> ssh -D<port> user@hostname

However, I discovered that the hostname was required, and I could not connect to any host on demand as expected.

So I decided to look at [FreshPorts for Socks](http://www.freshports.org/search.php?stype=shortdescription&method=match&query=socks) software, there are a few options&#8230;

  * 3proxy &#8211; russian software, not a fan of this, it lacks documentation and support
  * csocks &#8211; i386 only, no good on x64 machines
  * nylon &#8211; seems pretty neat, tested it out, it has no options for username/password auth
  * p5-Socks &#8211; a perl module, not a daemon
  * proxy-connect &#8211; lacks proper maintenance
  * prtunnel &#8211; poor documentation, doesn&#8217;t appear to do the task I want
  * socks5 &#8211; &#8220;NEC has a funky license for this software&#8221;
  * ss5 &#8211; bingo!
  * tsocks &#8211; &#8220;Allow non SOCKS aware applications to use SOCKS without modification&#8221; &#8212; not what I want.

[ss5](http://ss5.sourceforge.net/) appears to be what I am looking for&#8230;

> <code class="code">cd /usr/ports/net/ss5/ && make install clean</code>

Based on the [ss5 manual page](http://linux.die.net/man/1/ss5) I decided to create a ss5.conf file, which looked like this:

> set SS5\_SOCKS\_USER hm2k
  
> set SS5\_SOCKS\_PORT 33333
  
> set SS5\_SOCKS\_ADDR rofl.name
  
> set SS5\_PASSWORD\_FILE ~/ss5/ss5.passwd
  
> set SS5\_CONFIG\_FILE ~/ss5/ss5.conf
  
> set SS5\_LOG\_FILE ~/ss5/ss5.log
  
> auth 0.0.0.0/0 &#8211; u
  
> permit u 0.0.0.0/0 &#8211; 0.0.0.0/0 &#8211; &#8211; &#8211; &#8211; &#8211;

Once I&#8217;d done this, I tried to run it. I found that I wasn&#8217;t able to specify a config file meaning I probably wasn&#8217;t able to run this under anything other than root.

One thing I didn&#8217;t understand is that the [ss5 configuration documentation](http://ss5.sourceforge.net/configuration.htm) say one of the variables (which the manual says to put into the config file) allows you to specify a config file. Which does not make sense!

So I decided to take a different approach, and coded my own SOCKS5 Server Script in perl&#8230;

I call it [Simple Socks Server for Perl (sss.pl)](http://sourceforge.net/projects/ssspl).

I hope someone else finds my script useful, and with any luck user feedback will drive me to develop it further.

Enjoy!