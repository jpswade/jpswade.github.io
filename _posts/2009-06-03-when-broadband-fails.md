---
id: 73
title: When broadband fails
date: 2009-06-03T14:46:04+00:00
author: admin
layout: post
guid: http://www.devotedit.com/?p=73
permalink: /2009/06/03/when-broadband-fails/
aktt_notify_twitter:
  - 'no'
categories:
  - Internet
tags:
  - backup
  - Broadband
  - bt
  - business
  - continuity
  - dialup
  - down
  - draytek
  - fails
  - Internet
  - isp
  - offline
  - openreach
  - redundancy
  - router
---
The best part of last week I spent trying to resolve an issue for a business who was experiencing downtime with their broadband.

The broadband was working fine, nothing had changed, then it went off.

<!--more-->

<div id="attachment_95" style="width: 310px" class="wp-caption alignright">
  <a href="/upload/2009/06/sorry-no-internet-today-2-777446.jpg"><img class="size-medium wp-image-95" title="Sorry NO Internet Today" src="/upload/2009/06/sorry-no-internet-today-2-777446-300x199.jpg" alt="Sorry NO Internet Today" width="300" height="199" srcset="/upload/2009/06/sorry-no-internet-today-2-777446-300x199.jpg 300w, /upload/2009/06/sorry-no-internet-today-2-777446-1024x680.jpg 1024w, /upload/2009/06/sorry-no-internet-today-2-777446.jpg 1600w" sizes="(max-width: 300px) 100vw, 300px" /></a>
  
  <p class="wp-caption-text">
    The internet was well over due a holiday...
  </p>
</div>

I checked the line for voice, I switched the filter, I plugged directly into the maintenance socket, I tried a different router, yet **nothing would work**.

[Eclipse](http://www.eclipse.net.uk/index.cfm?id=referrerredirect&type=order&referrercode=WAD) is their ISP (Best Business ISP 2008), and so far they have been very good. Very good in the way of taking the complaint and reporting it to _BT Wholesale_.

And so an appointment was made for a _BT engineer_ to come out and investigate the situation.

He came on-site and investigated the issue. He agreed that the issue was **at the exchange** and would investigate it further.

The BT engineer spent about an hour at the exchange before giving me a call to let me know of his discovery. He found that a fuse on a card in the exchange had blown, so he had replaced it. Upon replacing it, it **blew again**.

He then went on to explain that replacing this card is beyond the scope of _BT OpenReach_ and he would have to report it back to _BT Wholesale_ for them to take the issue further.

Meanwhile, I had to provide my client with some kind of **backup solution** and the only thing I could think of is dialup. So I went ahead and setup dialup on their Windows 2000 server, and shared it using [ICS](http://en.wikipedia.org/wiki/Internet_Connection_Sharing) (not recommended).

The downsides to using dialup is that not only does it uses a line but there&#8217;s a cost per minute, depending who your call plan is with, which in this case is BT.

The **following day** the card was replaced. The broadband worked from 1PM but then failed again at around 4PM. I&#8217;m guessing the fuse and/or card went **again**.

By this point, a week has gone by and their connectivity has gone up and down more times a pair of kangaroos in mating season. This was a _terrible_ situation!

So the question is **what can you do when your broadband connection fails?**

The short term answer is, well, **not a lot**, unless you&#8217;ve planned.

If your **broadband fails** and you have **no redundancy plan** in place already, you&#8217;re **pretty much screwed** until your provider resolves the problem.

That is of course unless you know how to quickly setup and route a dialup connection to the network like I did.

So, of course, the connection eventually comes back on, all is well and everyone forgets about it, apart from, of course your **network administrator**, who&#8217;s job it is to ensure it doesn&#8217;t happen again.

I remember reading an article about a company that had it&#8217;s [line accidentally cut](http://www.theregister.co.uk/2007/04/27/bt_vs_capitalfortune/) by a _BT engineer_ who refused to repair it. After involving both _Ofcom_ and courts, the issue was eventually resolved. However it begs the question, what does this company do now to ensure redundancy?

The popular broadband guide website &#8220;thinkbroadband.com&#8221; discussed this issue in an article entitled &#8220;[When broadband fails: Business continuity](http://www.thinkbroadband.com/news/3067-when-broadband-fails-business-continuity.html)&#8221; offering some suggestions on possible redundancy solutions, yet nothing definitive. The search continued, until now&#8230;

_Enter Draytek&#8230;_

After reading an excellent [article on the Vigor 2820 Series](http://clkuk.tradedoubler.com/click?p(50662)a(1634641)g(16472718)url(http://www.dabs.com/learn-more/networking-and-communication/draytek--what-happens-if-your-broadband-goes-down--5281.html)) **broadband router** the choice was clear.

After checking there was sufficient 3G/HSDPA availability via the [Three coverage checker](http://www.three.co.uk/_standalone/Coverage_checker_mbb) my recommendation was to get a **pay as you go USB data modem** ([3 Pay As You Go Mobile Broadband](http://www.maplin.co.uk/Module.aspx?ModuleNo=225907&C=55635)) combined with the [Draytek Vigor 2820Vn Dual Wan ADSL2/2+ Security Router (Wireless LAN & VoIP)](http://clkuk.tradedoubler.com/click?p(50662)a(1634641)g(16472718)url(http://www.dabs.com/products/draytek-vigor-2820vn-dual-wan-adsl2-2--security-router--wireless-lan-and-voip--52FT.html)) for the **ultimate redundancy** and **internet connection continuity**.

Sure, all this will set you back between _200 and 300 quid_, but it will also provide peace of mind in knowing that come Monday morning, you WILL have an internet connection.

The question you have to ask is:

> _Can your business afford to be offline?_

If the answer is **no**, it&#8217;s time to have a **rethink!**