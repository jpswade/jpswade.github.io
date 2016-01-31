---
id: 667
title: Find the ip address of a seized website
date: 2010-12-01T00:27:53+00:00
author: admin
layout: post
guid: http://wade.be/?p=667
permalink: /find-the-ip-address-of-a-seized-website/
aktt_notify_twitter:
  - yes
aktt_tweeted:
  - 1
categories:
  - Internet
---
<p class="lead">
  So your favorite site is now displaying the following message:
</p>

> This domain name has been seized by ICE &#8211; Homeland Security Investigations

In this example we will use the recently seized domain &#8220;torrent-finder.com&#8221;.

What &#8220;ICE&#8221; have done is changed the IP address that the domain resolved to, to one of their own.

The easiest way to see what the IP address currently is, is by using the &#8220;ping&#8221; command:

> [user@server~]$ ping torrent-finder.com
  
> PING torrent-finder.com (74.81.170.110) 56(84) bytes of data.
> 
> &#8212; torrent-finder.com ping statistics &#8212;
  
> 1 packets transmitted, 0 received, 100% packet loss, time 0ms

<!--more-->

We can see that &#8220;torrent-finder.com&#8221; domain currently resolves to the &#8220;74.81.170.110&#8221; IP address.

We know this is the incorrect IP as visiting [74.81.170.110](http://74.81.170.110/) in your browser beings up the &#8220;seized&#8221; notice.

So what&#8217;s the real IP? Here&#8217;s how you find out:

First of all you need to [Whois](http://en.wikipedia.org/wiki/Whois) the domain name. There are various ways you can do this, from using a program to sending raw commands to the whois server yourself. In this case we will use a whois website:

  * [torrent-finder.com](http://whoisx.co.uk/torrent-finder.com)

The Whois record should show the following details which we will find useful:

> <pre>Domain servers in listed order:
      NS51.DOMAINCONTROL.COM
      NS52.DOMAINCONTROL.COM
</pre>

Now, here&#8217;s what you do to find the right IP:

> [user@server~]$ nslookup torrent-finder.com NS51.DOMAINCONTROL.COM
  
> Server:         NS51.DOMAINCONTROL.COM
  
> Address:        216.69.185.26#53
> 
> Name:   torrent-finder.com
  
> Address: 208.101.51.57

So, there you have it: the real IP. Let&#8217;s just check that by visiting [208.101.51.57](http://208.101.51.57/) in our browser.

Ah yes, that&#8217;s it, the real site pops up.

Now it&#8217;s up to you. To make life easier for yourself you could now go ahead and add these newly found details to your [hosts file](http://en.wikipedia.org/wiki/Hosts_%28file%29) so you don&#8217;t have to look them up again.

**It doesn&#8217;t work!?**

Unfortunately, this doesn&#8217;t work for every domain as &#8220;ICE&#8221; seem to have changed some domains (eg: cartoon77.com) to have NS1.SEIZEDSERVERS.COM and NS2.SEIZEDSERVERS.COM as the name servers.

A little set back, however [a little fishing on Google](http://www.google.co.uk/search?q=cartoon77.com+dns) and you will soon come across the correct name servers.

> [user@server ~]$ nslookup cartoon77.com NS1.DNSPOD.NET
  
> Server:         NS1.DNSPOD.NET
  
> Address:        121.12.116.83#53
> 
> Name:   cartoon77.com
  
> Address: 174.137.55.5

Again, that&#8217;s the real IP. However, with this one you&#8217;ll have to add it into your [hosts file](http://en.wikipedia.org/wiki/Hosts_%28file%29) for this to work, which should look like this, for example:

> 174.137.55.5 cartoon77.com
  
> 174.137.55.5 www.cartoon77.com

Hey presto! Get to your _favorite_ seized sites in a couple of clicks.

Enjoy!