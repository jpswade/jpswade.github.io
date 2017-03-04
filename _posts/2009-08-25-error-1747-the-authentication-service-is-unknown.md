---
id: 144
title: 'Error 1747 : The Authentication Service is Unknown'
date: 2009-08-25T20:59:36+00:00
author: admin
layout: post
guid: http://www.devotedit.com/?p=144
permalink: /2009/08/25/error-1747-the-authentication-service-is-unknown/
aktt_notify_twitter:
  - 'no'
categories:
  - Software
tags:
  - corruption
  - microsoft
  - vista
  - windows
  - winsock
---
Today I had a newish Windows Vista machine that had the following error:

> Error 1747 : The Authentication Service is Unknown

This error occurred when I attempted to start the &#8220;Windows Event Log Service&#8221;.

<!--more-->

The problem was reported to me as an issue with connecting to the internet. I soon discovered that it was much more than that when I was unable to do an **ipconfig /renew** due to some kind of RPC error.

Upon checking the event log for this error I discovered that there are no logs because the service is not running.

It was when I tried to start the service that I got the error, which I thought could be the root of the problem.

At first I thought it was some kind of permissions issue. It wasn't.

To fix this, you must run command prompt (cmd) as an administrator.

To do this on Vista, the easiest way for most people is to search for &#8220;cmd&#8221; using the start menu search, then right click on the result and select &#8220;Run as administrator&#8221;.

From here, you need to run the following command:

> netsh winsock reset

I found that this returned the following message:

> Initialization function INITHELPERDLL in IPMONTR.DLL failed to start with error code 10107

However it seemed to fix the problem regardless, AFTER IT WAS REBOOTED.

Microsoft has this down as [Winsock2 corruption](http://support.microsoft.com/kb/811259), but I've no idea what the real cause is.

Once this command was issued and the machine was rebooted everything was fixed, including the event viewer.

<div id="_mcePaste" style="overflow: hidden; position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px;">
  <h1>
    <span>Error 1747 : The Authentication Service is Unknown</span>
  </h1>
</div>