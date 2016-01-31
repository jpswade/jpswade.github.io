---
id: 470
title: Adding fonts into photoshop without adding them to windows
date: 2009-08-17T17:15:54+00:00
author: admin
layout: post
guid: http://wade.be/?p=470
permalink: /adding-fonts-into-photoshop-without-adding-them-to-windows/
aktt_notify_twitter:
  - yes
aktt_tweeted:
  - 1
categories:
  - Development
tags:
  - adobe
  - Design
  - fonts
  - photoshop
---
<p class="lead">
  If you use Photoshop for any kind of graphic or web design, you&#8217;ll understand the importance of having an array of fonts to choose from.
</p>

However, you may soon find yourself with a font overload. The problem is that once you get over about 1000 fonts in your Windows directory (usually &#8220;C:\Windows\Fonts\&#8221;) you&#8217;ll find that windows becomes very slow, particularly at startup.

To get around this, you don&#8217;t add the fonts to Windows, instead you add them into Photoshop, which is able to handle many more fonts than simply loading them into Windows.

<!--more-->

The trick is to put them into the Adobe common fonts folder under program files (usually &#8220;C:\Program Files\Common Files\Adobe\Fonts\&#8221;).

You can get to this directory by going to Start > Run and issuing the following:

> %ProgramFiles%\Common Files\Adobe\Fonts

This should bring you to a directory called &#8220;fonts&#8221;, place your fonts in here and they will be loaded when Photoshop loads.

The more fonts you put in here, the longer Adobe Photoshop will take to load, however, Windows will perform a lot better overall this way.

If you&#8217;re downloading fonts from [dafont.com](http://www.dafont.com/) like me, you&#8217;ll find that you&#8217;ll need to extract them from the zip file before you place them into this directory, although to most people that should be obvious.

You don&#8217;t have to reload Photoshop for the new font to start working, it should appear in the drop down menu straight away.

I had to do this the other day for the first time in ages on a new machine I had setup Adobe Photoshop CS3 on. I realised that I had forgotten the details! Once I had reminded myself I figured I would write it up here for future reference.

This should work on any version of Photoshop above 5.5, including Photoshop 6, 7, CS, CS2, CS3 and CS4.

Hope this helps!