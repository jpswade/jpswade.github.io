---
id: 106
title: Troubleshooting routing issues
date: 2009-06-18T17:10:08+00:00
author: admin
layout: post
guid: http://www.devotedit.com/?p=106
permalink: /2009/06/18/troubleshooting-routing-issues/
aktt_notify_twitter:
  - 'no'
categories:
  - Software
tags:
  - icmp
  - isp
  - mtr
  - packets
  - pathping
  - ping
  - routing
  - traceroute
  - winmtr
---
Recently I've received reports from clients on a particular ISP are having trouble reaching services on a particular server in a data centre.

Although they did first report it as &#8220;the internet is down&#8221;, I soon discovered it was actually just their email and home page which they were having trouble reaching.

Once I had told them to visit &#8220;www.google.com&#8221; in Internet Explorer, I could confirm that this was in fact a routing issue.

So how do you troubleshoot and diagnose a routing issue to identify the problem? That's what we're going to find out&#8230;

<!--more-->To get the full picture of exactly what is happening we need to run diagnostics software at each end.

A good choice is MTR type software, which combines the functions of [traceroute](http://en.wikipedia.org/wiki/Traceroute) and [ping](http://en.wikipedia.org/wiki/Ping) into one application. This means you can send a ping (ICMP &#8220;echo request&#8221; packet) to each node/host between you and the host you're trying to reach and in return each host should reply as &#8220;received&#8221;, if it doesn't this is known as a loss.

We'll be using this software to find out which node is giving us the most loss.

Here are the choices:

  * [MTR](http://www.bitwizard.nl/mtr/) (Open Source) for Linux
  * [PathPing](http://en.wikipedia.org/wiki/Pathping) (Bundled) for Windows
  * [WinMTR](http://winmtr.sourceforge.net/) (Open Source) for Windows
  * [Ping Plotter](http://www.pingplotter.com/) (Commercial/[Freeware](http://www.pingplotter.com/freeware.html)) for Windows
  * [VisualRoute](http://visualroute.visualware.com/) (Commercial/Freeware) for Windows
  * [Path Analyzer Pro](http://www.pathanalyzer.com/) (Commercial) for Windows/Mac OS X
  * [3D Traceroute](http://www.d3tr.com/) (Freeware) for Windows

In most cases, MTR and PathPing will be sufficient, but if you like a visual aid, you may wish to use one of the more advanced software suites.

_Note: PathPing allows no more than 255 queries per hop, so you may wish to use WinMTR._

<span>Often internet traffic will go one way to a destination, and then come back via another route to the source. We're going to check both ways.<br /> </span>

<span><a href="/wp-content/uploads/2009/06/winmtr.jpg"><img class="alignright" title="WinMTR" src="/wp-content/uploads/2009/06/winmtr-300x181.jpg" alt="WinMTR" width="300" height="181" /></a></span>Here's what you need to do:

  * On the source computer 
      * Run WinMTR
      * Set the host as the target server
      * Wait until over 1000 packets have been sent
      * Export the results as a TEXT file and/or take a screenshot
  * On the target server 
      * Run MTR with the host as the source computer
      * Wait until over 1000 packets have been sent
      * Copy the results into a TEXT file and/or take a screenshot

<span>To diagnose, you're looking for hosts/nodes that are reporting a loss.</span>

  * <span>If you're seeing a large losses from the source computer (running WinMTR), you should report it to your ISP</span>
  * <span>If you are seeing large losses from the target server (running MTR) you should report it to your hosting provider<br /> </span>

<span><em>Note: Some nodes may return &#8220;No response from host&#8221; and have 100% loss, this is usually nothing to worry about as it's ICMP response is purposely blocked by a firewall. You probably don't report these, unless your connection is totally down.<br /> </em></span>