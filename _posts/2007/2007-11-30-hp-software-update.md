---
id: 158
title: HP Software Update
date: 2007-11-30T12:56:10+00:00
author: admin

guid: /hp-software-update
permalink: /hp-software-update/
categories:
  - Hardware
  - Sysadmin
---
<p class="lead">
  Today, I am trying to install a &#8220;HP Scanjet 7650n&#8221;, everything seems okay, until I come to install the software.
</p>

As part of the software installation it appears to install a piece of software called &#8220;HP Software Update&#8221;.

Unfortunately this causes me an error:

> Product: HP Software Update &#8212; A newer version of this software has been found on your system. Setup will now exit.
> 
> For more information, see Help and Support Center at http://go.microsoft.com/fwlink/events.asp.

<!--more-->I tried to find this, I could not, I tried to uninstall it, it kept making reference to a &#8220;HP Software Update.msi&#8221; or &#8220;HPSoftwareUpdate.msi&#8221;, which did not exist, it couldn't find the uninstaller, then was removed from the list.

It seems this software was once installed here: &#8220;C:\Program Files\Hewlett-Packard\HP Software Update\HPWUCli.exe&#8221;, but not any more.

What I need to do is find the latest version of this software, install it, then uninstall it, so I can complete the install of the driver disc of the new device.

Easy right? Wrong&#8230;

I can't find this ANYWHERE! So I tried using [google](http://www.google.co.uk/search?q=site%3Ahp.com+%2B%22HP+Software+Update%22) on hp.com searching for &#8220;HP Software Update&#8221;.

I eventually came across a page on hp's website entitled [HP Software Update](http://h10025.www1.hp.com/ewfrf/wc/genericSoftwareDownloadIndex?cc=us&dlc=en&lc=en&softwareitem=ob-46074-1&jumpid=reg_R1002_USEN), which contained a file entitled [sp34261.exe](ftp://ftp.hp.com/pub/softpaq/sp34001-34500/sp34261.exe), the page says it's version &#8220;4.0.5 A&#8221;, released 2006-12-22, but as of 2007-11-29, it's version &#8220;4.0.5.7&#8221;.

Downloading and running this file extracts the setup to &#8220;C:\swsetup\sp34261\&#8221;. This appears to contain files such as &#8220;HP Update.msi&#8221; and &#8220;HPSU306Stub.msi&#8221;.

When running the setup sequence it asks for &#8220;HP Software Update.msi&#8221; and looks in &#8220;C:\WINDOWS\Hewlett-Packard\Setup Files\HP Software Update\{BB4EE741-CA46-4345-A3B7-1AECBFAB0AFE}\&#8221;, this does not exist.

It seems like it wants to run this first to uninstall it, but obviously it can't as it doesn't exist.

I cancelled, I get the following error:

> &#8220;Error 1714: The older version of cannot be removed. Contact your technical support group&#8221;

The only two options I can think of are:

  * Find out what version of &#8220;HP Software Update&#8221; this is, and locate that &#8220;[HP Software Update.msi](http://www.google.com/search?q=%22HP+Software+Update.msi%22)&#8220;
  * Remove all entries of &#8220;HP Software Update&#8221; in the registry forcing the installer to think it's never been installed.

Doing a little bit of research this is what I found in the registry:

> HP Software Update 3.0.5.001 ({15EE79F4-4ED1-4267-9B0F-351009325D7D})
  
> version: 50331653
  
> version (major): 3
  
> estimated size: 3882
  
> install date: 20050418
  
> install source: C:\WINDOWS\Hewlett-Packard\Setup Files\HP Software Update\{BB4EE741-CA46-4345-A3B7-1AECBFAB0AFE}\
  
> uninstall cmd: MsiExec.exe /X{15EE79F4-4ED1-4267-9B0F-351009325D7D}
  
> publisher: Hewlett-Packard
  
> contact: <a href="http://www.hp.com/support" target="_blank">http://www.hp.com/support</a>

I guess I need to find a copy of the installer for [&#8220;HP Software Update 3.0.5&#8221;](http://www.google.com/search?q=%22HP+Software+Update+3.0.5%22), which appears to be impossible.

I was able to find another [HP Software Update](http://h10025.www1.hp.com/ewfrf/wc/genericSoftwareDownloadIndex?cc=us&dlc=en&lcen&softwareitem=ob-46755-2&jumpid=reg_R1002_USEN) for version &#8220;4.0.5 B&#8221;, released 2007-02-08, which contained a file entitled [sp34794.exe](ftp://ftp.hp.com/pub/softpaq/sp34501-35000/sp34794.exe).

A bit more searching and I found yet another [HP Software Update](http://h10025.www1.hp.com/ewfrf/wc/genericSoftwareDownloadIndex?lc=en&cc=us&softwareitem=pv-40756-1&dlc=en&lang=en) for version &#8220;3.0.7.014&#8221;, released 2006-06-06, which contained a file entitled [sp26727.exe](ftp://ftp.hp.com/pub/softlib/software7/COL15288/pv-40756-1/sp26727.exe).

This one seemed promising as it was labelled on the install as &#8220;HP Software Update&#8221;, the version 4 is labelled as &#8220;HP Update&#8221;. However, I was soon to find it gives me the following error:

> Your system does not meet the minimum requirements for this update. Update has been cancelled. (0)

Possibly one of the most useless error messages I've ever seen! But perhaps we can use it's &#8220;HP Software Update.msi&#8221; to uninstall a previous version&#8230;

I wonder what HP has to say about all this&#8230; That's right, nothing, not without registering the product which requires me to get the serial number&#8230;

So with a little help from an outsider, I managed to solve it, these are the steps I took:

  1. <span class="Text">Open &#8220;Add/Remove Programs&#8221;, uninstall &#8220;HP Update&#8221; (if listed), also try and uninstall &#8220;HP Software Update&#8221;.</span>
  2. Download, and iInstall [Windows Installer Cleanup](http://download.microsoft.com/download/e/9/d/e9d80355-7ab4-45b8-80e8-983a48d5), once installed, run it and select <span class="Text">&#8220;HP Software Update&#8221;.</span>
  3. <span class="Text">Run &#8220;regedit&#8221; and locate </span>&#8220;HKEY\_LOCAL\_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall&#8221;, find anything under that, that says &#8220;HP Update&#8221; or &#8220;HP Software Update&#8221;, it's usually in the &#8220;DisplayName&#8221;.
  4. Download and run patch [Resolves &#8220;Fatal Error 1714&#8221; during software install (FixErr1714.exe)](http://h10025.www1.hp.com/ewfrf/wc/genericSoftwareDownloadIndex?cc=us&dlc=en&lc=en&softwareitem=oj-26831-1&jumpid=reg_R1002_USEN)<span class="Text"></span>
  5. <span class="Text">Download and run </span>[HP Update (sp34261.exe)](ftp://ftp.hp.com/pub/softpaq/sp34001-34500/sp34261.exe)
  6. Download and run [HP Scanjet Full Feature Software and Driver (setup\_full\_7650.exe)](http://h20000.www2.hp.com/bizsupport/TechSupport/SoftwareIndex.jsp?lang=en&cc=us&prodNameId=1117450&prodTypeId=15179&prodSeriesId=1117353&swLang=8&taskId=135&swEnvOID=228)