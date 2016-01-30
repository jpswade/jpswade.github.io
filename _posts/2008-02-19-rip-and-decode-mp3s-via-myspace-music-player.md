---
id: 169
title: Rip and decode mp3s via myspace music player
date: 2008-02-19T12:13:50+00:00
author: admin
layout: post
guid: http://jpswade.github.io/posts/rip-and-decode-mp3s-via-myspace-music-player
permalink: /rip-and-decode-mp3s-via-myspace-music-player/
categories:
  - Internet
---
<p class="lead">
  I&#8217;m always looking for new ways to get my hands on mp3s, this is yet another way, thanks to myspace.
</p>

I figured out that there must be a way we can get our hands on the actual mp3 files found on the myspace music player.

All we had to do was decode their site so we are able to grab their mp3s.

<!--more-->For this example, you will need 

[Mozilla Firefox](http://www.getfirefox.com/).

  1. [Search for the myspace page of a band or artist](http://searchresults.myspace.com/index.cfm?fuseaction=music.search&searchtarget=tmusic&search_term=0&searchBoxID=HeaderWebResults&keywords=ferry%20corsten). eg: ferry costen
  2. Visit their profile page. eg: http://profile.myspace.com/index.cfm?fuseaction=user.viewprofile&friendID=26949175
  3. Look at the HTML code (CTRL+U in Firefox). 
      * Find the &#8220;mp3player&#8221;.
      * Find a the &#8220;src=&#8221;http://lads.myspace.com/music/musicplayer.swf?n=a&#8221; line eg: <span class="attribute-name">src</span>=<span class="attribute-value">&#8220;http://lads.myspace.com/music/musicplayer.swf?n=aHR0cDovL211c2ljLm15c3BhY2UuY29t&t=2zZraik8ig5S9ktLf2NZejuI1axbBcWJV1tcidA7Df2ccYSYBeFi1X+rKSaHUvsuu+H+TZdIsFm1/Wos9jKd/Q==&u=LTE=&a=1&d=MjY5NDkxNzVeMTIwMTU0NzE0OA==&#8221;</span>
      * <span class="attribute-value">Get the <a href="http://livehttpheaders.mozdev.org/">Live HTTP Headers</a> addon for Firefox and open it to capture mode.<br /> </span>
      * <span class="attribute-value">Visit the <a href="http://lads.myspace.com/music/musicplayer.swf?n=aHR0cDovL211c2ljLm15c3BhY2UuY29t&t=2zZraik8ig5S9ktLf2NZejuI1axbBcWJV1tcidA7Df2ccYSYBeFi1X+rKSaHUvsuu+H+TZdIsFm1/Wos9jKd/Q==&u=LTE=&a=1&d=MjY5NDkxNzVeMTIwMTU0NzE0OA==">URL</a> between the quotes.</span>
    
    <span class="attribute-value"></span></li> 
    
      * <span class="attribute-value">You should see something that looks like this: &#8220;<a href="http://mediaservices.myspace.com/services/media/musicplayerxml.ashx?b=26949175">http://mediaservices.myspace.com/services/media/musicplayerxml.ashx?b=26949175</a>&#8220;.</span>
      * <span class="attribute-value">Visit the URL</span> 
          * <span class="attribute-value">You will find the &#8220;<a href="http://cache02-music01.myspacecdn.com/16/std_8f66fa49e964209826356ce9f579541f.mp3">durl</a>&#8221; eg: durl=&#8221;http://cache02-music01.myspacecdn.com/16/std_8f66fa49e964209826356ce9f579541f.mp3&#8243;.</span>
          * <span class="attribute-value">You will also find the title=&#8221;Into The Dark Ferry Fix&#8221;, which is useful when saving, to give them real names.</span></ol> 
    
    So in case you didn&#8217;t notice, all you really need is the &#8220;FriendID&#8221; and the <span class="attribute-value"></span>mediaservices.myspace.com URL, and in future you can access the playlist for any band or artist, and download all the tracks they have on their profile.
    
    It&#8217;s worth knowing how to figure it out, in case their system changes.
    
    **Resources** 
    
      *  <http://himself.wordpress.com/2007/01/24/downloading-mp3s-from-myspace-bands-revisited/>
      * <http://tom.drastic.net/archives/11>
      * <http://forum.readingfestivalonline.co.uk/archive/index.php/t-33463.html>