---
id: 110
title: Creating subdomains from directories using mod_rewrite in Apache .htaccess
date: 2007-03-16T00:25:32+00:00
author: admin
layout: post
guid: /creating-subdomains-from-directories-using-mod_rewrite-in-apache-htaccess
permalink: /creating-subdomains-from-directories-using-mod_rewrite-in-apache-htaccess/
categories:
  - General
tags:
  - Apache
  - SEO
---
<p class="lead">
  The idea was to have the ability to create unlimited subdomains simply by creating an appropreate directory for it in your html root directory.
</p>

Since most people don&#8217;t have direct access to their httpd.conf, the obvious solution was to create a method using mod_rewrite within &#8220;.htaccess&#8221;. This also allowed it to be setup very easily and quickly.

<!--more-->I have no immediate use for this solution, however I know it will come in very handy in the future.

Someone I know was trying to figure this out earlier today, so I took it upon myself to figure out how to work out a solution for this problem.

After much discussion, we came about the following solution&#8230;

> #Grab the subdomain from the domain
  
> RewriteCond %{HTTP_HOST} ^([^.]+).example.org$
  
> #Make sure the subdomain is not www or example
  
> RewriteCond %{1} !^(www|example)$
  
> #Check if the directory actually exists before we go there
  
> RewriteCond /home/example/public_html/%1 -d
  
> #This stops it from looping
  
> RewriteCond %{REQUEST\_FILENAME} !^/home/example/public\_html/
  
> #Finally, this is the actual rewrite
  
> RewriteRule (.*) /home/example/public_html/%1/$1 [Last]

Thanks to all those who helped, I hope this comes in useful to someone.

<span style="text-decoration: line-through;">1136331104</span>