---
id: 195
title: Samsung ML-4500 XP driver install
date: 2008-05-14T13:13:34+00:00
author: admin
layout: post
guid: http://wade.be/?p=195
permalink: /samsung-ml-4500-xp-driver-install/
tags:
  - Printers
---
<p class="lead">
  I decided I was finally fed up with my Epson Stylus C46 bubble jet printer, and decided that I don't really need it anyway.
</p>

Everything I print only needs to be in black and white, and anything else I can print onto the HP Photosmart 3110 All-in-one that I have located in the room on another machine.

So now it's time to get serious, I decided to use a Samsung ML-4500 laser jet I had lying around spare.

Only, how do you install this thing on Windows XP?

<!--more-->

Yes, I plugged it in, powered it up, and connected the printer cable to my machine's LPT port.

It's not plug and play so I had to invoke &#8220;Add Hardware&#8221; from within control panel.

It knew what it was straight away and detected it as a &#8220;Samsung ML-4500&#8221;, but displayed the &#8220;Unknown device&#8221; icon next it.

No driver can be found, &#8220;cannot install this hardware&#8221; is displayed&#8230; Time to locate the driver&#8230;

First port of call is the Samsung USA website after a quick google for &#8220;Samsung ML-4500 XP driver&#8221;, which displayed the FAQ &#8220;[ML-4500 I Don't Have Windows XP Driver And Cannot Print.](http://erms.samsungusa.com/customer/sea/jsp/faqs/faqs_view.jsp?PG_ID=1&AT_ID=8188&PROD_SUB_ID=29&PROD_ID=29)&#8220;, and an [ML-4500 Driver](http://www.samsungusa.com/UPLOAD/ecms/sw/20030828190257140_20010927112109ML4500English.exe) (20030828190257140_20010927112109ML4500English.exe) is provided.

Downloading this driver, I find that it's a setup process, which doesn't work, and I get the following error:

> <span style="font-family: Courier New;">An error occurred during the move process: -115<br /> Component: 2000DIR2<br /> File Group: 2000_DIR<br /> File: C:\Windows\System32\spool\drivers\w32x86\2\ssgk2.dll</span>

A [quick google](http://www.google.com/search?q=%22An+error+occurred+during+the+move+process:+-115%22) tells me that i'm not alone with this [problem](http://www.computergripes.com/samsung.ml4500.html), however, the results are outdated&#8230; So what now?

I decide to visit Samsung's site directly, and [SEARCH](http://www.samsung.com/us/function/search/resultList.do?searchWord=ML-4500). There I found a [download center page for the ML-4500](http://www.samsung.com/us/support/download/supportDown.do?model_nm=ML-4500&mType=DR&vType=L&disp_nm=ML-4500). There the [ML-4500 Printer Driver (ver.1.61)](http://org.downloadcenter.samsung.com/downloadfile/ContentsFile.aspx?CDSite=us&CttFileID=39612&CDCttType=DR&ModelType=N&ModelName=ML-4500&language=&cate_type=all&VPath=DR/200506/20050617120952218_ML-4500series_english.exe) (20050617120952218\_ML-4500series\_english.exe) is provided.

This downloads and runs fine, but strangely installs to &#8220;C:\Windows\Samsung\ML4500&#8221;.

At this point, if it has worked correctly, you should find that in &#8220;Printers and Faxes&#8221; under control panel, you now have a new &#8220;Samsung ML-4500 Series&#8221; printer.

Going into properties, and printing a &#8220;Test Page&#8221; should prove that it worked successfully!

I know I have quite a few ML-4500's lying around different places, so I'm certain this will be useful to me in future, if not others&#8230;

_Final thought: Why don't hardware manufacturers SEO their sites especially their_ _driver downloads__? This could all have been avoided if the right results showed up in the first place._