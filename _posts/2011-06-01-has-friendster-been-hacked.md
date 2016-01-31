---
id: 2925
title: Has friendster been hacked?
date: 2011-06-01T16:08:14+00:00
author: admin
layout: post
guid: http://jpswade.github.io/?p=2925
permalink: /has-friendster-been-hacked/
aktt_notify_twitter:
  - yes
aktt_tweeted:
  - 1
categories:
  - Security
tags:
  - email
  - friendster
  - hacked
  - password
  - security
  - spam
---
<p class="lead">
  I noticed an unusual email when I checked my Gmail account today.
</p>

Sure it was spam, but this one was tagged with a &#8220;Password&#8221; tag, a tag that I used to filter any emails that contain an old password.

Low and behold there was my password displayed right in the email. So, of course, the first thing to do was to check the [email headers](http://pastie.org/pastes/2003898/text) to see how the email was routed.

I could not believe it!<!--more-->

> To: &#8220;password1&#8221; <friendster@example.org>
> 
> _Note: my password is not password1, I replaced it with that._

They had inserted my password instead of my name in the &#8220;To&#8221; part of the email headers.

The email address they sent to was an alias which I had used specifically for friendster so I knew. However, according to the email headers it definitely did not come from the friendster servers.

How did the spammers manage to get my password and email address?

I&#8217;ve certainly not used the account since about 2005, so it can&#8217;t be me.

Does friendster store their passwords in plain text?

I figured the easiest way to check is to issue a &#8220;forgot password&#8221; request and see what happens.

  * It&#8217;s official: Friendster is a [plain text offender](http://plaintextoffenders.com/).

I received an &#8220;[Your Friendster account information](http://pastie.org/pastes/2004005/text)&#8221; email which contained my password in plain text right in the email.

[<img class="aligncenter size-medium wp-image-2927" title="friendster password" src="http://jpswade.github.io/upload/friendster-password-300x213.jpg" alt="" width="300" height="213" srcset="http://jpswade.github.io/upload/friendster-password-300x213.jpg 300w, http://jpswade.github.io/upload/friendster-password.jpg 618w" sizes="(max-width: 300px) 100vw, 300px" />](http://jpswade.github.io/upload/friendster-password.jpg) 

Yes, this means is that it is absolutely possible that if somebody _did_ hack into friendster they could recover my password (and everyone elses) from their database.

**What does this mean for friendster?**

Well, probably not a lot since most people are waving [bye-bye to friendster](http://lifestyle.inquirer.net/1972/bye-bye-friendster) anyway as friendster starts to delete all user data from their servers.

_My tip: Don&#8217;t delay, [delete it today!](http://web.archive.org/web/20080516050841/http://www.friendster.com/cancelaccount.php)_

**Update 02/06/11**

Yesterday I emailed friendster to notify them of a serious security concern, today I received this reply:

> Thank you for reporting this to us.  We take reports like this seriously and we shall make the proper investigation on your concern.  Unfortunately, we don&#8217;t have a specific time frame on when the investigation will be completed. We apologize for the inconvenience.
> 
> Regards,
> 
> Frank
> 
> Customer Support

P.S. Thanks for your comments, I&#8217;m glad I&#8217;m not alone. Keep them coming!