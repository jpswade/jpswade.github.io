---
id: 53
title: Friendly URLs (revisited)
date: 2008-06-16T12:02:59+00:00
author: admin
layout: post
guid: /friendly-urls
permalink: /friendly-urls/
categories:
  - Internet
tags:
  - Apache
  - SEO
---
<p class="lead">
  <strong>Turn dynamic URLs into friendly URLs</strong>
</p>

I&#8217;m sure we&#8217;re all familiar with [URLs](http://en.wikipedia.org/wiki/URL) that look like this:

> http://www.example.com/?nav=page

These type of URLs aren&#8217;t particularly &#8220;friendly&#8221;, they are known as dynamic URLs. As a rule of thumb search engines such as Google don&#8217;t like them as much as &#8220;static URLs&#8221;.

However, Google has recently released an article on this very subject entitled [Dynamic URLs vs. static URLs](http://googlewebmastercentral.blogspot.com/2008/09/dynamic-urls-vs-static-urls.html), I recommend you give it a read so you fully understand what we&#8217;re talking about.

[<!--more-->Google](http://www.google.co.uk/intl/en/webmasters/guidelines.html) suggests that many search engine crawlers do not like dynamic URLs as much as static URLs.

A &#8220;static&#8221; or &#8220;friendly&#8221; version of the above URL could be as follows:

> http://www.example.com/page.html

Here&#8217;s how it&#8217;s done&#8230;

**Solution 1**

Apache&#8217;s [mod_rewrite](http://httpd.apache.org/docs/1.3/mod/mod_rewrite.html) can be easily used via a file called &#8220;.htaccess&#8221; to turn dynamic urls into friendly urls.

Here is an example of how it&#8217;s done:

> #Turn on the Rewrite Engine
  
> RewriteEngine on
  
> #Set the base path
  
> RewriteBase /
  
> #Check that the lookup isn&#8217;t an existing file
  
> RewriteCond %{REQUEST_FILENAME} !-f
  
> #Check that the lookup isn&#8217;t an existing directory
  
> RewriteCond %{REQUEST_FILENAME} !-d
  
> #Check that the file isn&#8217;t index.php (avoid looping)
  
> RewriteCond %{REQUEST_URI} !^index\.php$
  
> #Force all .html lookups to the index file
  
> RewriteRule (.+)*\.html index.php?nav=$1 [QSA,L]
  
> #Note: QSA=query string append;L=Last, no more rules

This will rewrite all paths ending in &#8220;.html&#8221; to your index file.

From there, it&#8217;s simply a case of tailoring the rewrite to your requirements.

Checkout the [mod_rewrite cheat sheet](http://www.ilovejackdaniels.com/mod_rewrite_cheat_sheet.png) for more help on rewrites.

**Solution 2**

If you ARE using PHP, a better way might be to just hand over ALL the path information to your &#8220;index.php&#8221; and handle it from there.

The rewrite to do that looks something like this:

> RewriteEngine on
  
> RewriteBase /
  
> RewriteCond %{REQUEST_FILENAME} !-f
  
> RewriteCond %{REQUEST_FILENAME} !-d
  
> RewriteCond %{REQUEST_URI} !^index\.php$
  
> RewriteRule ^(.+)$ index.php/$1 [QSA,L]

As per above this will only rewrite paths that don&#8217;t exist.

It doesn&#8217;t work out any slower than the above solution, as either way you&#8217;re passing it to PHP, and rewrites are fairly slow to begin with.

In your &#8220;index.php&#8221;, you can parse $\_SERVER\[&#8216;PATH\_INFO&#8217;\] (or $\_SERVER[&#8216;ORIG\_PATH_INFO&#8217;]) for the path information. It may be quicker and easier to [explode](http://www.php.net/explode) the path by &#8220;/&#8221;, and find the information you need using a [foreach](http://www.php.net/foreach) rather than using regex in [preg_match](http://www.php.net/preg_match).