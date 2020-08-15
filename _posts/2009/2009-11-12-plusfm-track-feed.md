---
id: 567
title: PlusFM Track Feed
date: 2009-11-12T15:18:53+00:00
author: admin

guid: http://wade.be/?p=567
permalink: /plusfm-track-feed/
aktt_notify_twitter:
  - yes
aktt_tweeted:
  - 1
categories:
  - General
tags:
  - audioscrobbler
  - foobar2000
  - last.fm
  - lastfm
  - plusfm
  - winamp
---
<p class="lead">
  Recently an online radio station I listen to called PlusFM stopped displaying track titles on their stream. This was a pain for quickly displaying the current track you were listening to, however I did figure out a work around&#8230;
</p>

<!--more-->Here's my setup&#8230;

I have two machines in my office, one has a hifi system attached, the other does not.

I use the lightweight media player [Foobar2000](http://en.wikipedia.org/wiki/Foobar2000) (foobar2000.org), developed by Peter Pawlowski, a former freelance contractor for Nullsoft. So you know it's a good alternative to Winamp.

In Foobar2000 I add the location for PlusFM's stream:

> <http://91.121.48.90>

I then use the last.fm plugin for audio scrobbling in Foobar2000 ([foo_audioscrobbler.dll](http://www.mp3tag.de/en/fb2k.html)).

This allows me to feed the track I'm listening to the last.fm API.

I can then call their API and display the current track I'm playing on any device, anywhere in the world.

I currently use it in combination with my &#8220;last.fm&#8221; mIRC script, which calls the API, reads the currently playing track, then displays it on screen when you trigger it using the /amp command.

This mean that when I hear a song I like, I could display it to share it with others, or just display it for my own interest.

This was great, until recently, when plusFM changed, and decided to stop displaying the track names on their feed&#8230;

> * +User is listening to www.plusfm.net &#8211; current track available on www.plusfm.net <www.last.fm/user/user>

I understand that you guys want more hits to your site, but you're messing up my last.fm feed.

Perhaps PlusFM could sign up to last.fm and feed the audio scrobbler, then I can simply read it from there!

Or perhaps I could read it directly from your site&#8230;

So it turns out there's a feed on the site I can read from instead&#8230;

> <http://www.plusfm.net/titre_plusfm.php>

So I wrote a little script for it called plusfm.mrc&#8230;

  * Download [plusfm.mrc](http://hm2k.googlecode.com/svn/trunk/code/mirc/plusfm.mrc)
  * Usage: /plusfm

> [12:16:48 pm] * User now playing Justice &#8211; Genesis <www.plusfm.net>