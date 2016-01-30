---
id: 94
title: Compression Utilities
date: 2007-03-13T02:21:19+00:00
author: admin
layout: post
guid: http://jpswade.github.io/posts/compression-utilities
permalink: /compression-utilities/
aktt_notify_twitter:
  - yes
categories:
  - Sysadmin
tags:
  - 7-zip
  - compression
  - squeez
  - winace
  - winrar
  - winzip
---
<p class="lead">
  For years now, for whatever reason I have used <a href="http://www.winzip.com/">WinZip</a>. I don&#8217;t really know why I continued to use it for so long as from WinZip 8 onwards, I was under the impression that it was going down hill.
</p>

Over the year&#8217;s i&#8217;ve used other compression formats other than &#8220;.zip&#8221;, including &#8220;.rar&#8221; and &#8220;.ace&#8221;. The problem I soon discovered with WinZip is its inability to allow me to open some of these types of archives.

<!--more-->Roll in WinRAR. 

[WinRAR](http://www.rarlab.com/) was quite a choice application, and was sort of considered the &#8220;hacker&#8221; version of WinZip due to the nature of its users and the way it could be used, including the ability to split rar files into many separate files making it easy for distribution. Prior to this you would require the use of &#8220;splitting&#8221; software, that would allow you to split and recombine files such as zip files.

For some time I used [WinZip](http://www.winzip.com/), [WinRAR](http://www.rarlab.com/)[](http://www.rarlab.com/), then also [WinAce](http://www.winace.com/) (probably used it once ever) along side each other, with WinZip as my default for most.

It got to WinZip 10, and I was still pretty much in this same rut, until RARsoft were giving away licenses (rar.key) for WinRAR 3.51 ([details here](http://googlesystem.blogspot.com/2006/07/winrar-free-today.html)). I managed to bag myself a couple of free licenses before the offer expired.

However, this got me thinking&#8230; What is the best overall compression utility? Do I really need more than one?

I spoke to a few people I know online about this very subject. After some discussion the point I took was that &#8220;[7-zip](http://www.7-zip.org/)&#8221; was the best for the job&#8230; I decided to investigate further&#8230;

Firstly, it must be pointed out that compression utilities are sometimes known as file archivers, as they often offer the ability for zero compression, yet still group many files together into one archive.

As per usual the Wikipedia has quite an extensive comparison for this particular subject ([Comparison of file archivers](http://en.wikipedia.org/wiki/Comparison_of_file_archivers)). As outlined earlier I wanted to see which one was &#8220;best overall&#8221; and I wanted to use as few as possible.

To achieve this I decided to first checkout which applications has what format support for both reading and writing. (Ignore the mac formats, we&#8217;re talking windows!)

[7-Zip](http://www.7-zip.org/) lacked the ability to read or write RAR, LHA, ACE, and ARJ.

[WinZip](http://www.winzip.com/) doesn&#8217;t do 7z or ace and lacks the ability to write anything that isn&#8217;t zip.

[WinRAR](http://www.rarlab.com/) can literally read anything, but lacks the ability to write anything other than RAR or ZIP.

I discovered that the best application overall for both reading and writing ability was an application called [Squeez](http://web.archive.org/web/20090312042748/http://www.speedproject.de:80/enu/squeez/). However, graphical design of this application isn&#8217;t exactly fantastic.

After further discussion with some friends I discovered a statistical site named &#8220;[Maximum Compression](http://www.maximumcompression.com/)&#8221; which benchmarks compression formats and utilities. I decided to review the results to see if it could sway my vote.

If you take a look at the tests on an individual basis, you will soon discover that the applications of choice do not often appear in the top 10, but do begin to appear in the top 20. But not to worry as the other applications on top seem to offer very limited features and format support when checking against the comparison table.

After some time viewing you begin to notice that there&#8217;s simply only two contenders when it comes to best compression, AND features. They are Squeez and 7zip. However a point must be made that 7-Zip actually out performs Squeez by 2 places in the summery of all the tests, but then Squeez has far more format support.

Overall it is clear there is one leading application, that is [Squeez](http://web.archive.org/web/20090312042748/http://www.speedproject.de:80/enu/squeez/). Well done Squeez.

Having said this, although Squeez seems the best on paper, the problem arises when you actually begin to use the user interface.

In fact, it comes prior to that. The application is German based, which puts me off a little, their website isn&#8217;t exactly fantastic, and the application costs 27.95 EUR. Regardless I tried this application, and soon discovered that its interface is as ugly as the website, with a poor splash screen, and bad use of context menus, I found this application difficult to work with.

So, I came to another conclusion. WinRAR offered everything I required. It offers me the ability to read many archive file types, and then some, and if I need to create an achieve I can simply create a zip or rar. OK, it didn&#8217;t do as well as Squeez on the tests, but its a nice application.

Another thing to note about WinRAR is that it isn&#8217;t normally free, although simtel are sponsoring rarsoft to give away [free license for WinRAR 3.51](http://web.archive.org/web/20060904072711/http://wcarchive.cdrom.com/pub/simtelnet/win95/compress/rarkey.rar) (non-upgradable). So if you DO like WinRAR, then do please buy the latest version.

Alternatively, 7-Zip is open source and falls under the GPL license agreement, meaning you do not have to pay anything to download or use this application. Remember, although 7-Zip lacks in format support and usability compared with WinRAR, its still quick and free.

In conclusion the only thing I can truly take away from this is that WinZip is crap. It lacks the format support and costs $29.95, it really isn&#8217;t worth it, when you can get it for free.

I now use [WinRAR](http://www.rarlab.com/), and [Squeez](http://web.archive.org/web/20090312042748/http://www.speedproject.de:80/enu/squeez/) on special occasions.