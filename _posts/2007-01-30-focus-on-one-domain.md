---
id: 54
title: Focus on one domain
date: 2007-01-30T01:02:13+00:00
author: admin
layout: post
guid: http://wade.be/posts/focus-on-one-domain
permalink: /focus-on-one-domain/
tags:
  - Apache
  - SEO
---
<p class="lead">
  <strong>Why you should be focusing on one domain name for one site</strong>
</p>

Often you will find yourself buying a domain for your project (eg: example.com), however these days to secure the brand you have to buy all the associated domains (eg: example.net, example.org, example.co.uk, example.info, etc).

I then find that visitors will end up entering the sites at different points from different domains, depending on how they find it, or what they have been told.

<!--more-->The problem with this is its confusing, and its confusing for the user. The solution is to decide on one domain name, and focus on that, then simply redirect all traffic from the other domains to your main domain name.

This will also help enforce your brand name by ensuring the user always gets redirected to the correct domain, even if they visit the others by mistake.

In addition to this, Google states &#8220;[Don&#8217;t create multiple pages, subdomains, or domains with substantially duplicate content.](http://www.google.com/support/webmasters/bin/answer.py?answer=35769)&#8220;, therefore by redirecting traffic to one domain, rather than having duplicates you stand more chance of your domain not being marked as &#8220;bad&#8221; by search engines. (Also see [What&#8217;s a preferred domain?](http://www.google.com/support/webmasters/bin/answer.py?answer=44231))

On a very similar note, another common problem is the &#8220;www.&#8221; prefix on domains, sometimes people include when visiting a URL, other times they do not. The problem with this is that &#8220;www.example.com&#8221; is considered an entirely different domain than &#8220;example.com&#8221; by search engines. By redirecting traffic that is NONE &#8220;www.example.com&#8221; we can still continue our focus and maintain our brand name.

**How?**

One method is using [301 redirects](http://www.google.com/support/webmasters/bin/answer.py?hl=en&answer=93633) to redirect from other domains, to your main one.

We can do this by using mod\_rewrite for Apache or ISAPI\_Rewrite for IIS.

**Apache mod_rewrite (.htaccess)**

> RewriteEngine On
> 
> RewriteCond %{HTTP_HOST} !^www\.example\.com$ [NC]
  
> RewriteRule ^(.*)$ http://www.example.com/$1 [R=301,QSA,L]

_Note: The QSA flag will append the query string to the rewritten URL._

**IIS mod rewrite using ISAPI filter (mod_rewrite.ini)**

> RewriteCond Host: !^www\.example\.com
> 
> RewriteRule ^/(.*)$ http://www\.example\.com/$1 [I,RP]

_Note: Some find ^(.\*)$ works, others find ^/(.\*)$ works. I&#8217;ll let you decide which to use._