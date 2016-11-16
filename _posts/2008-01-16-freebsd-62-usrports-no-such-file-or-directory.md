---
id: 165
title: 'FreeBSD 6.2 &#8220;/usr/ports: No such file or directory&#8221;'
date: 2008-01-16T14:26:07+00:00
author: admin
layout: post
guid: /freebsd-62-usrports-no-such-file-or-directory
permalink: /freebsd-62-usrports-no-such-file-or-directory/
categories:
  - Sysadmin
tags:
  - FreeBSD
---
<p class="lead">
  I recently setup a new FreeBSD 6.2 server, only to find the following:
</p>

> server# cd /usr/ports
  
> /usr/ports: No such file or directory.

<!--more-->I panicked a little bit, as I&#8217;ve not setup a freeBSD server in a while, so I tried to recall what I did last time.

I remembered that all I did last time was use &#8220;cvsup&#8221;, however&#8230;

> server# cvsup
  
> cvsup: Command not found.

Panic!

Here&#8217;s the deal&#8230; apparently the &#8220;[cvsup](http://www.freebsd.org/doc/en_US.ISO8859-1/books/handbook/cvsup.html)&#8221; command is no longer used, and instead we&#8217;ve now got &#8220;[csup](http://www.freshports.org/net/csup/)&#8220;, which apparently is a rewrite of cvsup in C. This can be quite confusion if you were not aware of the change (like myself).

Now we know this we can log in as the &#8220;root&#8221; user, and setup the ports:

First of all, copy the example &#8220;ports-supfile&#8221; (needed for csup) to your root directory.

> server# cp /usr/share/examples/cvsup/ports-supfile /root/ports-supfile

Now we run the csup command:

> server# <span class="postbody">csup /root/ports-supfile</span>
  
> Name lookup failure for &#8220;CHANGE_THIS.FreeBSD.org&#8221;: hostname nor servname provided, or not known

Obviously there&#8217;s a problem. We need to edit the &#8220;ports-supfile&#8221; and change the host, or do we&#8230;?

> server# csup
  
> Usage: csup [options] supfile
  
> Options:
  
> -1 Don&#8217;t retry automatically on failure (same as &#8220;-r 0&#8221;)
  
> -4 Force usage of IPv4 addresses
  
> -6 Force usage of IPv6 addresses
  
> -A addr Bind local socket to a specific address
  
> -b base Override supfile&#8217;s &#8220;base&#8221; directory
  
> -c collDir Subdirectory of &#8220;base&#8221; for collections (default &#8220;sup&#8221;)
  
> -d delLimit Allow at most &#8220;delLimit&#8221; file deletions (default unlimited)
  
> **-h host Override supfile&#8217;s &#8220;host&#8221; name**
  
> -i pattern Include only files/directories matching pattern.
  
> May be repeated for an OR operation. Default is
  
> to include each entire collection.
  
> -k Keep bad temporary files when fixups are required
  
> -l lockfile Lock file during update; fail if already locked
  
> -L n Verbosity level (0..2, default 1)
  
> -p port Alternate server port (default 5999)
  
> -r n Maximum retries on transient errors (default unlimited)
  
> -s Don&#8217;t stat client files; trust the checkouts file
  
> -v Print version and exit
  
> -z Enable compression for all collections
  
> -Z Disable compression for all collections

We can use the -h option of csup to supply a host override, we now just need to [find a cvsup host](http://www.freebsd.org/doc/en_US.ISO8859-1/books/handbook/cvsup.html#CVSUP-MIRRORS) to use. Select one that is closest to your server, for example, my server is in the [UK](http://www.freebsd.org/doc/en_US.ISO8859-1/books/handbook/cvsup.html#HANDBOOK-MIRRORS-CHAPTER-SGML-MIRRORS-UK-CVSUP), so I would use &#8220;cvsup.uk.FreeBSD.org&#8221;. You could also use [fastest_cvsup](http://www.freshports.org/sysutils/fastest_cvsup/), to find the fastest one for you.

Now we issue the command again, but now with the -h option:

> server# <span class="postbody">csup -h </span>cvsup.uk.FreeBSD.org <span class="postbody">/root/ports-supfile</span>

And with any luck, providing your server has an internet connection the process should begin.

_Note: I hate using the &#8220;vi&#8221; editor and since this system hasn&#8217;t got ports yet, I can&#8217;t install my preferred editor &#8220;nano&#8221;, once I have nano installed via ports, I would edit the ports-supfile with the selected cvsup hostname, meaning I do not have to supply one in the future when I come to update the ports._

Hope this helps somebody!