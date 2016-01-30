---
id: 1891
title: Over sixteen ways to obfuscate e-mail addresses
date: 2011-04-03T10:10:28+00:00
author: admin
layout:
  - default
guid: http://jpswade.github.io/?p=1891
permalink: /over-sixteen-ways-to-obfuscate-e-mail-addresses/
aktt_notify_twitter:
  - yes
aktt_tweeted:
  - 1
categories:
  - Development
  - Internet
tags:
  - email
  - obfuscate
  - php
---
<p class="lead">
  Back in 2007 I wrote about<a href="http://jpswade.github.io/posts/email-address-on-your-website"> email addresses on your website</a> and how to avoid putting your email address in plain text.
</p>

A guy I know, named &#8220;csarven&#8221; also wrote about [methods to hide email addresses from page source](http://www.csarven.ca/hiding-email-addresses) providing over 16 concepts for hiding your email address.

This was useful, but not practical, so I decided to write a PHP class&#8230;

<!--more-->I began writing the 

[Obfuscate Email PHP Library](http://obfuscate.sourceforge.net/) as a proof of concept to show the various methods in action, but then I decided to release the code as well as a demonstration website.

The demonstration website is based on a concept outlined by tilllate.com in their &#8220;[nine ways to obfuscate e-mail addresses compared](http://techblog.tilllate.com/2008/07/20/ten-methods-to-obfuscate-e-mail-addresses-compared/)&#8221; article.

In this article the author has setup 9 different email addresses and put them on their website using 9 different obfuscation techniques.

They then waited one and a half years for the mailboxes to receive emails and then reviewed the results.

The Obfuscate project is using a very similar concept, but instead it is using a free email service to provide disposable email addresses without any configuration.

At first [mailinator](http://en.wikipedia.org/wiki/Mailinator) was used, however emails are kept for just a few hours which makes it almost impossible to measure results. Meanwhile the [dispostable](http://www.dispostable.com/) service keeps email for up to two days and there is no registration required.

The theory is that the &#8220;plain&#8221; email address should received more email than the others and the most successful methods will receive no emails at all.

The project website will be indexed by the search engines and the spam bots should start to crawl the website for email addresses.

Now we wait for the results&#8230;

In the meantime you can use the [Obfuscate Email PHP Library](http://obfuscate.sourceforge.net/) to choose one of over 16 methods of obfuscation you feel is most suitable for you.