---
id: 593
title: get_favicon() php function
date: 2011-03-15T12:45:43+00:00
author: admin
layout:
  - post
guid: http://jpswade.github.io/?p=593
permalink: /get_favicon-php-function/
aktt_notify_twitter:
  - yes
aktt_tweeted:
  - 1
categories:
  - Development
  - Internet
tags:
  - favicon
  - function
  - google
  - php
---
<p class="lead">
  I was after a php function that would get the favicon for a supplied domain, I did attempt to write my own but it proved more complex than I had first anticipated. <!--more-->Never fear, I did a quick google and came across a couple of sites.
</p>

  * <http://www.peej.co.uk/projects/favatars.html>

I tried this code, but it returned nothing. I attempted to fix it, but it still didn&#8217;t really perform very well.

  * <http://www.josephtinsley.com/39/2009-11-10/google-favicon-api-php-code/>

This was interesting, it seems that google has an API for returning favicons&#8230;

> function get_favicon($host) { return &#8216;http://www.google.com/s2/favicons?domain=&#8217;.$host; }

That was easy. Also, if you don&#8217;t fancy using Google (some people don&#8217;t) you can try one of these instead:

  * http://duckduckgo.com/i/%s.ico
  * http://getfavicon.appspot.com/%s
  * http://www.getfavicon.org/?url=%s

Where %s is, but the host or domain name.