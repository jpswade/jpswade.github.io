---
id: 3366
title: 'to.je &#8211; The Failed TinyURL.com Clone'
date: 2014-01-10T10:00:06+00:00
author: James Wade
layout: post
guid: http://wade.be/?p=3366
permalink: /to-je-the-failed-tinyurl-com-clone/
redirect_from: /posts/to-je-the-failed-tinyurl-com-clone
aktt_notify_twitter:
  - yes
categories:
  - Development
tags:
  - php
  - spam
  - tinyurl
---
<p class="lead">
  Ever since my IRC (Internet Relay Chat) days I'd always wanted to write a TinyURL.com clone, especially since it gained traction on twitter and Facebook. Since then I saw tinyurl crop up in magazines and all over the place.
</p>

My question was: What happens if TinyURL goes down or is inaccessible? Those links would become unusable.

I decided to make a clone, literally. It would mirror TinyURL, whatever string existed on TinyURL would be replicated on to.je, as best as it could do anyway.

<!--more-->

The initial concept was very simple, it was simply a neat looking form where the user could enter a URL to convert into a hash, or enter the hash to preview the URL.

[<img class="alignnone size-large wp-image-3397" alt="to-je" src="http://wade.be/upload/to-je-1024x481.png" width="640" height="300" srcset="http://wade.be/upload/to-je-1024x481.png 1024w, http://wade.be/upload/to-je.png 1366w" sizes="(max-width: 640px) 100vw, 640px" />](http://wade.be/upload/to-je.png) 

The URL to hash conversion was not smart, it simply took the URL, passed it to TinyURL.com and returned the hash. Of course, it cached it into it's own database.

The preview page was pretty neat as it gave you opportunity to check out the original URL before you visited it.

This worked great.

However, I started to notice a problem and so did others. Spam. The service was getting riddled by spam. This wouldn't be so easy to solve as, when TinyURL would remove a URL for spam, we wouldn't know.

This meant building spam reporting and checking.

When a URL was reported, the first thing this would do is check against TinyURL's &#8220;nospam&#8221; to see if it had already been terminated or reported. This wasn't enough as it did not prevent spam, only allowed to check and/or report it.

To prevent spam I introduced 3 services:

  * iblocklist.com
  * phishtank.com
  * google.com/safebrowsing

The data was downloaded and stored locally so checking was very fast. The data would then be updated periodically and checked against the database.

Anything bad was marked as such and reported.

All was well. At least I thought, until I left it to run for a while on it's own.

There were more problems:

  * 99% of usage was spam
  * I couldn't work out a way to monetise the service
  * The domain was too expensive to justify

Although I enjoyed the experiment, I eventually decided to simply let the domain go.

I since resurrected the service as a mirror of tinyurl, rather than a tinyurl clone which you can see it in action on the DeadUseful website:

  * [To (TinyURL Mirror)](http://deaduseful.com/to/)

True, it probably won't shorten your links, but it will act as an archive or mirror if TinyURL goes down.

So if you're thinking of making a TinyURL clone, my advise is: Don't.

The market is saturated, spam is ripe and there's very little avenue for revenue.