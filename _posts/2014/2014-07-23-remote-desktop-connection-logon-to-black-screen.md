---
id: 600
title: Remote Desktop Connection Logon to Black Screen
date: 2014-07-23T16:55:19+00:00
author: wade
layout: post
guid: http://www.devotedit.com/?p=600
permalink: /2014/07/23/remote-desktop-connection-logon-to-black-screen/
image: /wp-content/uploads/2014/07/2014-07-22-10.02.32-Large-940x198.jpg
categories:
  - Software
tags:
  - black
  - blank
  - issue
  - problem
  - rdp
  - remote
  - taskmgr
  - windows 7
---
This is a problem that has plagued me for a while now, and only two things seem to fix it.

The issue is that when using a Windows 7 RDP client (mstsc) to connect into another Windows 7 system, you sometimes find you're left with nothing but a black screen.

From this black screen you can't do anything. The cursor seems to respond, but you can't seem to bring up anything useful, nothing works.

So what's the solution?

<!--more-->

I found that if you hit CTRL + ALT + END inside the RDP connection this will bring up the same menu as when you hit CTRL + ALT + DELETE on a normal system.

When this menu appears, you can press cancel or &#8220;Start Task Manager&#8221;, which should bring it back to life.

If that doesn't work, try disconnecting and reconnecting.

Failing that, I've found that sometimes, in &#8220;Options&#8221;, if you untick the &#8220;Persistent bitmap caching&#8221; under the &#8220;Experience&#8221; tab you'll find yourself being able to connect without a blank screen.