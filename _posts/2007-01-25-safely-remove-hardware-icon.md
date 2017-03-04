---
id: 42
title: Safely Remove Hardware Icon
date: 2007-01-25T00:17:03+00:00
author: admin
layout: post
guid: /safely-remove-hardware-icon
permalink: /safely-remove-hardware-icon/
---
<p class="lead">
  Here's a quick guide on what to do if your &#8220;Safely remove hardware&#8221; icon has disappeared from your system tray.
</p>

This is a troublesome issue as it means that you cannot stop your USB devices therefore meaning you could cause corruption on your USB device.

**How to always bring up the dialog (without the icon)
  
** 

  1. Go to Start -> Run,
  2. Enter: %windir%\system32\RUNDLL32 shell32.dll,Control_RunDLL hotplug.dll
  3. The &#8220;Safely remove hardware&#8221; dialog windows should appear.

**How to control the &#8220;Safley remove hardware&#8221; icon behavior
  
** 

  1. Right-Click on the Task Bar
  2. Select Properties
  3. Under the taskbar tab, click the Customize button
  4. Select the program you wish to hide
  5. Under the drop down box, select Always Hide, Always Show, or Hide when inactive.
  6. Click OK

**How to restore the icon to your system tray**

  1. Open &#8220;My Computer&#8221;
  2. Right click on a drive and click Properties
  3. Click on the Hardware tab
  4. Select the removable drive from the list
  5. Click the &#8220;Properties&#8221; button
  6. Click on the Policies tab
  7. Change it from &#8220;Optimize for quick removal&#8221; to &#8220;Optimize for performance&#8221;

**Note:** If you don't plan on hot-swapping your USB device very often, and you will ALWAYS make sure you use the &#8220;Safely remove hardware&#8221; dialog to remove your hardware, then use &#8220;Optimize for performance&#8221;, otherwise in most cases it is best to use &#8220;Optimize for quick removal&#8221;, this will allow you to unplug your USB device without worrying about corruption.

Further details are mentioned here: <http://support.microsoft.com/kb/828012>