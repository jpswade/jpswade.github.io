---
id: 560
title: weather.tcl
date: 2009-11-05T00:37:14+00:00
author: admin
layout:
  - default
guid: http://jpswade.github.io/?p=560
permalink: /weather-tcl/
aktt_notify_twitter:
  - yes
aktt_tweeted:
  - 1
categories:
  - Internet
tags:
  - api
  - eggdrop
  - eggtcl
  - irc
  - TCL
  - weather
  - weather.tcl
---
<p class="lead">
  <strong><em>Update: This script is now part of the <a href="http://www.eggtcl.com/">eggtcl project</a>.</em></strong>
</p>

Today, after I decided to hang out in #eggtcl on EFnet, someone asked the following:

> <daILLeST> anyine know of a weather tcl that actually works? All the ones I find are outdated, or in another language&#8230;

I decided it was time that I updated my old weather.tcl based on a script by Ycarus for eggdrop bots.

<!--more-->Before, many scripts used weather underground (wunderground.com) to gather their feed.

I believe this is because there were many existing TCL based software that used this site to gather their data via telnet.

Telnet access to their server stopped working correctly, so scripts began using their http site to gather data. This too eventually stopped working as once they changed their site, the scripts could no longer parse the html for the data.

Enter Google.

Google has a weather API that they use for their &#8220;[iGoogle](http://www.google.com/ig)&#8220;, which is very handy.

Although it appears to be undocumented by Google, working with the API is easy enough&#8230;

> <http://www.google.com/ig/api?weather=london&hl=en>

The query string contains a &#8220;weather&#8221; parameter, which is generally city or postcode and the &#8220;hl&#8221; parameter which is the language.

This will return an XML formatted result for the city of &#8220;London, England&#8221;.

We can then parse the data we want from this and return it accordingly.

So, put it all together, a bit of TCL care (get it?), and we&#8217;re done&#8230;

  * **Download [weather.tcl](http://code.google.com/p/eggtcl/downloads/detail?name=weather.tcl)**

It works well, and returns a result similar to this:

> > .wz london
  
> <Bot> HM2K, * Weather: London, England: Mostly Cloudy, 8ºC Humidity: 87% Wind: W at 9 mph

Hope you find this useful.

What I may do next time&#8230;

Since Google&#8217;s Weather API is completely officially undocumented it&#8217;s worth noting that in future it may be wise to use [Yahoo&#8217;s weather API](http://developer.yahoo.com/weather/), which is fully and officially documented.