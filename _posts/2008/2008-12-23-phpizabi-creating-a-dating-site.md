---
id: 301
title: Creating a dating site (PHP)
date: 2008-12-23T11:00:36+00:00
author: admin

guid: http://wade.be/?p=301
permalink: /phpizabi-creating-a-dating-site/
aktt_notify_twitter:
  - yes
categories:
  - Development
tags:
  - dating
  - php
---
<p class="lead">
  During the summer of 2007 I decided to purchase a new domain name with a dating theme.
</p>

The idea was to start a dating website. Although a fairly saturated market place, I figured it'd be another one to add to my profile.

<!--more-->Earlier on in the year I remember coming across an article on the .net magazine website, entitled &#8220;

[Creating your own dating site](http://www.netmag.co.uk/zine/develop-tutorials/date_part1)&#8221; ([part2](http://www.netmag.co.uk/zine/develop-tutorials/date_part2), [part3](http://www.netmag.co.uk/zine/develop-tutorials/date_part3)).

In the article [Karl Hodge](http://www.spodgod.com/) explains how PHPizabi is the ideal social networking site engine with messaging and chat features.

One of the most interesting statements very early on in this article is this:

> PHPizabi is a refreshingly professional, 100 per cent open source, social networking and dating application.

But we'll come back to this later.

We begin with the preparation steps, where we see a screenshot of the author's attempt: &#8220;[dogmeet.net](http://dogmeet.net/)&#8221; &#8211; it looks pretty neat.

Sure i'm a pretty advanced user, so I'll skip this and jump directly to the comments to see what's been said.

> just google phpizabi and you get <a href="http://www.phpizabi.net/" target="_blank">www.phpizabi.net</a> &#8211; it's open source which means you can download it all from the interweb.

Thanks Sam, this should get me started.

Visiting the site, I'm greeted with quite a pretty looking site, however the last entry in their news is a vulnerability report from back in August 2008, I figured this would be fixed by now and proceeded to download regardless.

The file I got given was &#8220;[PHPizabi\_0.848b\_C1_HFP1.zip](http://www.phpizabi.net/?L=downloads.downloadcore&X=dist.core.download&latest=1)&#8220;.

I skip to step 2: Installation.

I quickly notice that the installation I'm using is nothing like the (better looking) screenshots in the tutorial, but I thought &#8220;never mind it must be a newer version&#8221;.

Upon completion of the fairly straightforward installation I get straight to work.

First thing I look at is the themes. There is only one provided and it looks nothing like the (better looking) one seen on the article. Strange, I thought, perhaps they are using a different package.

From here I proceeded to to investigate what other themes I can get for free. I soon found out that &#8220;not many&#8221; was the answer, although I did find a link entitled &#8220;[PhpIzabi Mods, 24 mods & themes:FREE DOWNLOAD](http://digg.com/programming/PhpIzabi_Mods_24_mods_themes_FREE_DOWNLOAD)&#8220;. I figured it may be worth a look at.

Pretty wrong. The themes were no better coded than the shipped one. Poor markup, poor use of CSS, and just generally not very good looking.

This would take some time to cleanup. I started anyway.

I cleaned up the &#8220;frame.tpl&#8221; making it all XHTML, removed the table layout, and added new styles to handle it. I also cleaned up &#8220;home.tpl&#8221; and a few more of the tpl files.

I eventually started getting somewhere, so decided to browse around the site I had started to form. Some of the pages simply didn't look right, and wouldn't populate correctly. I decided to look at the code.

In a way, I wish I never had. In the &#8220;index.php&#8221; I noticed a lot of poor coding, stuff that I'd not seen since about 2005, makes sense since the copyright says 2005, and last modification date was September 3rd 2006.

This isn't very reassuring, this would need a LOT of work to bring it up to speed for 2008. Perhaps I downloaded the wrong version? There must be a more up to date version or a simply better version?

It was at this point that I decided to read the included documentation starting with the &#8220;UPDATE_README.TXT&#8221;. Here I find this:

> To perform an update from PHPizabi 0.4XX, please visit the PIO website to download
  
> the latest migration tool &#8211; <http://online.phpizabi.net>

Interesting. 0.4XX must have been a fairly popular version for them to create a migration tool for and I also found that the &#8220;phpizabi online&#8221; contained lots of mods and themes.

However, looking at the &#8220;core&#8221; releases I found that the latest release was &#8220;Mar. 5th 2007&#8221;. This is not good for any project.

What the hell is going on here? Time to do some [research](http://www.google.co.uk/search?q=phpizabi).

I came across the [PHPizabi demo site](http://demo.phpizabi.net/), which looks similar to the version I have (apart from the mention of Alicia), only it has broken pages too (see [Inkspot](http://demo.phpizabi.net/?L=inkspot.index)). I'm convinced I have the wrong version now.

This is when I discover phpizabi.com, and their [about](http://www.phpizabi.com/?L=info.about) section:

> PHPizabi was founded in mid 2005 by Jeff Knipp whom hired Claude Desjardens to code a personal website. A short time later Claude and Jeff agreed to become 50/50 partners and the personal project became what was destined to be known as PHPizabi.
> 
> In August 2005 the first release of PHPizabi was made available to the general public to download free of charge. PHPizabi has gained international fame through various publications as one of the best free community software on the market and has a broad following of users.
> 
> In November 2006, Jeff was illegally removed from the PHPizabi project by Claude Desjardens. Though legal remedy has not been ruled out, the best interest of the community was taken into consideration and thus the creation of this site which was created to offer the community an alternative to the non-community oriented support provided by the PHPizabi.net site.
> 
> Where the net site surrounds themselves around those only wishing to make a buck or two by allowing people to sell 1 line code mods for ridiculous prices, we believe in the open source community spirit. While we do have the Mod Club, we have many mods that are free, and as always support is 100% free.

Turns out there's [legal issues surrounding this project](http://chris.instantspot.com/blog/2006/12/15/PHPizabi-got-jacked). This is no good.

I decided to return the original article and try and figure out where it all went so wrong.

On the first page, I find the following statements which I had clearly missed:

> Find the file PHPizabi\_0.415b\_R3.zip on this issue’s CD and drag it over to your hard drive
> 
> return to the CD and find the file 0415bR3_sphfixHFP.zip

As it seems, they ARE using a different version, it appears to be the earlier 0.4XX version mentioned in the upgrade text in the newer version. I found this:

> [PHPizabi 0.415b R4](http://www.phpizabi.net/legacy_packages/PHPizabi_0.415b_R4.zip) 6.03Mb      11/23/2005      No support      Encrypted (IonCube)

Low and behold here we have the version mentioned in the article, released back in 2005, however it has IonCube Encryption on the core files. Odd because I remember the article saying that it was 100% open source. Guess not.

Further research via [google news](http://news.google.co.uk/archivesearch?q=phpizabi) finds me an article describing [a known vulnerability in PHPizabi](http://www.vupen.com/english/advisories/2008/0585). I also discovered that there is [still no fix](http://xforce.iss.net/xforce/xfdb/44509), dubbing PHPizabi as [the most hackable Dating Script on the Internet](http://digg.com/programming/PHPizabi_the_most_hackable_Dating_Script_on_the_Internet_2). There's no end to security issues in PHPizabi.

It seems I'm not alone, others have also had [bad experiences with PHPizabi](http://forums.digitalpoint.com/showthread.php?t=455622) and apparently [support sucks even when you pay](http://www.byrobert.com/robblog/2007/03/03/phpizabis-dating-software-is-greatbut-one-in-support-sucks/).

So what now? I CANNOT use this, it's unprofessional, barely usable, unmaintainable, poorly coded and worst of all vulnerable to exploitation. This project is dead.

So with the help of my earlier research, and [wikipedia](http://en.wikipedia.org/wiki/Comparison_of_social_networking_software), I found some alternatives:

  * [OSDate](http://www.tufat.com/s_free_dating_system.htm)
  * [Boonex Dolphin](http://www.boonex.com/products/dolphin/)
  * [DZOIC](http://www.dzoic.com/)
  * [SocialEngine](http://www.socialengine.net/)
  * [phpFox](http://www.phpfox.com/)
  * [AroundMe](http://www.barnraiser.org/aroundme)
  * [PeopleAggregator](http://peopleaggregator.net/)
  * [ELGG](http://elgg.org/)
  * [Mugshot](http://developer.mugshot.org/)
  * [Drupal](http://drupal.org/)
  * [Community Server](http://communityserver.com/)
  * [Joomla!](http://www.joomla.org/)
  * [ODS](http://virtuoso.openlinksw.com/wiki/main/Main/Ods)

Also checkout this [social networking solution comparison table at techcrunch](http://www.techcrunch.com/wp-content/white_label_social_networking_solutions_chart2.html).

What did you decide to go with and why?

Hopefully a &#8220;refreshingly professional, 100 per cent open source, social networking and dating application&#8221;, but I don't hold high hopes.

**UPDATE:** I decided to share my article with the [PHPizabi.com forum](http://www.phpizabi.com/forum/), however I guess they didn't agree with me as I'm banned. The reply post notification via email from blackbook says: &#8220;yea ya like giving links to my paid mods for free..your banned dude&#8221;, thanks, as good as an excuse as any I guess, but it begs the question: now who's &#8220;wishing to make a buck or two&#8221;? Besides, let's face it, if nobody is going to want to use PHPizabi, who's going to want to use the mods anyway?

**UPDATE2:** I'm looking at writing a dating site solution using CakePHP as the framework, based on Matt Inman's [Mingle2](http://mingle2.com/blog/view/how-i-built-mingle2). I sympathise with his decision to write his own solution. Wish me luck!