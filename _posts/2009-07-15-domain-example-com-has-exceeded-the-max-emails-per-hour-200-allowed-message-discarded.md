---
id: 426
title: Domain example.com has exceeded the max emails per hour (200) allowed. Message discarded.
date: 2009-07-15T15:34:36+00:00
author: admin
layout: post
guid: http://jpswade.github.io/?p=426
permalink: /domain-example-com-has-exceeded-the-max-emails-per-hour-200-allowed-message-discarded/
aktt_notify_twitter:
  - yes
aktt_tweeted:
  - 1
tags:
  - emails per hour
  - exceeded
  - max
---
<p class="lead">
  Got this error with cpanel?
</p>

> Domain example.com has exceeded the max emails per hour (200) allowed. Message discarded.

The fix is simple&#8230;<!--more-->

> echo example.com=10000 >> /var/cpanel/maxemails

The result is this:

> root@server [/]# cat /var/cpanel/maxemails
  
> \# If you update this file you must run /scripts/build\_maxemails\_config
  
> example.com=10000

Change &#8220;example.com&#8221; for your domain and change &#8220;10000&#8221; for your max. Don&#8217;t forget to run the script.

Enjoy!