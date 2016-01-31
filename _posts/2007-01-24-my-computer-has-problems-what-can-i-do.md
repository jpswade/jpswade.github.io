---
id: 65
title: My computer has problems, what can I do?
date: 2007-01-24T01:35:13+00:00
author: admin
layout: post
guid: http://wade.be/posts/my-computer-has-problems-what-can-i-do
permalink: /my-computer-has-problems-what-can-i-do/
---
<p class="lead">
  You&#8217;d be surprised the amount of times I get people asking me this question, therefore this is a guide on what to do to try and work out what the problem might be or completly solve the problem all together.
</p>

**Check for resource intensive applications**

Go to Start -> Run -> type: taskmgr -> Press OK

Windows Task Manager will appear, from here you will have tabs at the top, you are looking specifically at the &#8220;Processes&#8221; tab, click that.

From there, you need to first sort the list by &#8220;Mem Usage&#8221;, you can do this by clicking on the writing twice, which will sort this list with the most at the top, you will then notice to the left &#8220;CPU&#8221; which is how much of the CPU it is using, and then further left &#8220;Image Name&#8221; which is the raw name of the application.

If there is a particular application that appears to be using a lot of memory and using a lot of CPU you need to select it and click &#8220;End Process&#8221; at the bottom. It is particularly noted that if you have no idea what this application relates to you inspect it further by searching for the Image Name on google, this should bring up a site that will tell you want the application is, what it does and most importantly if it is a threat or not.

If you restart your computer and the application still runs anyway you will need to look at your System Configuration.

Go to Start -> Run -> type: msconfig

From there you can select exactly which applications you wish to run (or not run) at start up.

If you suspect an application may be a threat to your computer I recommend you take steps to remove malware.

**Recently installed software**

Have you recently installed some new software?

Try uninstalling it by going into safe mode.

You can get into safe mode by hitting F8 BEFORE the windows logo appears at boot up, and select SAFE MODE from the menu.

Once in safe mode, simply go to the Control Panel, open Add/Remove Programs, from there uninstall the recently installed software.

Restart your system.

Contact the author of the software for a fix.

**Check your hard drive(s) for errors**

Go to Start -> Run -> type: cmd -> Press OK

Command prompt will appear, type: chkdsk /f

It will most likely tell you that it will run next time you boot up, at this point you will need to restart your computer.

If bad sectors appear on your hard disk you need to purchase a new hard disk as soon as possible.

Always contact your manufacturer and check warranties.

**Defragment your hard drive(s)**

What it does: If you imagine the hard drive in a physical sense there are usually between 2 and 4 circular discs inside, at the top of the hard disk there is a motor and reader head. What happens is as you store data onto the hard disk it gets distributed across the hard drive as it is used. The idea of defragmentation is to move your most used files (such as programs) to the edge of the discs, so as the head physically moves across them, it does not have as far to travel.

How to run: Go to Start -> Run -> type: dfrg.msc -> Press OK

**Remove Spyware or other Malware**

  * Make sure have a firewall and it is running.
  * Update your anti-virus software and run a full system scan.
  * Make sure your copy of windows is up-to-date.
  * Ensure you are running anti spyware software and it is up-to-date.

**Faulty memory**

If the RAM in the computer is faulty any data read or written from the memory is potentially going to error.

There are a number of applications that can test if your RAM is faulty or not.

  * [MemTest for windows](http://hcidesign.com/memtest/)
  * [MemTest86 boot disc](http://www.memtest86.com/)
  * [UBCD (with MemTest86)](http://www.ultimatebootcd.com/)

If the RAM turns out to be faulty you need to work out what kind of RAM you have in your computer, there are three methods of discovery:

  * [CPU-Z](http://www.cpuid.com/cpuz.php) is a freeware that gathers information on some of the main devices of your system.
  * Use [SiSoftware Sandra](http://www.sisoftware.co.uk/), hardware testing and reporting software.
  * Physically open your computer&#8217;s case (when its turned off) take out the memory sticks and make a note of any significant information that is labelled on the sticks.

Once you know which memory you have, you will need to purchase a replacement. With any luck you can purchase older ram from [eBay](http://www.ebay.co.uk/) or [cex](http://www.cex.co.uk/), alternativly newer ram can be purchased from [eBuyer](http://www.ebuyer.co.uk/) or your favorite retailer.

**Bad Capacitors**

Although it&#8217;s not very common, it is possible that your motherboard can have bad capacitors. To identify bad capacitors, [badcaps.net](http://www.badcaps.net/ident/) exists to help you.

If in fact you do discover that you have bad capacitors you need to either manually replace the capacitors (which takes much skill), or get a replacement motherboard (under warranty or purchase from a retailer or website).

**Other Hardware**

Have you tried swapping the hardware out with an alternative?

Unplug all non-vital devices externally and internally. Try that, otherwise&#8230;

Locate an alternative graphics card, PSU or other suspicious hardware. You could try asking a friend to borrow theirs, ask your local computer store, an IT expert or a supplier.

**Last Resort &#8211; Format
  
** I don&#8217;t like to recommend it, as it can get very complicated, and data can be lost. However it may be worth doing a clean install of your operating system using the original disc.

Make sure you backup all your important data, then insert your operating system disc, reboot and make sure the CD-ROM driver has priority in the boot sequence in BIOS.

From there simply follow the on-screen instructions, making sure you do a new install (not repair), and do format the hard drive.

**None of the above**

If none of the above works, contact your local IT expert or supplier.