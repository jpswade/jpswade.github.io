---
id: 122
title: The requested URL /cpanel was not found on this server
date: 2007-06-11T15:40:43+00:00
author: admin
layout: post
guid: http://wade.be/posts/the-requested-url-cpanel-was-not-found-on-this-server
permalink: /the-requested-url-cpanel-was-not-found-on-this-server/
categories:
  - Sysadmin
tags:
  - Linux
---
<p class="lead">
  If you run cPanel servers, then you may at some point experience this issue.
</p>

The problem is when you attempt to visit &#8220;http://server.example.com/cpanel&#8221; and you get the following message or similar:

> The requested URL /cpanel was not found on this server.
> 
> The requested URL /whm was not found on this server.

<!--more-->To fix this, you must add the following to your httpd.conf (/usr/local/apache/conf/httpd.conf):

> <pre>ErrorDocument 400 /400.shtml
ErrorDocument 401 /401.shtml
ErrorDocument 403 /403.shtml
ErrorDocument 404 /404.shtml
ErrorDocument 500 /500.shtml
ScriptAlias /cgi-sys/ /usr/local/cpanel/cgi-sys/
Alias /sys_cpanel/ /usr/local/cpanel/sys_cpanel/
Alias /java-sys/ /usr/local/cpanel/java-sys/
Alias /img-sys/ /usr/local/cpanel/img-sys/
Alias /akopia/ /usr/local/cpanel/3rdparty/interchange/share/akopia/
Alias /neo-images/ /usr/local/cpanel/base/neomail/neo-images/
ScriptAliasMatch ^/cpanel/(.*) /usr/local/cpanel/cgi-sys/redirect.cgi
ScriptAlias /cpanel /usr/local/cpanel/cgi-sys/redirect.cgi
ScriptAlias /whm /usr/local/cpanel/cgi-sys/whmredirect.cgi
ScriptAlias /securewhm /usr/local/cpanel/cgi-sys/swhmredirect.cgi
ScriptAlias /webmail /usr/local/cpanel/cgi-sys/wredirect.cgi
ScriptAliasMatch ^/webmail/(.*) /usr/local/cpanel/cgi-sys/wredirect.cgi
ScriptAliasMatch ^/kpanel/(.*) /usr/local/cpanel/cgi-sys/redirect.cgi
ScriptAlias /controlpanel /usr/local/cpanel/cgi-sys/redirect.cgi
ScriptAlias /securecontrolpanel /usr/local/cpanel/cgi-sys/sredirect.cgi
Alias /mailman/archives/ /usr/local/cpanel/3rdparty/mailman/archives/public/
ScriptAlias /mailman/ /usr/local/cpanel/3rdparty/mailman/cgi-bin/
Alias /pipermail/ /usr/local/cpanel/3rdparty/mailman/archives/public/
Alias /interchange/ /usr/local/cpanel/3rdparty/interchange/share/interchange/
Alias /interchange-5/ /usr/local/cpanel/3rdparty/interchange/share/interchange-5/</pre>

Add this anywhere in the httpd.conf, outside of any <VirtualHost> tags.

Restart apache (service httpd restart), and bingo!