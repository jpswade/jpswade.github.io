---
id: 146
title: Win32 Virtob/Virut removal
date: 2007-11-08T19:54:29+00:00
author: admin
layout: post
guid: /win32-virtobvirut-removal
permalink: /win32-virtob-virut-removal/
---
<p class="lead">
  Today I got handed a machine riddled with a virus that <a href="http://www.avast.com/eng/avast_4_home.html">avast!</a> detects as &#8220;<a href="http://www.bitdefender.com/VIRUS-1000070-en--Win32.Virtob.Gen.html">Win32 Virtob</a>&#8220;, also known as &#8220;<a href="http://free.grisoft.com/doc/66558/">Win32 Virut</a>&#8220;.
</p>

<!--more-->Virtob is a worm that spreads around your system on the back of executable files (.exe and .src), once the virus is running in the system memory, every executable you run after that will consequently be infected with the virus.

Once a system is infected it becomes very difficult to remove.

I discovered the system was infected with this worm when I installed avast! on the system. Avast! soon identified the virus in the infected files offering me a choice to repair, delete or move to chest.

I very quickly found that &#8220;repair&#8221; never worked, delete was a bad choice as they could be system executables that are needed, and so move to chest would also be a bad choice.

I had to find another approach.

There were two options, I learned that [Dr Web CureIT](ftp://ftp.drweb.com/pub/drweb/cureit/drweb-cureit.exe) was able to &#8220;cure&#8221; the files. I was also told that AVG offered a [Virut Removal Tool](http://www.grisoft.com/doc/34/us/crp/2/ndi/67762).

  * Download the above files (on a clean system).
  * Create a boot CD, using [Bart's PE builder](http://www.nu2.nu/pebuilder/), or download [miniPE](http://minipe.org/) (on a clean system) and put them on the CD 
      * or on a memory stick (preferably as read only).
  * Reboot into the CD.
  * Run the downloaded software against the infected hard drives.

Once the system is disinfected reboot normally, then:

  * Go to Start -> Run, type: sfc /scannow 
      * Note: This may require your Windows CD, or an i386 directory.
  * Run a full system scan using at least two up-to-date antivirus applications. ([List of antivirus software](http://en.wikipedia.org/wiki/List_of_antivirus_software))
  * Reinstall any software that appears to be corrupt or missing.
  * Ensure your windows updates are up-to-date (Especially ensure you have [this one](http://support.microsoft.com/?kbid=890830)).
  * I also recommend you delete your &#8220;Temporary Internet Files&#8221; and delete all content from your %tmp% directory.