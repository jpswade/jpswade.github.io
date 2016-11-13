---
id: 128
title: Blocked links in Microsoft Outlook
date: 2009-08-06T12:02:27+00:00
author: admin
layout: post
guid: http://www.devotedit.com/?p=128
permalink: /2009/08/06/blocked-links-in-microsoft-outlook/
aktt_notify_twitter:
  - 'no'
categories:
  - Software
tags:
  - blocked
  - internet explorer
  - links
  - microsoft
  - outlook
---
When you click a link on an email in Microsoft Outlook, you are blocked from visiting the URL and you see the following error message:

> This operation has been cancelled due to restrictions in effect on this computer. Please contact your system administrator.

<!--more-->Cause:

> HKEY\_Local\_Machine\Software\Classes\htmlfile\shell\open\command is missing or corrupt in the registry.

Solution:

> In Internet Explorer  go into Tools, then Internet Options and set Internet Explorer as the the default browser.
> 
> Or
> 
> Restore the registry key from another computer, by issuing:
> 
> regedit /e outlook-link-fix.reg &#8220;HKEY\_Local\_Machine\Software\Classes\htmlfile\shell\open\command&#8221;
> 
> A file called &#8220;outlook-link-fix.reg&#8221; will be created in your home path (eg: &#8220;C:\Documents and Settings\User&#8221;).
> 
> Copy this file to the system with the problem and open it, it should then prompt you, click yes, it will then say it has been imported successfully.
> 
> You can delete this file once you&#8217;re done with it.

Enjoy!