---
id: 216
title: Print dialog does not appear in Outlook Express or Internet Explorer
date: 2008-09-04T11:43:18+00:00
author: admin
layout: post
guid: http://wade.be/?p=216
permalink: /print-dialog-does-not-appear/
tags:
  - Printers
---
<p class="lead">
  Today I get a call.
</p>

> Outlook Express won&#8217;t print.

I log in and take a look. Everything seems normal, and normal documents appear to print.

However, when I click the print button or go to File > Print nothing happens. Strange.

They are running Windows XP Professional SP2, with IE6.

<!--more-->

All you have to do is go to Start > Run and issue the following commands:

> regsvr32 vbscript.dll
  
> regsvr32 jscript.dll

Once this is done, restart Outlook Express/Internet Explorer, and go ahead and print.

This isn&#8217;t the first time i&#8217;ve seen this issue, so I thought I&#8217;d note it down for next time.

[Source](http://groups.google.com/group/microsoft.public.windows.inetexplorer.ie6.browser/msg/828b37ff4124ce77?hl=en&dmode=source)