---
id: 36
title: Cannot delete Folder
date: 2007-01-20T11:38:22+00:00
author: admin

guid: /cannot-delete-folder
permalink: /cannot-delete-folder/
categories:
  - Sysadmin
---
<p class="lead">
  No doubt at some point you will have experienced this error at one point or another:
</p>

<p style="text-align: center">
  <img id="image35" src="http://wade.be/upload/cannot-delete-folder.jpg" alt="Cannot Delete Folder" />
</p>

<p align="center">
  &#8220;Cannot delete Folder: It is being used by another person or program&#8221;
</p>

AKA:
  
&#8220;Cannot delete file: Access is denied&#8221;
  
&#8220;There has been a sharing violation.&#8221;
  
&#8220;The source or destination file may be in use.&#8221;
  
&#8220;The file is in use by another program or user.&#8221;
  
&#8220;Make sure the disk is not full or write-protected and that the file is not currently in use.&#8221;

<!--more-->Before today I was aware of a number of solutions to this, both involve killing explorer.exe in one way or another.


  
1, Reboot the machine, upone restart it should delete no problem.
  
2, Kill explorer.exe in task manager, then run it again, deleting the folder along the way.

I have been looking for a solution that doesn't involve rebooting or killing explorer.exe, but maybe just stopping access to that file some how&#8230;

At long last a solution to this god for saken problem!

  * Download [Unlocker](http://www.emptyloop.com/unlocker/)

Virus free and it works!

<span style="text-decoration: line-through;">1133743342.html</span>