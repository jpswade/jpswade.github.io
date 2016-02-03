---
id: 3142
title: PageRank Viewer Launch
date: 2011-08-03T14:55:28+00:00
author: James Wade
layout: post
guid: http://wade.be/?p=3142
permalink: /pagerank-viewer-launch/
aktt_notify_twitter:
  - yes
aktt_tweeted:
  - 1
categories:
  - Development
  - Internet
tags:
  - google
  - pagerank
  - php
---
<p class="lead">
  <a href="http://pagerank.phurix.net/"><img class="alignright" title="pagerank" src="http://wade.be/upload/pagerank-300x225.png" alt="" width="300" height="225" /></a>Back in 2007, we were developing code for our domain lookup service.
</p>

One of the features we wanted was to display the Google PageRank of a domain right there in the lookup along side the whois details.

At the time we didn&#8217;t know how to pull this information and there was very limited details on it, so some research was required which resulted in a [PageRank PHP script](http://wade.be/projects/pagerank).

Over time, the resulting &#8220;pagerank.php&#8221; script became very popular and was developed further by fixing bugs and making it easier to use.

Now we wanted to show off our work in the form of a demo, so we launched a website&#8230;

<!--more-->We&#8217;ve had a demo of the 

[PageRank Viewer](http://pagerankviewer.com/) online since 2010, but this week we&#8217;ve developed a whole new site along side entirely new code.

The original code we used was reverse engineered from the Internet Explorer toolbar, however it was much later that improved code based on the Google Toolbar for Mozilla Firefox surfaced.

The code from the Google Toolbar for Mozilla Firefox was interesting. By downloading the plugin &#8220;xpi&#8221; file, unzipping it and taking a look at the javascript you are able to see that Google regards PageRank quite highly or has sense of humour:

> HASH\_SEED\_=&#8221;Mining PageRank is AGAINST GOOGLE&#8217;S TERMS OF SERVICE. Yes, I&#8217;m talking to you, scammer.&#8221;;

The simplicity of this code made it very easy to port over to any scripting language. So along side the launch of the all new PageRank Viewer website, we&#8217;re also shipping code in PHP, Python, Perl, TCL, C++ and D, all with the new code so you can write your own solution.

We bring this to you just in time too, there&#8217;s a perceived deprecation of PageRank after Google didn&#8217;t offer any official PageRank tool in their Google Chrome web browser.

PageRank was removed from webmaster tools, dismissed by a Google employee who said:

> &#8220;it was silly to tell people not to think about it, but then to show them the data, implying that they should look at it&#8221;
> 
> &#8211; [Susan Moskwa 14/10/2009](http://www.google.com/support/forum/p/Webmasters/thread?tid=6a1d6250e26e9e48&hl=en)

Although we agree with the point Google is trying to make, we felt there is still a lot of value on PageRank to webmasters.

For example, Google have made it very clear that having a reliable web hosting provider will help with ranking.

With that in mind, we decided to redevelop the PageRank Viewer and release new code to improve availability of PageRank lookups.

We welcome the all new [PageRank Viewer](http://pagerank.phurix.net/) to the family as a Phurix Labs project.

Enjoy!