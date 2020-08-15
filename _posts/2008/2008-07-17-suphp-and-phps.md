---
id: 214
title: suPHP and .phps PHP code highlighting support
date: 2008-07-17T12:27:12+00:00
author: admin

guid: http://wade.be/?p=214
permalink: /suphp-and-phps/
categories:
  - Sysadmin
tags:
  - Apache
---
<p class="lead">
  Today a user on one of my web servers asked me why .phps files would only download and not show the highlighted PHP code as expected.
</p>

This is usually done by adding the following to your &#8220;httpd.conf&#8221;&#8230;

> AddType &#8216;application/x-httpd-php-source' .phps

We use the cPanel web hosting control panel and to improve security [cPanel recommend using suPHP](http://www.cpanel.net/support/docs/ea/ea3/ea3php_hardening_php.html), which allows PHP scripts to run as a user rather than &#8220;nobody&#8221;.

This means that adding the above line to &#8220;httpd.conf&#8221; [does not work with suPHP](http://lists.marsching.com/pipermail/suphp/2005-January/000638.html).

So what can be done?

<!--more-->

The official word is located in the [suPHP FAQ](http://www.suphp.org/FAQ.html), which says:

>  **Does suPHP support code highlighting by using the &#8220;.phps&#8221; extension?**
> 
> suPHP itself has no support for code highlighting. The main reason is that PHP-CGI does not support any input parameter to activate code highlighting. However there is a solution based on a small PHP script and some rewrite rules. You can find the discussion at <http://forums.macosxhints.com/archive/index.php/t-23595.html>.

So I decided to checkout the suggested link.

I noticed that even though the FAQ suggested using rewrite rules, the forum did not provide any kind of working solution.

Using the PHP code supplied, and a bit of rewrite ingenuity we can get this working as expected.

First, create a file called &#8220;phpsource.php&#8221;, in this file paste the following code:

> <?php
  
> if (substr($\_GET[&#8216;file'],strpos($\_GET[&#8216;file'],'.')) == &#8216;.phps') {
  
> highlight\_file($\_GET[&#8216;file']);
  
> }
  
> ?>

Then, in your &#8220;.htaccess&#8221;, paste the following code:

> RewriteRule ^(.+\.phps)$ phpsource.php?file=$1 [L]
> 
> _Note: If you don't already have rewrites turned on_ _in your &#8220;.htaccess&#8221; file,_ _you will also need the line &#8220;RewriteEngine On&#8221; at the top._

What this will do is pass all &#8220;.phps&#8221; files through your &#8220;phpsource.php&#8221; script, and output a highlighted version.

The benefits of this solution is that it's portable (will work on any server); it won't(/shouldn't) break when you upgrade apache or PHP; it's pretty secure as it'll only handle .phps files, as expected; it's quick and effective.