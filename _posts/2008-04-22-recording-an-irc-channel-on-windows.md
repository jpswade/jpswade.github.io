---
id: 188
title: Recording an IRC channel on Windows
date: 2008-04-22T13:48:15+00:00
author: admin
layout: post
guid: http://jpswade.github.io/?p=188
permalink: /recording-an-irc-channel-on-windows/
categories:
  - Internet
tags:
  - SEO
---
<p class="lead">
  Recently Matt Cutts posted an article on his blog about <a href="http://www.mattcutts.com/blog/recording-an-irc-channel-on-linuxubuntu/">Recording an IRC channel on Linux/Ubuntu</a>.
</p>

However, as you can see his article was all about using the irssi IRC client on Linux/Ubuntu.

I decided that some people may wish to know how to do it on Windows.

Here&#8217;s how&#8230;

<!--more-->

There&#8217;s tuns of IRC clients out there for windows, you can even find IRC clients in your web browser, such as Chatzilla in Mozilla and Opera has one too, not only this but you can also get ported versions of Linux clients. Not only that, bug large IRC networks such as EFnet even have their own [webchat](http://chat.efnet.org/).

We&#8217;re not going to use any of these, we&#8217;re going to use the most renowned IRC client in the world: [mIRC](http://www.mirc.com/).

What makes mIRC such a great client is it&#8217;s usability. You&#8217;ll learn this once you start to use it.

Installing mIRC is easy, just [download mIRC](http://www.mirc.com/get.php), run the exe file and follow the simple on screen instructions.

Once installed you need to setup &#8220;logging&#8221;, so go to Tools > Options, then IRC > Logging.

From there you can setup logging to your preferences. If you need help understanding any of this, just hit F1 at any time, and look for the section on Logging.

Mine looks like this:

<p style="text-align: center;">
  <a href="http://jpswade.github.io/upload/mirc-logging.jpg"><img class="alignnone size-medium wp-image-189" title="mirc-logging" src="http://jpswade.github.io/upload/mirc-logging-300x253.jpg" alt="" width="300" height="253" /></a>
</p>

Now to connect to a channel, say #SEO on EFnet, with the nickname NOTHM2K, you can do the following:

> /nick NOTHM2K | /server irc.efnet.net | /join #SEO

Once you join the channel the client should start logging straight away.

So what can you actually do with your logs? Well you can view them, search them or generate stats from them. Just like most things you archive.

You can view your logs by doing:

> //run $mircdirlogs
> 
> Note: the double slash is important, it means execute rather than plain text

As you will be on the &#8220;EFnet&#8221; network, you will likely see a folder called &#8220;EFnet&#8221;, if you have setup your logging like me, you will find your daily timestamped logs in there. You can get to the folder quickly by doing:

> //run $+($mircdirlogs,\,$network,\)

To open the current log of the channel you&#8217;re currently in you can do:

> //run $window($active).logfile
> 
> Note: Please make sure you have associated .log files with a program otherwise you will get an error and the file will not open.

To search through a log file for a specific string of text you can download [grep for windows](http://gnuwin32.sourceforge.net/packages/grep.htm) or use [findstr](http://technet2.microsoft.com/windowsserver/en/library/2b01d7f5-ab5a-407f-b5ec-f46248289db91033.mspx?mfr=true) which comes with windows. From mIRC do:

> //run cmd

When a command prompt opens from there you can use grep or findstr. We will be using findstr&#8230;

> findstr /?
> 
> Note: This returns the help information
> 
> findstr /s /C:&#8221;hello HM2K&#8221; *.log
> 
> Note: This will search through all files that end in .log in the current dir and subdirectories for the string &#8220;hello HM2K&#8221;.

Or for those that prefer mIRC scripts, here&#8217;s findstr for mIRC&#8230;

> alias findstr { ; v0.1 by HM2K (Updated: 23/05/08)
  
> if (!$3) { echo -a Usage: /findstr <path> <file-match> <string-match> | halt }
  
> var %win = @findstr
  
> if (!$window(%win)) { window -e %win }
  
> var %files = $findfile($1,$2,0)
  
> var %i = 1
  
> while (%i < %files) {
  
> filter -fwn $findfile($1,$2,%i) %win $+(\*,$3,\*)
  
> if ($filtered) { aline %win $findfile($1,$2,%i) }
  
> inc %i
  
> }
  
> }

To generate stats you need third party software such as [mIRCstats](http://www.nic.fi/~mauvinen/mircstats/) or [pisg](http://pisg.sourceforge.net/) (recommended), however if you do use pisg, it might make sense to use the [eggdrop](http://www.eggheads.org/) or [windrop](http://windrop.sourceforge.net/downloads.html) (for windows) IRC bot to generate the logs instead.

There&#8217;s lots and lots of other neat tricks in mIRC for logging (take a look at $findfile) and beyond. I invite you to take a look at some of my [mIRC scripts](http://jpswade.github.io/projects/mirc-scripts), which some of you may find useful.

PS. If you like [mIRC, please register](http://jpswade.github.io/posts/why-i-registered-mirc).