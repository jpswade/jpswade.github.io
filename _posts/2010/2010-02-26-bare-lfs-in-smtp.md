---
id: 180
title: Bare LFs in SMTP 0x800CCC0F
date: 2010-02-26T13:16:00+00:00
author: wade

guid: http://www.devotedit.com/?p=180
permalink: /2010/02/26/bare-lfs-in-smtp/
aktt_notify_twitter:
  - 'no'
categories:
  - Internet
tags:
  - "0x800CCC0F"
  - bt yahoo
  - btinternet
  - forward
  - forward as an attachment
  - mail
  - outbox
  - smtp
  - smtplf
  - windows mail
  - yahoo
  - yahoo mail
---
Recently one of my clients received the following error in Windows Mail on Windows Vista:

> Your server has unexpectedly terminated the connection. Possible causes for this include server problems, network problems, or a long period of inactivity. Subject &#8216;Fw: &#8216;, Account: &#8216;BT Yahoo! Mail', Server: &#8216;mail.btinternet.com', Protocol: SMTP, Server Response: &#8216;451 See http://pobox.com/~djb/docs/smtplf.html.', Port: 25, Secure(SSL): No, Server Error: 451, Error Number: 0x800CCC0F

<!--more-->I discovered that the error was described as 

[Bare LFs in SMTP](http://cr.yp.to/docs/smtplf.html). This error means very little to most people.

I found that once the email was deleted from the outbox the error would go away.

However, later the error returned.

I found that the user was selecting &#8220;Forward as an Attachment&#8221; instead of simply &#8220;Forward&#8221;.

It seems that the mail server (probably qmail) supplied by the ISP did not like the email (with attachments) being forwarded as an attachment.

The solution is simple.

Don't use &#8220;Forward as an Attachment&#8221;, instead simply use &#8220;Forward&#8221; which does almost the same thing. Of course you also need to delete that bad email from your outbox too before the error will permanently disappear.

A simple error, but unless you know what you're looking for, you probably won't realise what's going on.

I hope this helps.