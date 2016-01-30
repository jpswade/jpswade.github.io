---
id: 517
title: Ident Spoofing
date: 2009-10-14T12:23:01+00:00
author: admin
layout: post
guid: http://jpswade.github.io/?p=517
permalink: /ident-spoofing/
aktt_notify_twitter:
  - yes
aktt_tweeted:
  - 1
categories:
  - Development
  - Internet
  - Sysadmin
tags:
  - FreeBSD
  - ident
  - oidentd
  - rfc1413
  - spoofing
---
<p class="lead">
  Today I wrote about <a href="http://en.wikipedia.org/wiki/Oidentd">Oidentd</a> on Wikipedia. <a href="http://en.wikipedia.org/wiki/Ident">Ident</a> as per <a href="http://tools.ietf.org/html/rfc1413">RFC 1413</a> is used for a few different services, in particular <a href="http://en.wikipedia.org/wiki/Internet_Relay_Chat">IRC</a>. A feature of oidentd that my users find useful is ident spoofing.
</p>

<!--more-->Ident is important on IRC as some servers do not allow you to connect unless you have an ident, while others do, you find yourself with a tide (~) prefix before your username. These are sometimes banned. For example:

> HM2K!HM2K@ROFL.name
> 
> _#This is an example of a real user with a real ident_
> 
> baduser!~asdfg@123.123.123.123
> 
> _#This is an example of a possible exploited system_

Generally the ident server (such as oidentd) will return the user&#8217;s username as the ident when it is requested, however on my servers, I allow some of my users to spoof their ident.

This means they can change their ident to whatever they like, regardless of their username.

To do this, you need to create the [_$HOME/.oidentd.conf_](http://linux.die.net/man/5/oidentd.conf) file, with the following content:

> global { reply &#8216;$ident&#8217;}
> 
> _#Note: Where $ident is, replace with the ident you want._

I know some users find this a bit difficult or confusing, so I created a script to do it for them.

  * [setident.sh](http://hm2k.googlecode.com/svn/trunk/code/shell/setident.sh) &#8211; A script used to set your ident

It&#8217;s works fine using the sh unix shell on FreeBSD.

If you are on my shell servers, you should be able to take advantage of this using the &#8220;setident&#8221; command.

Enjoy!