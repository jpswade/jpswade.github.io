---
id: 169
title: RemoveWGA
date: 2009-11-05T14:23:31+00:00
author: admin

guid: http://www.devotedit.com/?p=169
permalink: /2009/11/05/removewga/
aktt_notify_twitter:
  - 'no'
categories:
  - Software
tags:
  - removewga
  - removewga.exe
  - wga
---
Back in 2007 I briefly wrote about [Windows Genuine Advantage Removal](/windows-genuine-advantage-removal).

I have decided to revisit this topic after Microsoft released Office Genuine Advantage (OGA) recently and writing about [how to remove the OGA notifier](http://www.devotedit.com/2009/10/09/remove-oga-notifier/).

<!--more-->

Originally most people used the [RemoveWGA.exe](http://web.archive.org/web/20061004164914/http://www.firewallleaktester.com/removewga.htm) (archived site), however [Microsoft put pressure on the author](http://web.archive.org/web/20080617032756/www.firewallleaktester.com/removewga_forbidden.htm) (archived site) to remove it.

Although it worked very well, it now had a few more issues than before&#8230;

  * Unavailable for download from the original source
  * No further updates
  * A closed source compiled binary executable
  * No way to check what it was doing

To overcome this, similar to what was done for RemoveOGA, I wrote a batch script that does the actions required to remove the WGA files.

Introducing RemoveWGA.bat, an open source batch file that removes all of the WGA files&#8230;

  * <a onclick="javascript:pageTracker._trackPageview('/outbound/article/hm2k.googlecode.com');" href="http://hm2k.googlecode.com/svn/trunk/code/batch/removewga.bat">Download removewga.bat</a> (Right click and save as removewga.bat)

Alternatively Microsoft have instructions on [how to disable or uninstall the Microsoft Windows Genuine Advantage Notifications for Windows XP](http://support.microsoft.com/kb/921914).

**Update**

Once you have removed the WGA, you'll probably need to set your Windows Automatic Updates correctly so it doesn't install again while you get other updates. This way you should never have to visit the Windows Update site (www.update.microsoft.com). Here's what to do&#8230;

  1. Set &#8220;Download updates for me, but let me choose when to install them&#8221; 
      * [How to configure and use Automatic Updates in Windows XP](http://support.microsoft.com/kb/306525) OR
      * Run [setauoptions.bat](http://hm2k.googlecode.com/svn/trunk/code/batch/setauoptions.bat) with option 2
  2. Restart the Windows Update Service 
      * [Manipulate Automatic Updates Behavior Using Command-line Options](http://technet.microsoft.com/en-us/library/cc708617%28WS.10%29.aspx) OR
      * Run [restart_autoupdate.bat](http://hm2k.googlecode.com/svn/trunk/code/batch/restart_autoupdate.bat)

Once you've done that, the Windows Update service should start. You should now see a yellow exclamation mark in your system tray (next to your clock). When you click that, you'll get the option to do an &#8220;Express&#8221; or &#8220;Custom&#8221; install.

You must select a &#8220;Custom&#8221; install. From there you can [Uncheck the Windows Genuine Advantage Notification (KB905474)](http://windowssecrets.com/2009/05/21/02-Get-all-security-patches-without-WGA-nightmares) update and then hide the update in future.

Now you should never have to worry about WGA again!

Enjoy!