---
id: 2316
title: How to find the fastest CVSUP mirror server
date: 2011-03-30T14:41:42+00:00
author: admin
layout: post
guid: http://wade.be/?p=2316
permalink: /how-to-find-the-fastest-cvsup-mirror-server/
aktt_notify_twitter:
  - yes
aktt_tweeted:
  - 1
categories:
  - Software
  - Sysadmin
tags:
  - csup
  - cvsup
  - FreeBSD
  - ports
---
<p class="lead">
  Some time ago I wrote about using fastest_cvsup, to find the fastest cvsup mirror server for use with <a href="http://wade.be/posts/freebsd-62-usrports-no-such-file-or-directory">csup on FreeBSD</a>.
</p>

fastest_cvsup is a system utility written in Perl that finds fastest CVSup mirror server for FreeBSD, OpenBSD or NetBSD.

Here I&#8217;m going to tell you how to get started&#8230;

<!--more-->

**Install**

First of all you need to install it, there are a number of ways to do this, but on FreeBSD you probably want to install from ports:

> cd /usr/ports/sysutils/fastest_cvsup/ && make install clean
> 
> _Note: You MUST be root to install ports_

**Get help**

Once installed you are able to read more information about fastest_cvsup by issuing the following commands:

> fastest_cvsup -h

This will display the general help.

> man fastest_cvsup

This will display the more detailed manual page.

**Usage examples**

Here&#8217;s a few practical examples to get you started.

This example will check to see which United Kingdom (uk) based servers are quickest:

`# fastest_cvsup -c uk<br />
>>  Querying servers in countries: uk<br />
--> Connecting to cvsup.uk.freebsd.org [131.111.8.41]...<br />
- server replied: OK 17 0 SNAP_16_1h CVSup server ready<br />
- time taken: 136.71 ms<br />
--> Connecting to cvsup2.uk.freebsd.org [131.111.8.41]...<br />
- server replied: OK 17 0 SNAP_16_1h CVSup server ready<br />
- time taken: 139.81 ms<br />
--> Connecting to cvsup3.uk.freebsd.org [131.111.8.41]...<br />
- server replied: OK 17 0 SNAP_16_1h CVSup server ready<br />
- time taken: 134.28 ms<br />
--> Connecting to cvsup4.uk.freebsd.org [195.40.6.45]...<br />
- server replied: OK 17 0 SNAP_16_1h CVSup server ready<br />
- time taken: 129.03 ms`

 ``

`>>  Speed Daemons:<br />
- 1st: cvsup4.uk.freebsd.org    129.03 ms<br />
- 2st: cvsup3.uk.freebsd.org    134.28 ms<br />
- 3st: cvsup.uk.freebsd.org     136.71 ms`

To find the fastest server in Europe you would use something like this:

`# fastest_cvsup -q -c uk,ie,fr,de,fi,no,nl,ch`

Go nuts, test them all:

`# fastest_cvsup -Q -r -c all`

This example will give you the times of just OpenBSD and NetBSD servers:

`# fastest_cvsup -c openbsd,netbsd`

In this example we will use fastest_cvsup with the cvup command to update the ports using the fastest server in the United States (us):

``# csup -g -L 2 -h `fastest_cvsup -Q -c us` /root/ports-supfile``

_Note: &#8220;-Q&#8221; is used to make it super quiet which is useful when using in scripts or in-line commands._

**Find out more**

Visit the [fastest_cvsup](http://fastest-cvsup.sourceforge.net/) website to find out more.