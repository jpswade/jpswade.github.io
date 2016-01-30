---
id: 21
title: Finding a Portal Script
date: 2007-01-16T01:15:31+00:00
author: admin
layout: post
guid: http://jpswade.github.io/archives/21
permalink: /portal-script/
categories:
  - Development
---
<p class="lead">
  I spent a long time today searching for a PHP based portal script either for a small community website or an ISP.
</p>

What I am looking for as a small community is a basic version of what [thisisstaffordshire.co.uk](http://www.thisisstaffordshire.co.uk/) offers or similar.

What I am looking for in an ISP community website is a basic version to what [orange.co.uk](http://www.orange.co.uk/) (formerly wanadoo/freeserve) offers or similar.

My theory was that something like this would exist already, after all there&#8217;s no point re-inventing the wheel, or at the very least I would be getting a feel for what was already out there.

So I began looking in all the normal places, starting with sourceforge.net, where I found nothing decent. I then began looking on [hotscripts.com](http://www.hotscripts.com/PHP/Scripts_and_Programs/Portal_Systems/) where there is an entire directory just for PHP portals.

I soon discovered that the majority were either PHP-Nuke based or PHP-Nuke like, which is NOT what I am looking for, others were basically a CMS package, not a portal.

Eventually I came across a portal called [Creative Community Portal](http://www.hotscripts.com/Detailed/59321.html), which looks like it would be perfect for the small community website so I take a look. I&#8217;m taking to a website called Creative Software. They are offering this script at $79.99, however I soon realised that these guys aren&#8217;t the best at web design, yet it strikes me as odd that they have quite a tidy portal script on offer, my assumption was that they had taken it from somewhere else, and so my research begins.

I began by trying to find other sites that use the same engine by searching for the names of the images, and common strings.

I find the following websites:

  * http://www.spioneers.org/Default.php
  * http://www.omeopatiadirisonanza.it/Default.asp
  * http://www.4so9.com/cauca/default.php
  * http://www.seniorschoice.com/kelowna/Default.php
  * http://www.mcintyreskiarea.com/Default.asp
  * http://www.clubgs.org/Default.asp
  * http://www.prodavisro.com/icoane_site/Default.asp
  * http://www.yuccavalley.com/genealogy/Default.asp
  * http://www.rincenatiarna.com/members/AccessDenied.cfm
  * http://www.mntalent.com/Default.asp
  * http://sleeping.mine.nu/parisian.org/Default.php
  * http://www.pataleo.com/Default.php
  * http://www.watersport.net/portal/Default.asp

The first thing you should notice is that they all appear to be in different programming languages, and none of them use the same design as the one I found originally, yet they are all closely matched. I figure there must be some kind of third party code generating software being used.

So I take a look at the HTML code of some of the sites.

Its not long before I find this: 

<meta content="YesSoftware CodeCharge v.2.0.1 / Templates.ccp build 10/12/2001" name="GENERATOR" />


So I decide to take a look at [YesSoftware CodeCharge](http://www.yessoftware.com/) v3.0.1.6, and I believe I am onto a winner as I find that an example script bundled with the software is infact a [portal](http://examples.codecharge.com/Portal/Default.php)! And as if that wasn&#8217;t enough I found mention on their forums of an online portal which can be downloaded from [gotocode.com](http://web.archive.org/web/20111104095309/http://www.gotocode.com:80/apps.asp?app_id=11&) for free.

The problem I found is that none of these look anything like the sites above, let alone the site I found originally. The search continues.

I go back to looking for similar sites.

Its not long before I find this: http://www.uksamba.org/portal/Default.php

On this site I find more details, including a user guide, license agreement, and more importantly the name of the company that made it, [UltraApps](http://www.ultraapps.com/). However, when I visit their website, there&#8217;s no mention of this application. Never fear though, there&#8217;s always the [web archive](http://web.archive.org/web/*/http://www.ultraapps.com/).

The rabbit hole deepens.

I soon find myself on their old website, via the web archive looking at downloading their portal script, there it is, you can [download](http://web.archive.org/web/20050205204458/www.ultraapps.com/appdownload2.asp?app_id=16&) it for free. I download the PHP version and have a play around with this for quite some time. I find two problems, firstly this does not offer all the features that the Creative Software version does, and secondly it doesn&#8217;t appear to login for some strange reason.

I go back to the UltraApps web archive, and discover there is another version, which is the Portal Enhanced Edition, which is NOT free, you must [purchase](http://web.archive.org/web/20050205110729/www.ultraapps.com/appurchase.asp?app_id=16) this at a price of $50. I figure I have come to the end of the road with this as without paying somebody some money I&#8217;m not getting it for free, and as such UltraApps don&#8217;t appear to offer it any longer, and Creative Software doesn&#8217;t actually have the right to be selling it in the first place.

So as I begin to close down my windows, I notice something strange on the Creative Software &#8220;demo&#8221; site, the title says: &#8220;My USA City Guide&#8221;, this strikes me as odd, as their demo is a UK version.

After a quick search I find this [demo](http://web.archive.org/web/20100126215236/http://demo.myusacityguide.com:80/Default.php), which appears to owned by the creators of the style/theme, yet appear to be using the UltraApps code.

I gave this some thought, and I soon realise that this begs some questions:

  * Why does UltraApps no longer offer their portal?
  * Is there an issue with selling applications produced by YesSoftware Code Charge?
  * Does the USA City Guide have the rights to resell the UltraApps product?
  * Does Creative Software have the right to resell the USA City Guide product?

Further more I found that the Creative Community script had some major [vulnerabilities](http://osvdb.org/show/osvdb/25311).

And after all that I have no decent portal script for a basic small community website.

The only half decent thing I found was called [phpFoX](http://www.phpfox.com/), and by a look at the [demo](http://web.archive.org/web/20131213081407/http://demo.phpfox.com:80/), its simply a clone of MySpace, which is NOT what i&#8217;m looking for. Despite the fact that it&#8217;s [expensive](http://www.phpfox.com/konsort/pricing/).