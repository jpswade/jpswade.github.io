---
id: 180
title: Missing accessories shortcuts from start menu on Windows XP
date: 2008-03-27T14:27:05+00:00
author: admin

guid: /missing-accessories-shortcuts-from-start-menu-on-windows-xp
permalink: /missing-accessories-shortcuts-from-start-menu-on-windows-xp/
---
<p class="lead">
  I'm currently using a computer that has the &#8220;Remote Desktop Connection&#8221; icon missing, in fact the whole of the &#8220;Communications&#8221; directory is missing! Oh no&#8230; Never fear&#8230;
</p>

<!--more-->

Here's a list of what should be in your Accessories directory&#8230;

%allusersprofile%\Start Menu\Programs\Accessories\Accessibility
  
should have shortcut for&#8230;
  
Accessibility Wizard
  
%SystemRoot%\system32\accwiz.exe

%userprofile%\Start Menu\Programs\Accessories\Accessibility
  
should have shortcuts for&#8230;
  
Magnifier
  
%SystemRoot%\system32\magnify.exe
  
Narrator
  
%SystemRoot%\system32\narrator.exe
  
On-Screen Keyboard
  
%SystemRoot%\system32\osk.exe
  
Utility Manager
  
%SystemRoot%\system32\utilman.exe /start

%allusersprofile%\Start Menu\Programs\Accessories\Communications
  
should have shortcuts for&#8230;
  
HyperTerminal
  
C:\Program Files\Windows NT\hypertrm.exe
  
Network Connections
  
%SystemRoot%\explorer.exe
  
::{20D04FE0-3AEA-1069-A2D8-08002B30309D}\::{21EC2020-3AEA-1069-A2DD-08002B30309D}\::{7007acc7-3202-11d1-aad2-00805fc1270e}
  
Network Setup Wizard
  
%SystemRoot%\system32\rundll32.exe hnetwiz.dll,HomeNetWizardRunDll
  
New Connection Wizard
  
%SystemRoot%\system32\rundll32.exe netshell.dll,StartNCW
  
Remote Desktop Connection
  
%SystemRoot%\system32\mstsc.exe
  
Wireless Network Setup Wizard
  
%SystemRoot%\system32\rundll32.exe shell32.dll,Control_RunDLL
  
NetSetup.cpl,@0,WNSW

%allusersprofile%\Start Menu\Programs\Accessories\Entertainment
  
should have shortcuts for&#8230;
  
Sound Recorder
  
%SystemRoot%\system32\sndrec32.exe
  
Volume Control
  
%SystemRoot%\system32\sndvol32.exe

%allusersprofile%\Start Menu\Programs\Accessories\System Tools
  
should have shortcuts for&#8230;
  
Activate Windows
  
%SYSTEMROOT%\system32\oobe\msoobe.exe /A
  
Backup
  
%SystemRoot%\system32\ntbackup.exe
  
Character Map
  
%SystemRoot%\system32\charmap.exe
  
Disk Cleanup
  
%SystemRoot%\system32\cleanmgr.exe
  
Disk Defragmenter
  
%SystemRoot%\system32\dfrg.msc
  
Files and Settings Transfer Wizard
  
%SYSTEMROOT%\system32\usmt\migwiz.exe
  
Scheduled Tasks
  
%SystemRoot%\explorer.exe
  
::{20D04FE0-3AEA-1069-A2D8-08002B30309D}\::{21EC2020-3AEA-1069-A2DD-08002B30309D}\::{D6277990-4C6A-11CF-8D87-00AA0060F5BF}
  
Security Center
  
%SystemRoot%\system32\wscui.cpl
  
System Information
  
C:\Program Files\Common Files\Microsoft Shared\MSInfo\msinfo32.exe
  
System Restore
  
%SystemRoot%\system32\restore\rstrui.exe

Alternativly you can use [AccRestore v2.0](http://windowsxp.mvps.org/Accessories.htm) which works a treat!

This is assuming you have the [programs installed](http://support.microsoft.com/?kbid=891893) in the first place.