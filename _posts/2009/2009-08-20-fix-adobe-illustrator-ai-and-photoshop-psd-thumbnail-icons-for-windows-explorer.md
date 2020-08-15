---
id: 140
title: Fix Adobe Illustrator (.ai) and Photoshop (.psd) Thumbnail Icons for Windows Explorer
date: 2009-08-20T10:25:31+00:00
author: admin

guid: http://www.devotedit.com/?p=140
permalink: /2009/08/20/fix-adobe-illustrator-ai-and-photoshop-psd-thumbnail-icons-for-windows-explorer/
aktt_notify_twitter:
  - 'no'
categories:
  - Software
tags:
  - adobe illustrator
  - adobe photoshop
  - ai
  - aiicon.dll
  - icons
  - psd
  - psicon.dll
  - thumbnails
---
If like me you don't like using Adobe Bridge and instead like to see thumbnail icon previews of your Adobe Illustrator and Adobe Photoshop (.ai, .eps and .psd) files in Windows Explorer then this is the fix you need.

<!--more-->

Here's what you need to do:

  * [aiicon.zip](http://groups.adobe.com/files/58f4b3fc86/aiicon.zip) &#8211; A zip file containing aiicon.dll, aiicon.dll.reg, psicon.dll, psicon.dll.reg 
      * Download and extract to it's own directory.
  * [aiicon.bat](http://hm2k.googlecode.com/svn/trunk/code/batch/aiicon.bat) &#8211; A batch file that will help you get it setup. 
      * Right click, and save as &#8220;aiicon.bat&#8221;.
      * Save to same directory.
      * Run.

That's it! Nothing else to it!

The result should look something like this:

[<img class="size-full wp-image-139" title="A screenshot of icons changed to thumbnails" src="/upload/2009/08/aiicon-reg-magic.gif" alt="A screenshot of icons changed to thumbnails" width="367" height="300" srcset="/upload/2009/08/aiicon-reg-magic-300x245.gif 300w, /upload/2009/08/aiicon-reg-magic.gif 367w" sizes="(max-width: 367px) 100vw, 367px" />](/upload/2009/08/aiicon-reg-magic.gif)

(Image courtesy of Sitepoint)

The aiicon.dll and psicon.dll files are actually distributed by Adobe with Adobe Illustrator 11 and Adobe Photoshop 7. You can actually still find them in the trial versions. It seems that since the introduction of the &#8220;CS&#8221; versions, Adobe has directed you towards Adobe Bridge, instead of using Windows Explorer for browsing and previewing their files, so that is why this fix applies to CS, CS2, CS3 and CS4.

The registry files (.reg) are the result of exporting the relevant values from the registry when thumbnails did work, so they can be imported to other systems that don't have these values.

The batch script ties everything together. It puts the DLL files in the right place, imports the registry and updates it so that the paths are correct. It's completely open source so you can see exactly what it does by viewing the file.

Enjoy!