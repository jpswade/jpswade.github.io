---
id: 276
title: Pingotron
date: 2009-10-01T11:23:44+00:00
author: admin
layout:
  - default
guid: http://jpswade.github.io/?p=276
permalink: /pingotron/
aktt_notify_twitter:
  - yes
aktt_tweeted:
  - 1
categories:
  - Internet
  - Software
tags:
  - icmp
  - ping
  - pingotron
  - software
---
<p class="lead">
  <em>I&#8217;ve been meaning to publish a post about Pingotron for some time now, but now I fear it&#8217;s already too late.</em>
</p>

Quite a few months back I was looking for an application that could sit on my desktop and tell me instantly if any of my servers had stopped responding by [ping](http://en.wikipedia.org/wiki/Ping).

<!--more-->There&#8217;s probably hundreds of ways of monitoring services, including paid for web services such as 

[Pingdom](http://www.pingdom.com/), and open source software that runs on your web server such as [Nagios](http://www.nagios.org/). None of them really hit the spot for the services I wanted to monitor, or they were expensive.

A quick and easy way to monitor services that was fairly non-intrusive was what I wanted. Enough detail to tell you that a server was unreachable by ping and when it happened.

[Pingotron](http://express-press-release.net/46/PR%20-%20Quick%20Troubleshooting%20or%20How%20to%20Be%20Always%20On%20the%20Watch.php) seemed ideal&#8230;

> _Pingotron_ is a computer program for controlling and monitoring network devices, such as computers, network printers, routers and other devices, on TCP/IP networks. The program has two versions: Pingotron (basic) and Pingotron PRO.
> 
> A list of desired hosts that you wish to control are entered into the program.
> 
> The program sends ICMP “echo request” packets to each host and listens for ICMP “echo response” replies. Various properties (ping interval, size of packet, time-out request) can be configured for each host. The program can notify an administrator when a problem arises with any host with an alert sound, e-mail, blinking tray notification and/or network notification. The PRO version has an alarm history log feature, alarm statistics, and ping history and ping statistics for all hosts, in addition, it has a multi-user mode.

I started to use it, however, straight away I came across an odd issue which seemed to only affect the [DG834 series routers](http://en.wikipedia.org/wiki/Netgear_DG834G).

The software reported the ping response from these routers as an &#8220;unknown response&#8221;, while in windows regular ping, they responded just fine.

It was clear that the software seemed to think that the response was malformed, perhaps it wass, however regular windows ping does not.

I emailed the details over to the author via the support email address. I got a response the same day.

_Anatoly Dobrinin_ fixed the bug, provided me with the latest PRO version download and a valid serial number to register it as a full version.

What a great author! I was impressed. Sure I would never have paid for this software, as there were clearly free solutions, so this was great!

This was last year in 2008. This year, I find that if you visit Pingotron.com you find yourself at some kind of ad filled domain parking page. Fortunately you can still find an [archived copy of Pingotron.com](http://web.archive.org/web/20080720072228/http://www.pingotron.com/) in the web archive.

**Update:** As Pingotron appears to be no more I have decided to share my resources&#8230;

> Hello,
> 
> Thank you for your message.
> 
> This bug has been fixed today.
> 
> Please download and install the program again.
> 
> You can download the program here:
> 
> <http://www.pingotron.com/setup_pro.zip>
> 
> You can use this registration code to register  the pro version:
> 
> EET4-3EZS-VTK0-M0U7
> 
> Best regards,
  
> Anatoly Dobrinin

_Note: If Anatoly would like me to remove this, feel free to contact me._

_A copy of [setup_pro.zip](http://www.megaupload.com/?d=FMZ5OM5I) can be found on megaupload.
  
_ 

**Further Update:** I had another issue that I tried to report, but since pingotron.com is unreachable, nothing can be done about it.

It wasn&#8217;t a major issue. The issue was that sometimes when explorer crashes, the Pingotron icon does not reappear in the system tray.

There was no way to recover the icon or window, without killing the &#8220;Pingotron.exe&#8221; and restarting it. Running &#8220;Pingotron.exe&#8221; again would only give you the error &#8220;The program is already running!&#8221;.

I solved this by writing a script using AutoIT which would Check if the Pingotron window exists, restore it, otherwise run &#8220;Pingotron.exe&#8221;. I called it [Start Pingotron](http://hm2k.googlecode.com/svn/trunk/code/autoit/Start_Pingotron.au3).

Anyway, since Pingotron is clearly no longer in active development, I am wondering is there&#8217;s anything else to use instead. Any ideas? Let me know.

Perhaps I&#8217;ll just end up writing my own service instead&#8230;

<div id="_mcePaste" style="overflow: hidden; position: absolute; left: -10000px; top: 884px; width: 1px; height: 1px;">
  I noticed that sometimes when explorer crashes, the pingotron icon does not reappear in the system tray.
</div>