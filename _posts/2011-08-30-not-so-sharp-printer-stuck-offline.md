---
id: 394
title: (Not so) Sharp printer stuck offline
date: 2011-08-30T15:10:06+00:00
author: admin
layout: post
guid: http://www.devotedit.com/?p=394
permalink: /2011/08/30/not-so-sharp-printer-stuck-offline/
aktt_notify_twitter:
  - 'yes'
aktt_tweeted:
  - "1"
categories:
  - Hardware
tags:
  - offline
  - printer
  - problems
  - sharp
  - windows
---
A client called explaining to me that they were unable to print to their **Sharp MX-1800N** network printer. Upon inspection it said that the printer was &#8220;Offline&#8221;.

I checked other computers on the network and they didn&#8217;t report this and were able to print to that printer without error.

I checked with Microsoft&#8217;s knowledge base to see if this was a common problem. There was a possible solution, which involved changing the value of the &#8220;PrinterOnLine&#8221; registry key from 0 to 1, but that value was already set. No fix.

I tried reinstalling drivers from scratch. No fix.

I investigated further&#8230;<!--more-->

I approached the printer which stated on the display: &#8220;Maintenance Required Code: DC&#8221;. This meant nothing to me, but a quick Google proposed that a replacement drum was in order. Finally some answers.

This didn&#8217;t however explain to me why some computers were able to print while others would not.

I discovered that the issue was that the printer was using the _Simple Network Management Protocol (SNMP)_ to signal to the printer driver that the printer is offline, presumably because of the required maintenance.

As it turns out, this is down to a poor user experience meaning that you never see a real error on the computer and you&#8217;re left second guessing why it may not be printing.

The real problem is that the drum needs replacing (as per the code on the display).

The work around is to disable SNMP printing, as follows:

> Go into the print driver and to the &#8220;ports&#8221; tab. Highlight the port you are printing to. Click &#8220;configure port&#8221;. Go to the bottom and un-check &#8220;SNMP printing&#8221;.

This will allow you to continue printing regardless of the error on the display, however you should always take action if the machine reports that maintenance is required.