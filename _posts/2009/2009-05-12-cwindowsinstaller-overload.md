---
id: 79
title: C:\Windows\Installer overload!
date: 2009-05-12T13:20:00+00:00
author: admin

guid: http://www.devotedit.com/?p=79
permalink: /2009/05/12/cwindowsinstaller-overload/
aktt_notify_twitter:
  - 'no'
categories:
  - Software
tags:
  - c:\windows\installer
  - microsoft
  - msi
  - msp
  - treesize
  - windirstat
---
If like me you've recently come across a computer where the &#8220;C:\Windows\Installer&#8221; directory is overloaded then you've probably used something like [TreeSize Free](http://www.jam-software.com/freeware/index.shtml) or [WinDirStat](http://windirstat.info/) to figure this out.

What I was wondering is &#8220;why is it taking up so much space?&#8221;<!--more-->

<div id="attachment_85" style="width: 217px" class="wp-caption alignleft">
  <a href="/upload/2009/05/windows-installer.png"><img class="size-medium wp-image-85" title="C:\WINDOWS\Installer" src="/upload/2009/05/windows-installer-207x300.png" alt="C:\WINDOWS\Installer" width="207" height="300" /></a>
  
  <p class="wp-caption-text">
    The Space Hog
  </p>
</div>

You will find that in this directory there is an excessive amount of files, hundreds, if not thousands of copies of the same .msi (Microsoft Installer) or .msp (Microsoft Patcher) files taking up anything from 5MB to 500MB each.

You can tell they are the same file as they have exactly the same file size as each other. At the very most you only need one copy of each file.

According to Microsoft these multiple copies (duplicates) of the installer or patcher files are created due to updates to Microsoft Office ([kb274533](http://support.microsoft.com/kb/274533/en-us)), however, I have seen this on machines where Office isn't even installed.

Although the workaround mentioned in the Microsoft knowledge base article does solve the problem, it's hardly practical for the average user.

I've found that you can delete the files and although there is no initial impact on the system, you may need these files at some point if you want to add/remove/uninstall/reinstall/change something that was installed via one of these files, so it's probably safest to keep the ones you need.

It's almost impossible to tell which files you need, and which you don't unless you check it against the registry, which is a long winded process to repeat for literally thousands of these files.

You're probably thinking you need the Microsoft Windows Installer Clean Up Utility, you don't. This is no good here. Despite it's naming, it does not clean up the installer directory in the windows folder.

What you need is this:

>  **[download id=&#8221;2&#8243;]**
> 
> **The cleanup tool for c:\Windows\Installer\(\*.msi \*.msp)**

_Notice: It is safe to run tun this on systems not affected by this issue. Only unneeded files are removed._

**Update**

You could also try [Msizap.exe](http://msdn.microsoft.com/en-us/library/aa370523.aspx) (part of the [Windows Installer CleanUp Utility](http://support.microsoft.com/kb/290301))

WARNING: you will need to use the &#8220;G&#8221; flag which removes any cached Windows Installer data files that have been orphaned (for all users). Failing to do so could end up with all Windows Installer information being removed. Example:

> msizap.exe g

Alternatively or if you are unsure, use the download provided above.