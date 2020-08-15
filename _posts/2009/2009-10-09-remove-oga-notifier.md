---
id: 158
title: Remove OGA Notifier
date: 2009-10-09T13:03:20+00:00
author: admin

guid: http://www.devotedit.com/?p=158
permalink: /2009/10/09/remove-oga-notifier/
aktt_notify_twitter:
  - 'no'
categories:
  - Software
tags:
  - Genuine Advantage
  - microsoft
  - office
  - OGA
---
I had a call today about Microsoft OGA ([Office Genuine Advantage](http://en.wikipedia.org/wiki/Office_Genuine_Advantage)) Notifier becoming an annoyance for a client.

Office Genuine Advantage covers Office XP, Office 2003 and the 2007 Microsoft Office System.

It had to go&#8230;

<!--more-->I had a look around, it seems various people had about 5 workarounds to disable the OGA.

  1. Disable the OGA Addin by editing the registry.
  2. Disable the OGA Addin from within Word/Excel/Outlook/Powerpoint.
  3. Remove the OGA Addin files OGAVerify.exe and OGAAddin.dll from the System32 directory.
  4. Remove the OGA Addin from the registry.
  5. Run the OGANotifier.msi uninstall process by extracting it from the original OGANotifier.cab file.

I found none of these methods were really the best approach, a combined method would be best.

However, I very quickly discovered that people on the forums seemed to think it could not be uninstalled like any other application, but it can.

Thanks to appdeploy.com I was able to locate the all the [uninstall strings for OGA Notifier](http://www.appdeploy.com/software/browse.asp?k=OGA%20Notifier) for all known versions.

These uninstall strings with the right parameters for msiexec can force it to be uninstalled very easily. This, combined with the above &#8220;workarounds&#8221; used as a &#8220;cleanup&#8221; method if the uninstaller fails creates a very useful tool.

The removeOGA batch file was born, combining all the uninstall strings and a cleanup process, it's an idiot proof way to completely remove the OGA Notifier.

  * [Download removeoga.bat](http://hm2k.googlecode.com/svn/trunk/code/batch/removeoga.bat) (Right click and save as removeoga.bat)

Enjoy!