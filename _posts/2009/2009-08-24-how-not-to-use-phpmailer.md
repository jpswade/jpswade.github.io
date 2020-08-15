---
id: 476
title: How not to use PHPMailer
date: 2009-08-24T12:14:13+00:00
author: admin

guid: http://wade.be/?p=476
permalink: /how-not-to-use-phpmailer/
aktt_notify_twitter:
  - yes
aktt_tweeted:
  - 1
categories:
  - Sysadmin
tags:
  - fail
  - password
  - PHPMailer
  - security
  - sourcingmap
---
<p class="lead">
  I came across <a href="http://phpmailer.worxware.com/">PHPMailer</a> usage the other day on a Chinese gadget wholesale site &#8220;SourcingMap.com&#8221;.
</p>

If you submit something via their [contact us](http://www.sourcingmap.com/contact_us.php) form, interestingly you appear to get a dump from PHP telling you all about the PHPMailer object.

<!--more-->The output looks something like this:

> object(PHPMailer)#15 (41) { [&#8220;Priority&#8221;]=> int(3) [&#8220;CharSet&#8221;]=> string(10) &#8220;iso-8859-1&#8221; [&#8220;ContentType&#8221;]=> string(9) &#8220;text/html&#8221; [&#8220;Encoding&#8221;]=> string(4) &#8220;8bit&#8221; [&#8220;ErrorInfo&#8221;]=> string(0) &#8220;&#8221; [&#8220;From&#8221;]=> string(16) &#8220;test@example.com&#8221; [&#8220;FromName&#8221;]=> string(11) &#8220;Sourcingmap&#8221; [&#8220;Sender&#8221;]=> string(0) &#8220;&#8221; [&#8220;Subject&#8221;]=> string(26) &#8220;Enquiry From Sourcingmap.&#8221; [&#8220;Body&#8221;]=> string(7) &#8220;Testing&#8221; [&#8220;AltBody&#8221;]=> string(0) &#8220;&#8221; [&#8220;WordWrap&#8221;]=> int(0) [&#8220;Mailer&#8221;]=> string(4) &#8220;smtp&#8221; [&#8220;Sendmail&#8221;]=> string(18) &#8220;/usr/sbin/sendmail&#8221; [&#8220;PluginDir&#8221;]=> string(0) &#8220;&#8221; [&#8220;Version&#8221;]=> string(9) &#8220;2.0.0 rc3&#8221; [&#8220;ConfirmReadingTo&#8221;]=> string(0) &#8220;&#8221; [&#8220;Hostname&#8221;]=> string(0) &#8220;&#8221; [&#8220;Host&#8221;]=> string(14) &#8220;smtp.gmail.com&#8221; [&#8220;Port&#8221;]=> int(465) [&#8220;Helo&#8221;]=> string(0) &#8220;&#8221; [&#8220;SMTPSecure&#8221;]=> string(3) &#8220;ssl&#8221; [&#8220;SMTPAuth&#8221;]=> bool(true) [&#8220;Username&#8221;]=> string(22) &#8220;orders@sourcingmap.com&#8221; [&#8220;Password&#8221;]=> string(16) &#8220;ilovesourcingmap&#8221; [&#8220;Timeout&#8221;]=> int(10) [&#8220;SMTPDebug&#8221;]=> bool(false) [&#8220;SMTPKeepAlive&#8221;]=> bool(false) [&#8220;SingleTo&#8221;]=> bool(false) [&#8220;smtp&#8221;]=> NULL [&#8220;to&#8221;]=> array(1) { [0]=> array(2) { [0]=> string(20) &#8220;info@sourcingmap.com&#8221; [1]=> string(11) &#8220;SourcingMap&#8221; } } [&#8220;cc&#8221;]=> array(0) { } [&#8220;bcc&#8221;]=> array(0) { } [&#8220;ReplyTo&#8221;]=> array(1) { [0]=> array(2) { [0]=> string(16) &#8220;test@example.com&#8221; [1]=> string(7) &#8220;My Name&#8221; } } [&#8220;attachment&#8221;]=> array(0) { } [&#8220;CustomHeader&#8221;]=> array(0) { } [&#8220;message\_type&#8221;]=> string(0) &#8220;&#8221; [&#8220;boundary&#8221;]=> array(0) { } [&#8220;language&#8221;]=> array(0) { } [&#8220;error\_count&#8221;]=> int(0) [&#8220;LE&#8221;]=> string(1) &#8221; &#8221; }

After taking a look at the source code, I found that it's simply an &#8220;AJAX&#8221; call to a script called &#8220;[mail\_in\_pop.php](http://www.sourcingmap.com/mail_in_pop.php)&#8220;.

The best thing about this whole issue is the fact that their password for their mailbox appears in plain text and would be easy to guess. I'm guessing this isn't the only place they use this password.

Yet another PHP fail whale.

I'm available for hire if you want me to fix this.

Enjoy!

PS. I do actually like SourcingMap but there's no excuse for this kind of blatantly poor security.

<div id="_mcePaste" style="overflow: hidden; position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px;">
  object(PHPMailer)#15 (41) { [&#8220;Priority&#8221;]=> int(3) [&#8220;CharSet&#8221;]=> string(10) &#8220;iso-8859-1&#8221; [&#8220;ContentType&#8221;]=> string(9) &#8220;text/html&#8221; [&#8220;Encoding&#8221;]=> string(4) &#8220;8bit&#8221; [&#8220;ErrorInfo&#8221;]=> string(0) &#8220;&#8221; [&#8220;From&#8221;]=> string(16) &#8220;test@example.com&#8221; [&#8220;FromName&#8221;]=> string(11) &#8220;Sourcingmap&#8221; [&#8220;Sender&#8221;]=> string(0) &#8220;&#8221; [&#8220;Subject&#8221;]=> string(26) &#8220;Enquiry From Sourcingmap.&#8221; [&#8220;Body&#8221;]=> string(7) &#8220;Testing&#8221; [&#8220;AltBody&#8221;]=> string(0) &#8220;&#8221; [&#8220;WordWrap&#8221;]=> int(0) [&#8220;Mailer&#8221;]=> string(4) &#8220;smtp&#8221; [&#8220;Sendmail&#8221;]=> string(18) &#8220;/usr/sbin/sendmail&#8221; [&#8220;PluginDir&#8221;]=> string(0) &#8220;&#8221; [&#8220;Version&#8221;]=> string(9) &#8220;2.0.0 rc3&#8221; [&#8220;ConfirmReadingTo&#8221;]=> string(0) &#8220;&#8221; [&#8220;Hostname&#8221;]=> string(0) &#8220;&#8221; [&#8220;Host&#8221;]=> string(14) &#8220;smtp.gmail.com&#8221; [&#8220;Port&#8221;]=> int(465) [&#8220;Helo&#8221;]=> string(0) &#8220;&#8221; [&#8220;SMTPSecure&#8221;]=> string(3) &#8220;ssl&#8221; [&#8220;SMTPAuth&#8221;]=> bool(true) [&#8220;Username&#8221;]=> string(22) &#8220;orders@sourcingmap.com&#8221; [&#8220;Password&#8221;]=> string(16) &#8220;ilovesourcingmap&#8221; [&#8220;Timeout&#8221;]=> int(10) [&#8220;SMTPDebug&#8221;]=> bool(false) [&#8220;SMTPKeepAlive&#8221;]=> bool(false) [&#8220;SingleTo&#8221;]=> bool(false) [&#8220;smtp&#8221;]=> NULL [&#8220;to&#8221;]=> array(1) { [0]=> array(2) { [0]=> string(20) &#8220;info@sourcingmap.com&#8221; [1]=> string(11) &#8220;SourcingMap&#8221; } } [&#8220;cc&#8221;]=> array(0) { } [&#8220;bcc&#8221;]=> array(0) { } [&#8220;ReplyTo&#8221;]=> array(1) { [0]=> array(2) { [0]=> string(16) &#8220;test@example.com&#8221; [1]=> string(7) &#8220;My Name&#8221; } } [&#8220;attachment&#8221;]=> array(0) { } [&#8220;CustomHeader&#8221;]=> array(0) { } [&#8220;message_type&#8221;]=> string(0) &#8220;&#8221; [&#8220;boundary&#8221;]=> array(0) { } [&#8220;language&#8221;]=> array(0) { } [&#8220;error_count&#8221;]=> int(0) [&#8220;LE&#8221;]=> string(1) &#8221; &#8221; } <strong><span style="color: red;">Your enquiry has been successfully sent to the Store Owner.</span></strong>
</div>