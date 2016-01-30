---
id: 479
title: The Google Translate recursion bug
date: 2009-08-24T14:39:50+00:00
author: admin
layout: post
guid: http://jpswade.github.io/?p=479
permalink: /the-google-translate-recursion-bug/
aktt_notify_twitter:
  - yes
aktt_tweeted:
  - 1
categories:
  - Development
  - Internet
tags:
  - bug
  - frames
  - recusion
  - translate
---
<p class="lead">
  Recently I found a bug in <a href="http://translate.google.com/">Google Translate</a>. It&#8217;s not damaging, but it is interesting.
</p>

What I have discovered is that when you use a certain string, the Google Translate frame inserts itself into the main frame, causing it to load again within that frame, in turn this causes it to reload within that frame and this continues until your browser decides it&#8217;s had enough and stops (or in the case of Internet Explorer, until it locks up). This kind of self-looping is often referred to as [recursion](http://www.google.co.uk/search?q=define%3Arecursion).

<!--more-->

First off, I want to say point out that I did try and ask various people how to contact Google to report this bug, but nobody got back to me.

It seems nobody wants to take responsibility for the Google Translate project and I was all up for reporting it as I heard other people have received T-Shirts for doing so. But, no T-shirt for me, so I guess I&#8217;ll just publish on my site instead and see if they fix it.

Also last time I provided feedback to Google, they created a solution, but never emailed me back to thank me or anything. (The &#8220;Go to Google.com&#8221; that appears on the Google regional search (eg: Google UK) is a direct result of my feedback, it did not exist until about a month after I submitted my feedback).

Don&#8217;t get me wrong, I like Google, but it&#8217;s not nice to be ignored.

Okay, so onto the actual bug&#8230;

<div id="attachment_480" style="width: 310px" class="wp-caption aligncenter">
  <a href="http://jpswade.github.io/upload/Google-Translate_1251117987726.png"><img class="size-medium wp-image-480" title="Google Translate_1251117987726" src="http://jpswade.github.io/upload/Google-Translate_1251117987726-300x154.png" alt="Google Translate Recusion" width="300" height="154" srcset="http://jpswade.github.io/upload/Google-Translate_1251117987726-300x154.png 300w, http://jpswade.github.io/upload/Google-Translate_1251117987726.png 792w" sizes="(max-width: 300px) 100vw, 300px" /></a>
  
  <p class="wp-caption-text">
    Google Translate Recursion
  </p>
</div>

I discovered this after trying to translate a URL from a Wikipedia.

> [http://de.wikipedia.org/wiki/Datei:Devil%27s_own.jpg](http://translate.google.com/translate?hl=en&sl=de&tl=en&u=http://de.wikipedia.org/wiki/Datei:Devil%27s_own.jpg)

I narrowed this down to the apostrophe (&#8216;) in the URL&#8230;

> [http://de.wikipedia.org/wiki/&#8217;](http://translate.google.com/translate?hl=en&sl=de&tl=en&u=http://de.wikipedia.org/wiki/')

I realised it would work on any domain&#8230;

> [http://en.wikipedia.org/wiki/&#8217;](http://translate.google.com/translate?hl=en&sl=de&tl=en&u=http://en.wikipedia.org/wiki/')

However, it did not, or does no longer work with just an apostrophe&#8230;

> <http://translate.google.com/translate?hl=en&sl=de&tl=en&u=%27>
> 
> Bad Request
  
> Your client has issued a malformed or illegal request.
> 
> <http://translate.google.com/translate?hl=en&sl=de&tl=en&u=http://%27>
> 
> Redirects to home page.

Interestingly enough though, it does work when translating Google&#8217;s very own search:

> [http://www.google.com/?q=%27](http://translate.google.com/translate?hl=en&sl=de&tl=en&u=http://www.google.com/?q=%27)

A pretty poor show by Google if you ask me.

I do wonder though, who will get there first? Will Google fix it or will someone exploit it?

There&#8217;s only one way to find out&#8230; Post!

Enjoy.

**Update 04-Sept-2009:** It seems to me that this bug has been fixed. I await my Google T-shirt&#8230;