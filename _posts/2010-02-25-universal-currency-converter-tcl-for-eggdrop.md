---
id: 602
title: Universal Currency Converter TCL for Eggdrop
date: 2010-02-25T14:41:31+00:00
author: admin
layout: post
guid: http://jpswade.github.io/?p=602
permalink: /universal-currency-converter-tcl-for-eggdrop/
aktt_notify_twitter:
  - yes
aktt_tweeted:
  - 1
categories:
  - Development
tags:
  - converter
  - currency
  - eggdrop
  - TCL
  - ucc
  - xe.com
  - yahoo
---
<p class="lead">
  <strong><em>Update: This script is now part of the <a href="http://eggtcl.github.io/">eggtcl project</a>.</em></strong>
</p>

This is a currency converter written in TCL for Eggdrop, which is similar to the ucc.mrc I wrote for mIRC.

I used to use the [xeucc.tcl](http://members.dandy.net/~fbn/xeucc.tcl.txt), but that script no longer works and hasn&#8217;t been updated since 2008.

> > !ucc 9 usd gbp
  
> <Bot> Could not obtain results from XE.com, sorry!

<!--more-->Further more xeucc.tcl uses the XE.com website to gather the information, however they don&#8217;t like us doing this, and have since added the following message:

> WARNING: Automated extraction of rates is prohibited under the Terms of Use.

Other scripts such as Incith&#8217;s Exchange also use a website. This one uses Yahoo Finance. The problem is that this website is subject to change at any time without prior notice.

Parsing a website that is subject to change is not always a good idea. Instead what is needed is an API which is easy to parse and extract the data and also unlikely to change formatting.

Although XE.com does have an API, it is not free. This is no good.

I have decided instead to use the [Yahoo Developer Network](http://developer.yahoo.com/) Currency Converter API, which is much easier to parse and permits this kind of usage.

There is a choice of two URLs which you can call to get the data:

> <http://finance.yahoo.com/d/quotes.csv?e=.csv&f=sl1d1t1&s=USDGBP=X>
> 
> <http://download.finance.yahoo.com/d/?f=sl1d1t1&s=USDGBP=X>

Both examples should provide you with a csv file to download which will contain the currency information.

I have used the second URL in my script.

**Usage**

> > .ucc
  
> <Bot> Usage: .ucc <amount> <from> <to>
  
> > .ucc 9 usd gbp
  
> <Bot> User, * UCC: 9 USD is 5.8905 GBP as of 2/25/2010 9:22am

**Download**

  * Update: This script is now part of the [eggtcl project](http://eggtcl.github.io/).

If you like it, or even if you don&#8217;t, please leave a comment below. Thanks.