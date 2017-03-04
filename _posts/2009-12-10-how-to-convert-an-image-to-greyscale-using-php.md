---
id: 583
title: How to convert an image to greyscale using PHP
date: 2009-12-10T14:39:30+00:00
author: admin
layout: post
guid: http://wade.be/?p=583
permalink: /how-to-convert-an-image-to-greyscale-using-php/
aktt_notify_twitter:
  - yes
aktt_tweeted:
  - 1
categories:
  - Development
tags:
  - conver
  - convert
  - gray
  - grayscale
  - grey
  - greyscale
  - image
  - imagefilter
  - IMG_FILTER_GRAYSCALE
---
<p class="lead">
  I was trying to find a neat way to grey out some &#8220;powered by&#8221; logos for a website I'm developing.
</p>

I remembered reading about this very thing in [.net magazine](http://en.wikipedia.org/wiki/.net_%28magazine%29)/[august 2009 (i191,p100)](http://www.badassideas.com/downloads/net191swarren.pdf), which said:

> _&#8220;Sponsor and associate logos can be a challenge for a designer who is making a valiant attempt to create a cohesive website layout. Logos can be contrasting colour schemes and can be displayed at a wide range of different aspect ratios. When faced with this challenge, I recommend greying out the logos and having them appear in their respective colours upon mouse-over. When placing logos next to each other, I’d consider using visual weight versus actual size to determine spacing.&#8221;_
> 
> &#8211; [Samantha Warren @ badassideas.com](http://badassideas.com/)

So, sure we've established that it's a good idea, the question is how to achieve it&#8230;

<!--more-->It's really quite simple, there's two parts:

  1. Convert the image to greyscale using PHP.
  2. Write HTML and javascript that will change the image source on mouseover.

Before I get started, I need to point out that because I'm British, I use &#8220;Grey&#8221;, instead of the American &#8220;Gray&#8221;, apart from in the actual code.

I very quickly discovered a number of ways to convert an image from colour to greyscale, however the easiest way appeared to be using the [imagefilter()](http://php.net/manual/en/function.imagefilter.php) function with the IMG\_FILTER\_GRAYSCALE greyscale filter which produced the results I was looking for. I found you can also very [easily add all sorts of effects to images using PHP](http://www.talkincode.com/add-effects-to-images-using-image-filters-with-php-266.html).

I kept it simple and wrote a function that would convert an image from jpeg, gif or png to a png greyscale image. I called it [imagegray()](http://hm2k.googlecode.com/svn/trunk/code/php/functions/imagegray.php).

It's very easy to use, you just pass the filename to the function and it will display the image in greyscale. For example:

> <?php
> 
> $i=isset($\_REQUEST[&#8216;i'])?$\_REQUEST[&#8216;i']:&#8221;;
  
> if ($i) { imagegrey($i); }
> 
> ?>

Next, it's onto the HTML, which although isn't exactly difficult, you may stumble if you're unsure&#8230;

> <img onmouseover=&#8221;this.src='image.jpg'&#8221; onmouseout=&#8221;this.src='imagegrey.php?i=image.jpg'&#8221; src=&#8221;imagegrey.php?i=image.jpg&#8221; alt=&#8221;image&#8221; border=&#8221;0&#8243;>

That's it, that's all there is to it.

If you run a large site, for scalability reasons you may wish to involve caching, but for most small sites, this method is quick and effective.

Enjoy!