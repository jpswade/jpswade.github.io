---
id: 123
title: My AVI files crash explorer.exe
date: 2007-06-13T20:05:16+00:00
author: admin
layout: post
guid: /my-avi-files-crash-explorerexe
permalink: /my-avi-files-crash-explorerexe/
---
<p class="lead">
  Often when I am browsing files using explorer I will come across a file that is an avi, when I move my cursor over the file or click on it, explorer will crash with the following message (or similar):
</p>

> explorer.exe &#8211; Application Error
> 
> The instruction at &#8220;0x04080db8&#8221; referenced memory at &#8220;0x00000000&#8221;. The memory could not be &#8220;written&#8221;.
> 
> Click on OK to terminate the program
  
> Click on CANCEL to debug the program
> 
> OK/CANCEL

<!--more-->There are very limited solutions to this problem, but one of the simpliest is as follows:

  * Download a copy of [ShellExView](http://www.snapfiles.com/get/shellexview.html)
  * Find the &#8220;Avi Property Handler&#8221; extention name
  * Right click on it and select Disable Selected Item (F7)

This does fix the problem, however it just disables the issue, the method below should totally fix it.
  
For more advanced users you could try the following:

> Go to Start, then Run.
  
> Type in regedit and press enter.
  
> Then navigate to: HKEY\_CLASSES\_ROOT\*\shellex\ContextMenuHandlers\
  
> If there is a key in there with the name DivX in it, delete it.
  
> Now navigate to: HKEY\_CLASSES\_ROOT\SystemFileAssociations\.avi\shellex\
  
> If there is a key called PropertyHandler in there, delete the value (Default). Then it will appear as an empty value. Finally close the registry editor and reboot the computer.
  
> Now .avi files should not cause explorer.exe to crash anymore.

I believe this problem can also affect Winamp, when shifting quickly though avi files.

Also see [Windows Crashing](http://www.moviecodec.com/topics/3379p2.html) on moviecodec.com