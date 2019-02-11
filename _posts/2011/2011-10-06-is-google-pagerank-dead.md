---
id: 3314
title: Is Google PageRank dead?
date: 2011-10-06T21:30:30+00:00
author: James Wade
layout: post
guid: http://wade.be/?p=3314
permalink: /is-google-pagerank-dead/
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
  PageRank is dead, long live PageRank.<img class="alignright size-medium wp-image-3317" title="Dead Parrot" src="http://wade.be/upload/dead-parrot-1-300x168.png" alt="" width="300" height="168" />
</p>

As we said [recently](/pagerank-viewer-launch), there's been lots of speculation as to whether PageRank is dead or not. It isn't, just Google are moving the goals a bit. Basically, they don't want you to focus on PageRank but it's still massively important to them.

All this talk of dead, reminds me of the [Monty Python dead parrot sketch](http://en.wikipedia.org/wiki/Dead_Parrot_sketch), only in this case, it isn't dead. An anti-dead-parrot if you will.

So what's with all the [news about PageRank being dead](http://www.google.co.uk/news?q=pagerank+dead)? Google just changed their code, that's all&#8230;

<!--more-->

### What's going on then?

Originally, everyone used the code in the Internet Explorer plugin, then the Firefox plugin came along.

The common thing about both was the URL they used to lookup the PageRank:

> http://toolbarqueries.google.com/search?client=navclient-auto&ch=%s&features=Rank&q=info:%s
> 
> Note: The first %s is the checkhash, while the second is the actual URL you're looking up.

Back in August, [James Slater](http://james.slaterspage.com/scraping-google-related-with-bonus-pagerank/) was investigating the new [Google Related chrome plugin](https://chrome.google.com/webstore/detail/cikfgcnnhcibkipoldbjegmeojnkaled) only to discover the new PageRank lookup URLs:

> http://toolbarqueries.google.com/tbr?client=navclient-auto&ch=%s&features=Rank&q=info:%s

Also, if you used to use the host &#8220;www.google.com&#8221; this no longer works either, use &#8220;toolbarqueries.google.com&#8221; instead.

### Let there be code!

As part of our ongoing commitment to our [PageRank lookup tool](http://pagerank.phurix.net/), not only have we fixed our code, but we've released working PageRank scripts to GitHub.

  * [PageRank on GitHub](https://github.com/phurix/pagerank/)

PageRank is dead, long live PageRank.