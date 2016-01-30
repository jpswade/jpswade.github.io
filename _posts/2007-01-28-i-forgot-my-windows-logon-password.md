---
id: 61
title: I forgot my Windows logon password!
date: 2007-01-28T11:20:30+00:00
author: admin
layout: post
guid: http://jpswade.github.io/posts/i-forgot-my-windows-logon-password
permalink: /i-forgot-my-windows-logon-password/
categories:
  - Sysadmin
---
<p class="lead">
  What should I do? Reinstall? NO!
</p>

So how do you recover it? You can&#8217;t, BUT you can reset it&#8230;

There&#8217;s a nifty utility called [Offline NT Password & Registry Editor](http://home.eunet.no/~pnordahl/ntpasswd/) (aka ntpasswd) that will reset Windows NT/2K/XP passwords. It runs from self-booting diskette or CD. Please note that it will not recover AD passwords, and may render EFS encrypted files permanently unreadable.

To save wasting CD&#8217;s with small applications you can actually find this utility and a whole range of other useful recovery tools together on the [Ultimate Boot CD](http://ubcd.sourceforge.net/) (aka UBCD).

As if that isn&#8217;t enough Winternals (the same people who make [Sysinternals](http://www.sysinternals.com/) Freeware) offer a peice of software called [Administrator&#8217;s Pak](http://www.winternals.com/Products/AdministratorsPak/Default.aspx) which you can purchase from them. This software creates a bootable CD called [ERD Commander](http://www.winternals.com/Products/AdministratorsPak/Default.aspx#erdcommander2005) which contains a utility called Locksmith which allows you to reset lost passwords.