---
id: 4089
title: 'File in use: The action can&#8217;t be completed because the file is open in another program'
date: 2014-08-14T14:36:19+00:00
author: wade
layout: post
guid: http://www.devotedit.com/?p=4089
permalink: /2014/08/14/file-in-use-the-action-cant-be-completed-because-the-file-is-open-in-another-program/
image: /wp-content/uploads/2014/08/2014-08-14-13.45.15-940x198.jpg
categories:
  - Software
tags:
  - delete
  - error
  - file in use
  - unlocker
---
This is a problem that I come across from time to time.

> &#8220;File in use&#8221; &#8220;The action can&#8217;t be completed because the file is open in another program&#8221; &#8220;Close the file and try again.&#8221;

I first witnessed the problem in Windows XP, where the error said: “Cannot delete Folder: It is being used by another person or program”. <!--more--> This error can also be witnessed as:

  * “Cannot delete file: Access is denied”
  * “There has been a sharing violation.”
  * “The source or destination file may be in use.”
  * “The file is in use by another program or user.”
  * “Make sure the disk is not full or write-protected and that the file is not currently in use.”

The problem with these errors is that it doesn&#8217;t actually tell you what it is actually in use by. Previously I would reboot the machine or just kill &#8216;explorer.exe&#8217; and hope for the best.

There must be a better way, I thought and there is!

I tried a few different solutions out there, and this is what I found:

  * [Unlocker](http://www.emptyloop.com/unlocker/) &#8211; Google detects it as containing malware
  * [Malwarebytes FileAssassin](http://www.malwarebytes.org/fileassassin/) &#8211; Does not tell you what it is in use by
  * [OpenedFilesView](http://www.nirsoft.net/utils/opened_files_view.html) &#8211; Error in loading the opened files list. Error code: 100005
  * [Locked Files Wizard](http://noeld.com/programs.asp?cat=misc) &#8211; Did what it says on the tin!

The solution from lockhunter.com seemed to do the trick perfectly. Easy to install, easy to use. Great job.