---
id: 3193
title: What is my IP?
date: 2011-08-09T08:48:14+00:00
author: James Wade
layout: post
guid: http://wade.be/?p=3193
permalink: /what-is-my-ip/
aktt_notify_twitter:
  - yes
aktt_tweeted:
  - 1
categories:
  - Development
  - Internet
tags:
  - api
  - ip address
  - php
  - regex
  - what is my ip
---
<p class="lead">
  <img class="alignright size-medium wp-image-3199" title="500px-Coffee_IP.svg" src="http://wade.be/upload/500px-Coffee_IP.svg_-300x225.png" alt="" width="300" height="225" srcset="http://wade.be/upload/500px-Coffee_IP.svg_-300x225.png 300w, http://wade.be/upload/500px-Coffee_IP.svg_.png 500w" sizes="(max-width: 300px) 100vw, 300px" />An <a href="http://en.wikipedia.org/wiki/IP_address">IP address</a> is a unique number which identifies a machine on a network.
</p>

On the Internet IP addresses are allocated in blocks to ISPs in each country by regional registries, making it possible to identify which country an IP address originated in.

Often, if you are connected to the Internet behind a router, you share an online IP address with everyone else on your local area network (LAN).

Sometimes you need to know your external IP address and using something like [ipconfig](http://en.wikipedia.org/wiki/Ipconfig) will only return your LAN IP address (something like 192.168.0.1).

<!--more-->That is why many &#8220;what is my ip&#8221; websites exist, making it easy for you to lookup your external IP address.

My favourite IP lookup service has been for a long time one run by NASDAQ-100 content delivery specialists &#8220;Akamai Technologies&#8221;:

  * [whatismyip.akamai.com](http://whatismyip.akamai.com/)

It&#8217;s brilliant in its simplicity but it&#8217;s not very pretty.

We decided to do something different. We made a pretty &#8220;What is my IP address?&#8221; lookup:

  * [ip.deaduseful.com](http://ip.deaduseful.com/)

Part of its beauty is that the audience its aimed at is able to quickly read and understand the information at a glance, without any prompts. While those who don&#8217;t understand it can marvel at its pretty form and ponder over its usefulness.

The other part of its beauty is that it&#8217;s _highly [parsable](http://en.wiktionary.org/wiki/parsable)_.

It&#8217;s easy to parse the IP address, mainly because the presentation (CSS) is separate from the markup (HTML), but also because of the headers.

Here&#8217;s a short demonstration to show how you can use the headers to get the IP address using this tool:

> <?php $h=get_headers(&#8216;http://ip.deaduseful.com&#8217;,1); echo trim($h[&#8216;Location&#8217;],&#8217;/&#8217;); ?>

However, this method isn&#8217;t very portable, so may not be suitable if you&#8217;re checking against multiple sources at once.

So instead, we can also demonstrate using a simple regular expression and a function that can get http contents (such as file\_get\_contents() in PHP).

> <?php echo preg\_replace(&#8216;/.\*?(\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}).\*/s&#8217;,&#8217;$1&#8242;,file\_get_contents(&#8216;http://ip.deaduseful.com&#8217;));?>

The brilliance in this little snippet is that it will work with _any_ useful &#8220;What is my IP?&#8221; lookup website.

So as you can see, it&#8217;s really easy to work with as a pretty API as well.

Beyond the IP address, you only need to look at the source code to understand that it&#8217;s easy to parse the other details.

I hope you found this useful!