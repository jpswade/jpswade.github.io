---
id: 421
title: Change or remove programs is blank
date: 2011-11-03T18:20:49+00:00
author: admin
layout: post
guid: http://www.devotedit.com/?p=421
permalink: /2011/11/03/change-or-remove-programs-is-blank/
aktt_notify_twitter:
  - 'yes'
aktt_tweeted:
  - "1"
categories:
  - Software
tags:
  - add/remove programs
  - blank
  - ie6
  - windows 2000
---
[<img class="alignright" title="addremove-programs" src="/upload/2011/11/addremove-programs-300x225.png" alt="" width="300" height="225" />](/upload/2011/11/addremove-programs.png)Windows 2000 is a pain, especially these days when something goes wrong because none of the information or tools that we used to use are around any more.

Anyway.

Who remembers that issue when you open &#8220;Add/Remove Programs&#8221; from an oddly positioned control panel only to be greeted by an odd jumble of strings:

> &#8220;Change or Remove ProgramsAdd New ProgramsAdd/Remove Windows ComponentsSet Program Access and Defaults&#8221;

This message is followed by a blank change or remove programs window.

[<!--more-->](/upload/2011/11/addremove-programs.png)

Do you remember it now?

The question is, how do you fix it? Here's what I came across:

  * [Add/Remove Programs Tool Does Not Open](http://support.microsoft.com/kb/329891) (Tried)
  * [Add\Remove Programs Tool May Not Work After Installing Internet Explorer 5.5 or Internet Explorer 6 on Windows 2000](http://support.microsoft.com/kb/265829) (Tried)
  * [Add/Remove Programs dialog box does not appear or is corrupted](http://support.microsoft.com/kb/323496) (Tried)
  * [A new window opened in Internet Explorer displays a blank white page](http://support.microsoft.com/kb/902932) (Tried)

None of this worked for me, but it did indicate that the problem was related to Internet Explorer. Since the Windows Update page wouldn't load in Internet Explorer either, this was enough to convince me there was a problem there.

I tried reinstalling it using the &#8220;C:\WINNT\inf\ie.inf&#8221; file, but this didn't work.

I downloaded [ie6setup.exe](http://download.microsoft.com/download/ie6sp1/finrel/6_sp1/W98NT42KMeXP/EN-US/ie6setup.exe) (IE6 SP1 installer) and ran it normally.

My tip though before you do this&#8230; Install Avast! antivirus and do a boot-time scan to ensure the computer has nothing bad on it that will prevent this from going through.

I followed the Internet Explorer 6 setup wizard and rebooted.

Everything now works as expected!