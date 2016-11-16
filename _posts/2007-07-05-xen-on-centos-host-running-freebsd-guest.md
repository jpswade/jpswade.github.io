---
id: 125
title: Xen on CentOS Host running FreeBSD Guest
date: 2007-07-05T14:37:17+00:00
author: admin
layout: post
guid: /xen-on-centos-host-running-freebsd-guest
permalink: /xen-on-centos-host-running-freebsd-guest/
categories:
  - General
tags:
  - FreeBSD
  - Linux
---
<p class="lead">
  Recently i&#8217;ve been investigating <a href="http://en.wikipedia.org/wiki/Xen">Xen</a>. In short, Xen is open source <a href="http://en.wikipedia.org/wiki/Virtualization">virtualisation</a> software that provides you with the ability to split a physical hardware server (host or dom0) into multiple virtual servers (guest or domU).
</p>

What makes Xen so special above the rest is that it offers such a wide span of guest operating systems.<!--more-->

I am a big fan of CentOS so I have chosen this as my host, but Xen as a host will pretty much run on any Linux based OS, NetBSD, or even Solaris.

Just as a side note, the system I will be running this on is P4 3.0 CPU with 2GB ram.

To begin with I tried Xen 3.1 (32 bit PAE SMP) on CentOS 4, during this time I came across the following resources&#8230;

  * [Xen on CentOS-4](http://mark.foster.cc/wiki/index.php/Xen_on_CentOS-4)
  * How to Install Windows on Xen
  * [GettingStarted (XenSource Wiki)](http://wiki.xensource.com/xenwiki/GettingStarted)
  * CentOS Xen Wiki Documents
  * [CentOS 5 Virtualization Guide](http://www.centos.org/docs/5/html/Virtualization-en-US/)
  * [RedHat Virtualization](http://www.redhat.com/rhel/virtualization/)
  * [Installing Xen On CentOS 5.0 (i386)](http://www.howtoforge.com/centos_5.0_xen)

I soon discovered that CentOS 5 had far better native support for Xen than CentOS 4.

Therefore, CentOS 5 was to be used, once installed you could simply do &#8220;yum groupinstall Virtualization&#8221;, and it would install Xen for you ready to use out of the box. More or less.

So this is great right? Xen installs on CentOS 5 via the virtualisation group pretty much hassle free, which means we have the dom0 setup.

The next step is to create a guest or DomU. There are plenty to choose from (Many Linux Distros, NetBSD, FreeBSD, OpenBSD, Solaris, and even Windows XP & 2003 Server), but we want FreeBSD. This is where the fun begins! We find the following resources:

  * FreeBSD 5.3 Xen DomU Install HOWTO &#8211; Outdated (For Xen 2.2 not Xen 3.0)
  * [How to install FreeBSD as domU](http://www.yuanjue.net/xen/howto.html)
  * Status of FreeBSD xen guest
  * [FreeBSD as DomU/Guest HOWTO](http://wiki.xensource.com/xenwiki/FreeBSDdomU)

Okay, fine no problem. Right?

Yes, until you get an error like this:

> ERROR: Non PAE-kernel on PAE host.

Which effectively means that the CentOS 5 Dom0 (Host) is running a PAE kernel, yet what we&#8217;re trying to install as a domU (Guest) is a non PAE kernel.

So, what is [PAE](http://en.wikipedia.org/wiki/Physical_Address_Extension)? basically it gives your system the ability to handle 4GB of RAM or more (max 64GB RAM) , if you have less than 4GB, you don&#8217;t really need it. It&#8217;s primarily a fix for x86 processors, providing they support it, 64-bit processors don&#8217;t need it.

So how do we fix this problem? I investigated and found the following resources:

  * 32-bit, 64-bit, and PAE, oh my! (Xen Wiki)
  * [FreeBSD as domU (YUAN Jue&#8217;s Group)](http://groups.google.com/group/yuanjue/browse_thread/thread/ec4261c9511c1dca)
  * [FreeBSD under Xen (xen-users mail list)](http://lists.xensource.com/archives/html/xen-users/2006-12/msg00268.html)
  * [FreeBSD/xen (rink.nu)](http://rink.nu/blog/20070528143357.009067.html)

In conclusion there are two options:

  1. Recompile the CentOS 5 dom0 (Host) with a non-PAE kernel with Xen.
  2. Recompile the FreeBSD domU (Guest) with a PAE kernel.

**So what are the problems?**

Option 1 would mean moving away from the native kernel, meaning that each time a new update comes up the kernel would have to be rebuilt manually. Although building the kernel without PAE will decrease overheads, building the kernel manually may lose performance. Considering this is the host, it&#8217;s vital that it is stable, therefore this is lesser of an option.

Option 2 is apparently really easy to do, practially a flick of a switch, providing you understand what you are doing with FreeBSD and Xen. Unfortunately, my skills in this area are limited.

**Where do we go from here?**

Well, considering option 1 is the least favourable option, as it seems, the only way to go is to contact the people who know with regards to running FreeBSD as a DomU&#8230;

  * [Kip Macy](http://www.fsmware.com/)
  * [YUAN Jue](http://www.yuanjue.net/)
  * [Rink Springer](http://rink.nu/)
  * Chris Brookes

Alternativly&#8230;

  * [CentOS Forums](http://www.centos.org/modules/newbb/)
  * [Xen Mailing Lists](http://lists.xensource.com/)
  * [BSD Forums](http://freebsdforums.org/forums/)

Any feedback or comments will be greatfully received.