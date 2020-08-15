---
id: 97
title: Changing your Windows XP Product Key
date: 2007-02-28T13:51:58+00:00
author: admin

guid: /changing-your-windows-xp-product-key
permalink: /changing-your-windows-xp-product-key/
---
<p class="lead">
  Its not very often I have to do this, but sometimes I do because I end up purchasing a bunch of matching machines, loading the software onto one, and ghosting to the rest.
</p>

So here's a short guide on how to change your Windows XP serial number or product key.

Here's the batch file I created to achieve the task. Simply create a new file called &#8220;changekey.bat&#8221;, and enter the following:

> @echo off
  
> echo.
  
> echo Select &#8220;Yes I want to telephone a customer service representative to activate windows&#8221;,
  
> echo click &#8220;Next&#8221;, then click &#8220;Change Product Key&#8221;, now enter your new key, then click &#8220;Update&#8221;.
  
> @echo REGEDIT4 > %TEMP%\oobetimer.reg
  
> @echo [HKEY\_LOCAL\_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\WPAEvents] >> %TEMP%\oobetimer.reg
  
> @echo &#8220;OOBETimer&#8221;=hex:ff,ff,ff,ff,ff,ff,ff >> %TEMP%\oobetimer.reg
  
> @regedit /s %TEMP%\oobetimer.reg
  
> @del %TEMP%\oobetimer.reg
  
> %SYSTEMROOT%\system32\oobe\msoobe /a

That's it!

<span style="text-decoration: line-through;">change_winxp_key.txt</span>