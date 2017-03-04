---
id: 646
title: Replace strings MySQL
date: 2011-03-23T11:23:26+00:00
author: admin
layout: post
guid: http://wade.be/?p=646
permalink: /replace-strings-in-mysq/
aktt_notify_twitter:
  - yes
aktt_tweeted:
  - 1
categories:
  - Development
tags:
  - drupal
  - mysql
  - replace
  - Wordpress
---
<p class="lead">
  If you ever need to make big changes to your site, such as moving directory or changing the domain name you'll know that you'll have to make changes to the database for that to take affect.
</p>

<!--more-->

First of all, before you make any adhoc changes like these to your database, ALWAYS take a backup.

Many of us use wordpress, and what you sometimes find is that if you move your blog into a subdirectory your content (such as images) will not point to the right place.

So, here's what I did to fix that:

> UPDATE wp\_posts SET post\_content = REPLACE(post_content, &#8216;../wp-content/', &#8216;/blog/wp-content/');

This will update the wp\_posts table, changing all occurrences of &#8220;../wp-content/&#8221; to the new &#8220;/blog/wp-content/&#8221; folder in the post\_content field.

Pretty nifty.

If you're using Drupal, and have changed the domain of your site, here's what you need to do:

> UPDATE node_revisions SET body = REPLACE(body, &#8216;old.example.com', &#8216;new.example.com');
> 
> UPDATE node_revisions SET teaser = REPLACE(teaser, &#8216;old.example.com', &#8216;new.example.com');

Obviously &#8220;old.example.com&#8221; is your old domain, and &#8220;new.example.com&#8221; is your new domain.

If you do change the domain of your site, you should also put a [301 URL redirect](http://en.wikipedia.org/wiki/URL_redirection) in place too.

This method of replacing strings in MySQL can also be useful if you are changing the directory of your Drupal installation.

If you need any help, just drop me a comment below.