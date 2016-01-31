---
id: 3686
title: Setting up a PHP development environment
date: 2015-05-08T09:00:42+00:00
author: James Wade
layout: post
guid: http://wade.be/?p=3686
permalink: /setting-up-a-php-development-environment/
categories:
  - Development
  - Internet
  - Software
  - Sysadmin
tags:
  - development
  - devops
  - php
  - PuPHPet
  - vagrant
  - web
  - webdev
---
<p class="lead">
  The best thing about PHP is it&#8217;s low level of entry. There&#8217;s very few hurdles these days to get started.
</p>

Not only that but PHP has been around for long enough and is now mature enough to make no bones about it&#8217;s significance in the industry. Gone are the days where [PHP was once the punchline](http://blog.codinghorror.com/the-php-singularity/) of many jokes.

This has been aided by have the right tools for the job, as like the old saying goes, &#8220;a bad workman always blames his tools&#8221;.

That&#8217;s why it&#8217;s so important to get a development environment setup that&#8217;s right for your work.

<!--more-->

Over the years my toolset has changed significantly, as what once would do the job would simply hinder my speed and agility.

I&#8217;ve since moved to a pretty modern and nifty toolset which I&#8217;m likely to run with for a while, however what is right now, might not be right in the future, so it&#8217;s key to bare that in mind.

**IDE**

Probably the most important thing for me is the Integrated Development Environment (IDE).

I tried a number of different editors that claimed to be IDE-like over the years, including UltraEdit, Notepad++, EditPad, EditPlus, PSPad, Dreamweaver, Nano, e text editor. Although they were lightweight and snappy, I didn&#8217;t get along with any of them for PHP development.

In the meantime I tried Eclipse and Eclipse-based Aptana Studio, but the slow and bulky systems were a turn-off.

After toying around with Java at University I finally discovered NetBeans which had a specific version especially for PHP. This felt very comfortable.

At the time, my development was done over FTP to a production server and NetBeans was perfect at performing these kind of updates, unlike any other IDE I had tried.

I since migrated away from FTP to using version control, going from CVS to Subversion (SVN) and finally GIT, which NetBeans supports right out of the box.

Find an IDE that works with your existing toolset, heck, try NetBeans, see what works for you.

Get this right and you&#8217;ll wonder what you ever did without it.

**Client**

Another important thing to get right is your client and plugin tools.

Years ago, after being a big fan of Firefox and using it for many years, I eventually moved on, coaxed by the sheer speed of Google Chrome.

One of the best features of Google Chrome was and still is the &#8220;Developer Tools&#8221; which are baked in, unlike Firefox which required a number of plugins which as it turns out, were responsible for the drop in performance.

Somewhat ironically, Google Chrome, famed for it&#8217;s speed has since become a victim of it&#8217;s own success, now beginning to slow down due to the extensions, so it&#8217;s wise to pick them carefully.

One of the toolbars that I loved in Firefox was the &#8220;Web Developer Toolbar&#8221; which when it was ported to Chrome I instantly loaded. A very useful tool for any.

ColorZilla (the eyedrop picker) and the screenshot extension are among the few extensions that I can&#8217;t seem to live without.

**Server**

Until recently, I would usually switch between testing using production virtual servers, older local hardware servers or installing server stack software bundles such as XAMPP locally.

None of these were particularly perfect as you never knew what you were going to get.

What might work in one environment might never work anywhere else.

That&#8217;s where tools such as Vagrant and Puppet come in&#8230;

Vagrant is computer software for creating and configuring virtual development environments, generally powered by VirtualBox.

Puppet is an open source configuration management utility, ideal for rolling out the software you need to run in your environment.

After spending some time getting Vagrant up, I quickly lost interest in writing configuration files for Puppet.

After a bit more poking around, I eventually came across PuPHPet, a simple GUI to set up virtual machines for web development.

Bingo!

The [PuPHPet](https://puphpet.com/) website made it super simple to generate a configuration that did what I wanted.

This satisfied my &#8220;DevOps&#8221; approach to development, automating as much as possible to maintaining a standard.

There&#8217;s something very comforting about being able to contain the entire environment, spin it up when you need it and suspend or destroy it when you&#8217;re done.

Be careful when you&#8217;re destroying your virtual machine as you may forget things such as the database, but then that&#8217;s part of the fun. You can spin it up, develop your site or system, then destroy it, happy in the knowledge that if you are able to deal with this eventuality in a test environment, then you&#8217;ll certainly be prepared for production.

I like this.

**Version Control**

I&#8217;ve used The Concurrent Versions System (CVS) before moving to Subversion (SVN), before finally settling on git.

Possibly my favourite thing about git is it&#8217;s name, which is British English slang meaning &#8220;unpleasant person&#8221;. Linus Torvalds of Linux fame created it, quipped: &#8220;I&#8217;m an egotistical bastard, and I name all my projects after myself. First &#8216;Linux&#8217;, now &#8216;git&#8217;.&#8221;

If that&#8217;s not enough to convince you then I suggest you try it for yourself because it&#8217;s great.

There&#8217;s a number of ways you can use git and I use all of them for different reasons.

  * Within the Netbeans IDE
  * Using command line for repeating or batch commands
  * Using [TortoiseGIT](https://code.google.com/p/tortoisegit/) Context Menus for a GUI interface

For the command line version you can either use your virtual machine or you can install [msysgit](https://msysgit.github.io/) on windows. I recommend having both.

When I&#8217;m working within Netbeans IDE I tend to use the built in functionality to commit the code. However sometimes it doesn&#8217;t feel as comprehensive or fluid as using command line or TortoiseGit, so I sometimes switch out to carry out certain tasks.

You might feel the same, you might not, but either way I think it&#8217;s wise to learn the various ways you can use git so that you&#8217;re able to easily adapt to any given situation.

Naturally, when you&#8217;re done committing to your local master, you&#8217;ll want to upload it somewhere. There&#8217;s really no better place than [GitHub](https://github.com/) for hosting your repository, however the downside is that all free accounts are public.

If you think you might want private repositories for free then I would seriously consider [BitBucket](https://bitbucket.org/), which doesn&#8217;t quite have the same culture as GitHub, but is in no way technically inferior.

If you intend on making a name for yourself then GitHub is the obvious way to go, otherwise BitBucket is for those important private projects you might be working on behind the scenes.

**Summary**

I really like the way that &#8220;DevOps&#8221; is going, in terms of &#8220;cloud&#8221; technologies such as Vagrant, it makes so much sense to me and I think we&#8217;re only just seeing the iceberg.

I&#8217;m particularly interested in a number of emerging implementations of these technologies, such as:

  * [Cloud9](https://c9.io/) &#8211; A cloud based development environment
  * [Docker](http://www.docker.com/) &#8211;  An open platform for developers and sysadmins to build, ship, and run distributed applications

Maybe next time my environment will have evolved again using them.