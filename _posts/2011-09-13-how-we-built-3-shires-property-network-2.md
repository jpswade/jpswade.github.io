---
id: 3620
title: 'How We Built: 3 Shires Property Network'
date: 2011-09-13T21:48:00+00:00
author: admin
layout: post
guid: http://wade.be/?p=3620
permalink: /how-we-built-3-shires-property-network-2/
tumblr_jpswade_permalink:
  - http://jpswade.tumblr.com/post/10176465857/how-i-built-3shires-property-network
tumblr_jpswade_id:
  - 10176465857
categories:
  - Development
tags:
  - real estate
  - web design
  - web development
---
<p class="lead">
  Back in 2006, Mandi approached me to create her a website for her real estate and property rental business: <a href="http://www.3shires.net/">3 Shires Property Network</a>.
</p>

There was already a website online with the basic contact details, but no properties listed.

Now with over 60 properties listed on her website things are going well, which tells you that we did something right.

_Time for the close up:_

[<img class="alignnone size-medium wp-image-3641" src="http://wade.be/upload/3_Shires_Property_Management_Quality_letting_specialist_and_property_management-300x214.png" alt="3_Shires_Property_Management_Quality_letting_specialist_and_property_management" srcset="http://wade.be/upload/3_Shires_Property_Management_Quality_letting_specialist_and_property_management-300x214.png 300w, http://wade.be/upload/3_Shires_Property_Management_Quality_letting_specialist_and_property_management.png 768w" sizes="(max-width: 300px) 100vw, 300px" />](http://wade.be/upload/3_Shires_Property_Management_Quality_letting_specialist_and_property_management.png) 

  1. **Banner**: The logo was provided by the client to remain consistent with their existing stationary. The farmhouse image was added at the top to give a rural look and feel, giving the visitor the right impression of the business. Rounded to make it easy on the eyes.
  2. **Navigation**: A simple, basic navigation bar below the banner, but above the contents makes it easier for the user to find what they want.
  3. **Photos**: The client really wanted to get across to the visitor the range of properties they dealt with. The “from flats to farmhouses” phrase came up and the ideas stemmed from that.
  4. **Details:** All the details the visitor needs are right there on the front page.

**The technical part**

The website engine is actually based on the [PHPbase](http://wade.be/posts/phpbase-web-framework) powered open source “[Property Management Software](http://freshmeat.net/projects/property-management-software)&#8221; which I heavily modified to fix errors and security issues as well as adapt to the UK market.

**Migrating to a new server**

The website was moved by [Phurix](http://www.phurix.co.uk/) from an ageing server to a new server.

This did however introduce a few problems, where you could no longer edit the properties from the admin area.

This is because it was originally developed for PHP4 and I’ve never updated the code since. The previous server ran both PHP4 and PHP5, however the new server only runs PHP5.3 (or above) as PHP4 was discontinued in 2008.

After a few hours looking at old code and scratching my head, I discovered an “at sign” (@) which was suppressing all the usual errors and warnings that you would see when there is a problem.

The solution was to update the code by dealing with the compatibility errors and warnings.

**What I would do differently next time**

The first thing to go would be the website engine.

It’s unlikely that I would recommend the software above because it is no longer in development by me or the original authors.

Things have moved on a lot since this website was written, social media was just getting started and Google Chrome didn’t even exist!

Some alternative options for real estate listings are:

  * Open-Realty: Commercial license, partially encrypted, poor looking demo (cira 2005). No thanks.
  * Drupal: Good solid base to start with but there’s no actively developed home/real estate/realty modules. This solution would be too complex for a small business.
  * Placester: A new player making it very easy to create real estate ads online and feed them into many other websites. The issue is that it’s not yet in the UK and I’ve yet to work out what’s in it for them.

So, to keep it as simple, yet modern I would opt for

  * WordPress with the [Estate](http://www.woothemes.com/2010/07/estate/) theme by woothemes, which may seem like an odd choice, but it’s worth it for all the for all the included advanced features.

As for the design, I still quite like the style, but I would probably modernise it, making the navigation clearer and adding a nice chunky footer, while using WordPress and the Estate theme as a base would clean up how the contents is displayed and managed.