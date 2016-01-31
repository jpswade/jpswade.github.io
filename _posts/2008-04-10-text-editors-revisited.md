---
id: 172
title: Text editors revisited
date: 2008-04-10T00:08:58+00:00
author: admin
layout: post
guid: http://wade.be/?p=172
permalink: /text-editors-revisited/
categories:
  - Development
---
<p class="lead">
  As a web developer my main tool is my text editor, which I use for pretty much EVERYTHING from coding HTML, to PHP to perl. A text editor is an essential part of my day-to-day life.
</p>

Meaning I need a text editor that I does what I want, the way I want it.

<!--more-->These are the features I have in mind when looking for a text editor:

  * Free or Open Source is always a bonus, but am willing to pay if it&#8217;s worth it
  * Must keep running after the trial period has ended (I like to fully test before I commit myself)
  * Cross-platform would be fantastic, in case I decide to move from Windows to Linux
  * It must load quickly, I am always editing files, and I don&#8217;t like waiting for them to open
  * Small hard disk footprint
  * FTP (with portable settings)
  * Syntax Highlighting (HTML, CSS, JavaScript, PHP, Perl, TCL)
  * Bracket matching
  * Match braces
  * Markup tag matching
  * Large file support &#8211; must not lock up
  * Stable, must not crash
  * Perl based regex search and replace
  * Hex view
  * Macros
  * Nice looking interface
  * Key mapping
  * Spell checker

Over the years i&#8217;ve used the following text editors for months at a time as my primary text editor, these are my findings:

  * Notepad * 
      * It&#8217;s free, sort of, it comes with windows for free at least&#8230;
      * Con: It can&#8217;t handle large files&#8230;
      * Con: It can&#8217;t really do much of anything&#8230;
  * Dreamweaver v4-MX 
      * Not technically just a text editor, more a WYSIWYG but has a nice code editor too
      * Con: Expensive
      * Con: Huge footprint, memory and disk
      * Con: Bulky and slow
  * UltraEdit v10-v13 
      * Con: It&#8217;s not free, and expensive at $49.95 or $124.88 with unlimited upgrades&#8230;
      * Pro: It handles large files superbly!
      * Pro: Search and replace is fantastic!
      * Pro: Macro&#8217;s run without it locking up.
      * Yes it has FTP, but it could function better
      * FTP details are stored in the registry, which corrupt once, not happy.
  * EditPlus 2 
      * It&#8217;s not free, but $35 isn&#8217;t exactly breaking the bank
      * Pro: It has FTP, and they store in a portable &#8220;ftp.ini&#8221; file
      * Con: It doesn&#8217;t handle large files as well as I&#8217;d like&#8230;
      * Con: Search and replace is mapped to ctrl+h by default instead of ctrl+r, but it can be remapped
      * Interface isn&#8217;t that nice, but could live with it.
  * PSPad v4.3.4 (2310) 
      * Pro: It&#8217;s free
      * Pro: Under 12mb on disk
      * It has FTP&#8230;
      * Con: It can&#8217;t handle large files very well at all! Terrible!
      * Con: Search and replace is slow on large files, it locks up
      * Con: When you run macros, it locks up
      * Con: There&#8217;s no way to export your ftp list, but you can import&#8230;
      * Con: There&#8217;s lots of little bugs&#8230;
      * Con: Development is SLOW!
      * Interface isn&#8217;t that nice, but could live with it.
  * UltraEdit v14 
      * Pro: Very powerful hex editor
      * Pro: Interface is pretty nice
      * Pro: Search and replace is very powerful
      * Con: Seems larger than ever, with more pointless widgets
      * Con: The price is STILL expensive
  * EditPlus3 
      * Pro: Large file support is even better!
      * Pro: Under 2.50mb on disk
      * Pro: More than reasonable price at only $35
      * Pro: Stable, not crashed yet
      * Pro: Direct support is fantastic, no more than 48 hours so far, usually next day.
      * Con: There&#8217;s no official community support forum, just an unofficial user group and wiki
      * Con: It&#8217;s a little less organised than UltraEdit, but the features are there
      * Con: It&#8217;s not as pretty looking
      * Con: No hex editor like in UltraEdit
  * e text editor 
      * Pro: Usable after trial period is over
      * Supports FTP via &#8220;Remote Projects&#8221;
      * Con: No portable FTP settings
      * Con: When it loads it sometimes locks up for a good 10 seconds before it&#8217;s usable
      * Con: By default it opens all the documents you previously had open, this is an annoying feature
      * I&#8217;d rather use notepad&#8230;

People have advised me on so many other editors, such as gvim, crimson editor, text pad, ConTEXT, yet none of them offer what i&#8217;m looking for (as listed at the top).

If UltraEdit was reasonably priced for unlimited upgrades I might actually consider buying it. Never mind&#8230; Thanks SND.

For now, I think I&#8217;m going to stick with EditPlus 3 as my main editor, i&#8217;ve been using it for 14 days so far, and although it&#8217;s features are sometimes difficult to locate, they do exist somewhere, you just have to find them. In additional support has been fantastic.

_Side Note: One thing I&#8217;ve found with all of these applications is that FTP settings simply aren&#8217;t portable between them. Most people seem to be using Filezilla and they seem to have perfected their XML format, perhaps it would be wise if all applications that support FTP can import and export to this standardised format. Failing that perhaps I&#8217;ll code a converter._