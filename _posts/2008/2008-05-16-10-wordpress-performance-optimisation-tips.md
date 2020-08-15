---
id: 179
title: 10 wordpress performance optimisation tips
date: 2008-05-16T12:40:55+00:00
author: admin

guid: http://wade.be/?p=179
permalink: /10-wordpress-performance-optimisation-tips/
aktt_notify_twitter:
  - yes
categories:
  - Development
tags:
  - Optimisation
  - Wordpress
---
<p class="lead">
  I wanted to prepare my wordpress powered blog for an influx of traffic from social media sites such as reddit.com or digg.com, in case one of my articles got big, so I decided to investigate what could be done to optimise the performance my blog.
</p>

This is the result&#8230;

<!--more-->

  1. Upgrade to the latest version of [WordPress](http://wordpress.org/download/). Each version has more performance improvements. Try using the [WordPress Automated Upgrade](http://techie-buzz.com/wordpress-plugins/wordpress-automatic-upgrade-plugin.html) plugin.
  2. Avoid using lots of large javascript or css files or huge images in your site template or try to [Minify](http://code.google.com/p/minify/) them.
  3. Disable any plugins that you don't use or need.
  4. Enable [WordPress Object Caching](http://codex.wordpress.org/Function_Reference/WP_Cache), and [learn how](http://perishablepress.com/press/2007/12/26/how-to-enable-the-default-wordpress-object-cache/).[](http://perishablepress.com/press/2007/12/26/how-to-enable-the-default-wordpress-object-cache/)
  5. Try [WP-Cache2](http://mnm.uib.es/gallir/wp-cache-2/) or [WP Super Cache](http://ocaoimh.ie/wp-super-cache/) (based on WP-Cache) ideal for large sites, with lots of traffic.
  6. [Optimise your MySQL database tables](http://weblogtoolscollection.com/archives/2005/04/06/optimize-your-database/).
  7. If you're serving lots of images, [offload some](http://codex.wordpress.org/WordPress_Optimization/Offloading) to free image hosting sites such as [flickr](http://www.flickr.com/) or [imageshack](http://imageshack.us/).
  8. Use [Xdebug](http://xdebug.org/) to check if the plugins you are using are causing performance issues. If they are, get rid of them.
  9. [Use Mysql Query Caching](http://www.howtogeek.com/howto/programming/speed-up-your-web-site-with-mysql-query-caching/) to speed up calls to the database.[](http://www.howtogeek.com/howto/programming/speed-up-your-web-site-with-mysql-query-caching/)
 10. Use PHP Opcode Caching such as [eAccelerator](http://eaccelerator.net/).

Also read [how to configure Apache for performance](http://www.howtoforge.com/configuring_apache_for_maximum_performance).