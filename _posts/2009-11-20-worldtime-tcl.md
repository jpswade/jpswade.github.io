---
id: 573
title: worldtime.tcl
date: 2009-11-20T10:04:23+00:00
author: admin
layout: post
guid: http://wade.be/?p=573
permalink: /worldtime-tcl/
aktt_notify_twitter:
  - yes
aktt_tweeted:
  - 1
categories:
  - Development
tags:
  - eggdrop
  - TCL
  - timezones
  - worldtime
  - zoneinfo
---
<p class="lead">
  Sometimes you need to know the time somewhere else in the world. I find it useful to get my eggdrop to return the time of another timezone&#8230;
</p>

> <pre>&gt; .tz london
&lt;Bot&gt; User, The time for the london timezone is Fri Feb 13 23:31:30 2009</pre>

However, much like my old _weather.tcl_, I realised that my _worldtime.tcl_ had passed it&#8217;s sell by date and had now expired.

The old _worldtime.tcl_ which was based on a script by _Murf_ which used _worldtimeserver.com_ to gather it&#8217;s data had stopped working. It would seem that _worldtimeserver.com_ had changed their markup which meant that it was no longer possible to parse the correct data from the HTML.

Never mind, I thought, there must be a better way, that doesn&#8217;t need to use a third party website, that won&#8217;t stop working. After all operating systems have worldtime build in without using a website, so how do they do it?

So, I did some investigation&#8230; <!--more-->

<span style="text-decoration: line-through;">I discovered that on Linux based systems (including FreeBSD) the time zone information was stored locally.</span>

> <span style="text-decoration: line-through;">/usr/share/zoneinfo/</span>

<span style="text-decoration: line-through;">Using a bit of Google magic, I managed to locate a few pre-made procedures to help me read the time zone information.</span>

  * <span style="text-decoration: line-through;"><a href="http://alice.wu-wien.ac.at:8000/xowiki/load-timezones.tcl">load-timezones.tcl</a></span> 
      * <span style="text-decoration: line-through;">get_tz_names</span>
      * <span style="text-decoration: line-through;">get_tz_rules</span>

<span style="text-decoration: line-through;">Using these functions I was able to find the right timezone and get the GMT offset which allowed me to work out the time in that timezone using the unix ticks.</span>

<span style="text-decoration: line-through;">At the moment, because it reads the time zone files that are only available on Linux based systems, it will not work on windrops.</span>

<span style="text-decoration: line-through;">However, what I may do next time is build a function that saves the timezone information into a database file which can be used on windows systems and will also give the Linux systems a cache file to make it respond quicker.</span>

**Update:** I decided to stop using the tz database method and replace it with a Google lookup method, which is far more accurate and portable. So now you&#8217;ll probably want to download it&#8230;

  * [Download worldtime.tcl](http://hm2k.googlecode.com/svn/trunk/code/tcl/worldtime.tcl)

Hope it works for you. Enjoy! Note: If you find this useful, or have an issue with the script, please add a comment below. Thanks.