---
id: 68
title: MSN via IRC
date: 2007-01-31T00:53:49+00:00
author: admin
layout: post
guid: /msn-via-irc
permalink: /msn-via-irc/
categories:
  - Internet
tags:
  - MSN
---
<p class="lead">
  Quite some time ago I decided that I wanted to offer support via MSN for a business. This is all very well until you want multiple staff to cover the &#8220;live&#8221; support, obviously you cannot have more than one client connected via the MSN protocol using the same account at any one time.
</p>

My solution to this was to use an existing platform that allowed multiple users, which was IRC. The next step was to create a &#8220;bot&#8221; that would connect to the MSN Messenger network and relay the information back and forth.

Originally due to my skills in coding in mIRC I decided to code a very simple MSN messenger client. This proved quite a challenge after looking at the [MSN Messenger Protocol Docs](http://www.hypothetic.org/docs/msn/). I decided to check out [existing MSN messenger clients for mIRC](http://www.mircscripts.org/archive.php?stype=all&squery=msn&sorder=file_date&ssort=desc&perpage=20) and see how they had done it.

I tried roughly 5 from mircscripts.org, none of them worked apart from [MSNMIRC by Artweks](http://web.archive.org/web/20120503220611/http://msnmirc.scriptsdb.org:80/).

I decided to strip this down and allow relaying via remotely triggered commands, I codenamed this script &#8220;xmsn&#8221;. This worked very well for quite some time, until MSN decided to change the way their older protocols work, which meant they now required SSL to authenticate.

It took some time to figure out, but eventually the script was fully functional again with the addition of a DLL (ssl.dll &#8211; 58kb), however it seemed that this DLL would only work on some machines, yet not others, this meant I required a new machine to run one mIRC bot.

I ran this for some time, probably around a year, and decided that running a whole machine just for on mIRC based bot was a bit of a waste, so I decided to investigate my options.

[Eggdrop](http://www.eggheads.org/) was my first port of call, using some kind of TCL script that could connect to the MSN protocol would be fantastic, yet this did not appear to exist, however I did locate an MSN messenger client called [aMSN](http://amsn-project.net/forums/viewtopic.php?p=11058), which was based on TCL. There were some issues with this though, firstly it is not eggdrop based, fine I thought i'll strip it down, secondly there is no console mode, its a 100% GUI application, therefore a BIG task. I simply didn't have the time to deal with this complexity.

After some further searching I discovered the [BitlBee](http://www.bitlbee.org/) project, which is in itself an amazing project and an amazing idea. In principle its an IRCd that can connect to many popular instant messenger protocols such as MSN messenger.

The idea was to somehow run an eggdrop that would connect to a [BitlBee server](http://bitlbee.org/main.php/servers.html), connect to MSN, and relay the details to another IRCd using a [relay tcl script](http://www.egghelp.org/tclhtml/3478-4-0-0-1-relay.htm). Obviously the relay script would also need the ability to accept triggers from the other IRCd so the users can control it and send messages, etc.

An alternative idea would be to use psyBNC with multiuser enabled, even though this method would probably be more secure, i'd prefer to use the eggdrop method.

In the end I decided to trim down a version of [linkchan.tcl](http://www.google.com/search?q=linkchan.tcl), which I had used before over the years and so was already fimilar with its structure and functionatility. This offers me a fantastic platform to base this project on.

There is the project research so far, the next step is to release bitlbee.tcl once i'm happy the script is stable.

**Update:** A beta version of the &#8220;bitlbee.tcl&#8221; was posted under the [eggdrop tcl](/eggtcl-project/) section.