---
id: 680
title: Trac TCL for eggdrop
date: 2010-12-15T13:46:18+00:00
author: admin
layout: post
guid: http://jpswade.github.io/?p=680
permalink: /trac-tcl-for-eggdrop/
aktt_notify_twitter:
  - yes
aktt_tweeted:
  - 1
categories:
  - Internet
---
<p class="lead">
  I&#8217;ve recently had some fun <a href="http://hm2k.googlecode.com/svn/trunk/code/shell/setup_trac.sh">installing Trac project management software on CentOS5</a>.
</p>

After finally getting it successfully installed and setup I decided to have a play around with a TCL script for eggdrop.

This eggdrop script will allow you to return ticket information from Trac to an IRC channel.
  
<!--more-->

However, the [EggdropTicketInfoIntegration trac.tcl](http://trac-hacks.org/wiki/EggdropTicketInfoIntegration) originally written by mvanbaak for Trac v0.10 back in 2007 had become heavily outdated.

Of course, I decided to step up to the mark and make a few improvements to the script&#8230;

> \# 0.1   &#8211; almost a complete rewrite
  
> \#       &#8211; removed flood control, not needed
  
> \#       &#8211; removed curl support, outdated
  
> \#       &#8211; added dcc command
  
> \#       &#8211; improved header
  
> \#       &#8211; improved channel flag check
  
> \#       &#8211; fixed regex patterns
  
> \#       &#8211; fixed spelling errors
  
> \#       &#8211; added customisation settings
  
> \#       &#8211; improved package checking
  
> \#       &#8211; improved debugging
  
> \#       &#8211; added not found error
  
> \#       &#8211; added basic authorization support
  
> \#       &#8211; fixed syntax errors

Anyway, it seems to work pretty well now and I have a few improvements I&#8217;m looking to implement in the future.

Here&#8217;s the download:

  * [trac.tcl](http://hm2k.googlecode.com/svn/trunk/code/tcl/trac.tcl)

Enjoy!