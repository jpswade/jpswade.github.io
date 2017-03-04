---
id: 141
title: How to Disable Windows Messenger
date: 2007-10-31T16:12:40+00:00
author: admin
layout: post
guid: /how-to-disable-windows-messenger
permalink: /how-to-disable-windows-messenger/
tags:
  - MSN
---
<p class="lead">
  <strong>Why would you want to disable Windows Messenger?</strong>
</p>

Well you may notice that nobody uses the old Windows Messenger anymore, this is because it is abandon-ware, its no longer updated or maintained by Microsoft. This is because we all use MSN Messenger, Messenger Live or third party software (trillian or such).

<!--more-->I often see people signing onto messenger (MSN), first without a picture on their profile (this is windows messenger), then they go offline (MSN Messenger starts and signs them out), then they sign in with a picture on their profile. They will then get a notification saying &#8220;somebody has signed in from another location&#8221;.

In addition to this, if you disable or uninstall any other messenger service, you'll find that Windows Messenger will signin, and people will be talking to you, but you can't find your messenger window to signout or get rid of them.

This is why Windows Messenger is annoying.

And most importantly with the beta releases of Messenger Live (8.0), and of course the upstanding MSN Messenger (7.5) nobody really wants the annoying Windows Messenger (4.5), yet most people seem to have difficulties disabling windows messenger.

**So how do I disable it?** 

_Please note: This will not affect MSN Messenger or Messenger Live AT ALL._ 

Firstly I think the most important thing is to disable it from within, kill it at the settings&#8230;

Go to Start > Run, enter: &#8220;C:\Program Files\Messenger\msmsgs.exe&#8221;.

By doing that, you will force Windows Messenger to open.

Go to Tools > Options.

Inside the options you'll be faced with the general options, click on the &#8220;Preferences&#8221; tab, and disabling Windows Messenger is as simple as unticking:

&#8220;Run Windows Messenger when Window starts&#8221; &#8211; This will stop it from starting up again.
  
&#8220;Allow Windows Messenger to run in the background&#8221; &#8211; This will stop it from being so annoying!

> Note: At this point another little trick I do to stop Messenger from trying to connect is in the Proxy settings, I set the proxy server to &#8220;1&#8221;, and the port to &#8220;1&#8221;, obviously it is VERY unlikely that this server will ever exist and therefore will never connect.

Press &#8220;OK&#8221;.

You then need to kill the process, so open Task Manager by hitting CTRL+ALT+DEL (on your keyboard), and look for &#8220;msmsgs.exe&#8221;, then click: &#8220;End Process&#8221;, then click &#8220;Yes&#8221; when the message appears.

The next thing to do is make sure its completely disabled and no one can access it in the future, even by mistake.

Go to Start > Run, enter: &#8220;C:\Program Files\&#8221;.

Find a folder named &#8220;Messenger&#8221;, rename it to &#8220;MessengerOFF&#8221;, if it asks a question, hit &#8220;Yes&#8221;.

Thats it! All done! No more annoying Windows Messenger!

PS. We're not talking about the Windows Messenger Service, you can find out how to [Disable the windows messenger service in Windows XP](http://www.microsoft.com/windowsxp/using/security/learnmore/stopspam.mspx) on the Microsoft website. I recommend doing this if you haven't already done so.