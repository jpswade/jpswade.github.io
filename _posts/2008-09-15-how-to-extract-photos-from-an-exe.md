---
id: 229
title: How to extract photos from an exe
date: 2008-09-15T15:53:25+00:00
author: admin
layout: post
guid: http://jpswade.github.io/?p=229
permalink: /how-to-extract-photos-from-an-exe/
categories:
  - Development
---
<p class="lead">
  I wasn&#8217;t going to write about this, but I liked the solution (application) so much I had to shout about it.
</p>

I was provided with a 30 day cd preview slideshow of wedding photos, and was asked very kindly to attempt to extract the photos from it so they could be viewed beyond the trial period.

<!--more-->

I agreed to the challenge, and that was that&#8230;

At first I decided to take a look at the application, and soon discovered (using [PEID](http://programmerstools.org/node/226)) that it was ASpacked, and so I used [aspackdie](http://myweb.tiscali.co.uk/reverseengineering/html/aspackdie.html) to unpack it.

However, this is where I got stuck. I tried loads of different (windows) [resource software](http://en.wikipedia.org/wiki/Resource_(Windows)) and none of them were able to extract the photos.

I went onto [programmerstools.org](http://programmerstools.org/) to try and see if there were any more tools, and just before I was about to give up I noticed an application entitled &#8220;[MultiExtractor](http://programmerstools.org/node/654)&#8221; sitting in their &#8220;Highest rated&#8221; list on the front page. I now see why.

[MultiExtractor](http://www.multiextractor.com/) is a brilliant application.

I successfully managed to extract 878 photos from the packed exe on the CD.

The exe was packed using ASpack, nothing else seemed able to extract the files, even when I used aspackdie first.

It&#8217;s simple and easy to use. It&#8217;s not some cheap &#8216;hacker&#8217; tool, or a complex hardcore programmer tool, it just works!

The maximum price for this application is $100 (~£55), if I have the pleasure of using this application again, I am very likely to pay for the privilege.

Great work Maciej Drobinski, keep it up!