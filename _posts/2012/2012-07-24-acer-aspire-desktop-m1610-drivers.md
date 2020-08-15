---
id: 490
title: Acer Aspire Desktop M1610 Drivers
date: 2012-07-24T10:49:19+00:00
author: admin

guid: http://www.devotedit.com/?p=490
permalink: /2012/07/24/acer-aspire-desktop-m1610-drivers/
aktt_notify_twitter:
  - 'no'
categories:
  - Software
tags:
  - acer
  - drivers
  - m1610
  - windows 7
---
Hi all,

I had a Acer Aspire Desktop M1610 land on my desk.

Manufactured 15/12/2007 with Windows Vista Home Premium COA sticker attached, sporting an Intel Pentium &#8220;Duel-Core inside&#8221; sticker on the front, it's not a completely terrible bit of kit.

It works anyway, at least it did until I wiped the disk.

Sure, no problem, only now I need the drivers.

<!--more-->

I figured I might be able to try out Windows 7 on it and that's when I came across this video:

  * [acer aspire M1610 download drivers](http://www.youtube.com/watch?v=-6qBIZa-QNQ)

The website in the comments lead me to this torrent:

  * [Acer\_Aspire\_Desktop\_M1610\_Intel\_Pentium\_Dual\_Core-Windows\_Vista_.6491993.TPB.torrent](https://thepiratebay.se/torrent/6491993/Acer_Aspire_Desktop_M1610_Intel_Pentium_Dual_Core-Windows_Vista_)

<span><span><span style="font-size: medium;">This is one of those very few &#8220;legal&#8221; torrents, because all drivers contained are actually distributed by Acer for free anyway.</span></span></span>

However, I checked out the description which says:

<pre>Acer Aspire Desktop M1610 
Intel Pentium Dual Core
Windows Vista X86 
Complete Factory Drivers

1.Extract with winrar 

2.Right click on the file and run as administrator 

3.Enjoy

No virus I personally run it with Avira(My Linux Lap), AvastaPro (My Laptop) and Norto Pro (My Desktop)</pre>

In addition to that, the torrent would not complete and was left at 64%, I decided to see what I was actually downloading anyway and opened the &#8220;Acer Aspire Desktop M1610 Intel Pentium Dual Core-Windows Vista X86 Complete Factory Drivers.rar&#8221;, which contained a &#8220;Acer Aspire Desktop M1610 Intel Pentium Dual Core-Windows Vista X86 Complete Factory Drivers.exe&#8221;. I'm not convinced. So I figured:

  1. I can get these Vista drivers from the official Acer website and probably use them on Windows 7.
  2. This torrent probably contains a virus.

I visited the [Acer Europe &#8211; Service & Support, Drivers & Utilities, Downloads for Acer Aspire M1610](http://support.acer-euro.com/drivers/desktop/aspire_m1610.html) page and began downloading one of their drivers from there instead.

The problem is that this takes far too long to individually download each file via their drop down menus, but after checking my downloads I noticed where the file came from:

  * <a href="ftp://ftp.work.acer-euro.com/desktop/aspire_m1610/" target="_blank">ftp://ftp.work.acer-euro.com/desktop/aspire_m1610/</a>

Now for the smart part, here's how to get all the drivers for the Acer Aspire M1610:

  1. Get <a href="http://users.ugent.be/~bpuype/wget/" target="_blank">wget.exe</a>
  2. Open cmd.exe and type:
  3. wget -m -np <a href="ftp://ftp.work.acer-euro.com/desktop/aspire_m1610/" rel="nofollow" target="_new">ftp://ftp.work.acer-euro.com/desktop/aspire_m1610/</a>

You should end up with a folder called &#8220;ftp.work.acer-euro.com&#8221; which will contain desktop/aspire_m1610 and all the drivers are contained in there, in their individual zip files.

Will it work with Windows 7? There's only one way to find out!

Pretty trivial I know, but considering there's a YouTube video and a torrent in the wild, I figure it may be a popular enough system to interest a handful of people at least.

Hope you find this useful, if so, please leave a comment&#8230;