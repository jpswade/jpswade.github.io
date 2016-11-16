---
id: 150
title: How to create a boot CD for Windows ME
date: 2007-11-14T21:31:28+00:00
author: admin
layout: post
guid: /how-to-create-a-boot-cd-for-windows-me
permalink: /how-to-create-a-boot-cd-for-windows-me/
---
<p class="lead">
  Today I was given a machine that has Windows ME installed (Yes, Windows ME sucks, I know).
</p>

Outline of the situation:

  * The user wants windows restored to a working state.
  * It does not boot into windows, reinstall is required.
  * I do not have the original setup disc, only the setup files.
  * I have no floppy disk drive to create a boot disk.
  * I need a bootable CD with the installation files on.
  * The user only has a license for Windows ME.

<!--more-->Seems pretty easy right? Wrong.

Firstly, I need to locate a Windows ME boot disk image so I can use this with the appropriate software to create a bootable ISO or CD. These are my sources:

  * [Mark Ashworth&#8217;s How to make a Windows Me bootable CD](http://www.geocities.com/mark_ashworth1/me_boot/winmeboot.html) &#8211; [<p class="lead">
  Today I was given a machine that has Windows ME installed (Yes, Windows ME sucks, I know).
</p>

Outline of the situation:

  * The user wants windows restored to a working state.
  * It does not boot into windows, reinstall is required.
  * I do not have the original setup disc, only the setup files.
  * I have no floppy disk drive to create a boot disk.
  * I need a bootable CD with the installation files on.
  * The user only has a license for Windows ME.

<!--more-->Seems pretty easy right? Wrong.

Firstly, I need to locate a Windows ME boot disk image so I can use this with the appropriate software to create a bootable ISO or CD. These are my sources:

  * [Mark Ashworth&#8217;s How to make a Windows Me bootable CD](http://www.geocities.com/mark_ashworth1/me_boot/winmeboot.html) &#8211;](http://www.geocities.com/mark_ashworth1/me_boot/MEboot.zip) </p> 
      * MEboot.bin
      * OEMSETUP.EXE
  * [Bootdisk.com&#8217;s site](http://www.bootdisk.com/bootdisk.htm) &#8211; [Windows ME Boot Disk Image (winmec.zip)](http://1gighost.net/virginia/winmec.zip) 
      * FIRM.COM
      * LICENCE.TXT
      * README.TXT
      * WINME.IMG

I soon found that neither a &#8220;.bin&#8221; nor &#8220;.img&#8221; was what I was looking for, as my choice of ISO application &#8220;PowerISO&#8221; would only accept &#8220;.bif&#8221; (aka Boot Image File).

I would have to choose different image creator/burner software. I chose CDBurnerXP, this accepts both &#8220;.img&#8221; and &#8220;.ima&#8221; as the &#8220;boot image file&#8221;.

So I loaded CDBurnerXP and went to:

Disc -> Boot options&#8230;

I ticked &#8220;Make disc bootable&#8221; and found the location to the &#8220;WINME.IMG&#8221; file I had extracted from the above file.

I left everything else the same and pressed &#8220;OK&#8221;.

I then proceeded to add the files as normal.

Once added, I proceeded to rename the disc to an appropriate title, and select the &#8220;Burn&#8221; button. (Of course by this point I assume you have already placed the appropriate blank media into the drive).

With any luck, upon competition you should have one working Windows ME Boot CD.

You can also use the same concept for MS DOS, Windows 95, Windows 95b, Windows 98, Windows 98se&#8230; All you need to do is locate the appropriate boot disk image.