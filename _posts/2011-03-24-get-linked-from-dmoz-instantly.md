---
id: 1881
title: 'XSS: Get linked from Dmoz instantly'
date: 2011-03-24T09:07:31+00:00
author: admin
layout:
  - default
guid: http://jpswade.github.io/?p=1881
permalink: /get-linked-from-dmoz-instantly/
aktt_notify_twitter:
  - yes
aktt_tweeted:
  - 1
categories:
  - Internet
  - Security
tags:
  - dmoz
  - security
  - SEO
  - xss
---
<p class="lead">
  Recently, like many of you, I&#8217;ve had some trouble getting websites listed on the AOL owned &#8220;Open Directory Project&#8221; known as Dmoz.
</p>

So, looking back at a post written by [Oatmeal](http://0at.org/) which explains [how to get 20 .gov links in 20 minutes](http://www.seomoz.org/blog/xss-how-to-get-20-gov-links-in-20-minutes) I wondered if the same was possible for Dmoz&#8230;

<!--more-->After very little searching I soon discovered that the 

**main search function of Dmoz is vulnerable**.

This means malicious users could easily place HTML code into the search form input box and manipulate the markup on the site (aka [Cross Site Scripting](http://en.wikipedia.org/wiki/Cross-site_scripting) or XSS).

Here&#8217;s a proof of concept showing how you would link to [example.com](http://www.rfc-editor.org/rfc/rfc2606.txt) with the anchor text as &#8220;Look, I made a link&#8221;:

> http://www.dmoz.org/search?q=%3Ch1%3E%3Ca+href%3D%22http%3A%2F%2Fexample.com%22%3ELook%2C+I+made+a+link%3C%2Fa%3E%3C/h1%3E
> 
> [View the compromised page](http://www.dmoz.org/search?q=%3Ch1%3E%3Ca+href%3D%22http%3A%2F%2Fwww.example.com%22%3ELook%2C+I+made+a+link%3C%2Fa%3E%3C/h1%3E) ([screenshot](http://i.imgur.com/1Aqad.png))

To make this affective, you would simply need to swap out the domain and the anchor text and (in theory) you would have to link to them from various other websites for them to eventually get indexed and start passing link juice for things like [PageRank](http://jpswade.github.io/projects/pagerank).

This is not the first time that Dmoz has been subject to such a flaw, as in 2007 they were subject to a similar [XSS vulnerability in their blog search](http://sla.ckers.org/forum/read.php?3,16280,16287).

There are many well established ways Dmoz could fix this (aside from fixing their site code) on the server but they have chosen not to. I&#8217;m not sure why.

Is there any SEO value in these type of links? It&#8217;s uncertain.

Is there a security risk? Yes, definitely.

Dmoz is not the only site to ever become subject to an XSS exploit, [twitter has](http://www.theregister.co.uk/2010/09/22/twitter_xss_genesis/) [been vulnerable](http://www.darknet.org.uk/2010/01/researcher-uncovers-xss-flaws-in-twitter-and-google-calendar/) [plenty](http://www.jemjabella.co.uk/2010/confirmed-twitter-xss-vulnerability/) [of](http://www.davidnaylor.co.uk/twitter-exploit-still-works.html) [times](http://www.davidnaylor.co.uk/massive-twitter-cross-site-scripting-vulnerability.html), but by golly they fixed it.

Will Dmoz pull their finger out or is he dead, [jim](http://www.dmoz.org/public/profile?editor=jimnoble)?

_Note: [Dmoz Staff](http://www.dmoz.org/docs/en/public_abuse_faq_en.html) were unavailable for comment at time of publication (email address was unreachable)._