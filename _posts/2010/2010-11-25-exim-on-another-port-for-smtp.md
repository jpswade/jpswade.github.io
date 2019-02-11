---
id: 661
title: exim on another port for smtp
date: 2010-11-25T14:58:35+00:00
author: admin
layout: post
guid: http://wade.be/?p=661
permalink: /exim-on-another-port-for-smtp/
aktt_notify_twitter:
  - yes
aktt_tweeted:
  - 1
categories:
  - Sysadmin
tags:
  - 25
  - 587
  - exim
  - smtp
  - three
---
<p class="lead">
  When a business I know had trouble with their broadband I was fortunately able to get them back online by using the redundant mobile broadband on the router.
</p>

The only issue then was that they [couldn't send email on port 25 through the Three mobile network](http://www.three.co.uk/Help_Support/Mobile_Broadband_Help).

The solution is to change the outgoing SMTP from port 25 to port 587.

Because I keep forgetting myself, here's how you do it on cPanel:

<!--more-->You can run Exim on another port by going to the 

_Service Manager_ in WebHost Manager and then enabling _exim on another port_ and choosing the port number.

If it's still not working, your firewall (iptables) is probably blocking it, so here's what you need to do:

First find the iptables for port 25:

> root@server [/]# iptables-save | grep &#8220;port 25&#8221;
  
> -A INPUT -i venet0 -p tcp -m tcp &#8211;dport 25 -j ACCEPT
  
> -A INPUT -i venet0 -p tcp -m tcp &#8211;sport 25 -j ACCEPT
  
> -A OUTPUT -o venet0 -p tcp -m tcp &#8211;sport 25 -j ACCEPT
  
> -A OUTPUT -o venet0 -p tcp -m tcp &#8211;dport 25 -j ACCEPT

Once you have that, copy each line and replace 25 with 587 and enter those in, like so:

> iptables -A INPUT -i venet0 -p tcp -m tcp &#8211;dport 587 -j ACCEPT
  
> iptables -A INPUT -i venet0 -p tcp -m tcp &#8211;sport 587 -j ACCEPT
  
> iptables -A OUTPUT -o venet0 -p tcp -m tcp &#8211;sport 587 -j ACCEPT
  
> iptables -A OUTPUT -o venet0 -p tcp -m tcp &#8211;dport 587 -j ACCEPT

Finally, you should check it works by using telnet from another machine:

> [user@server2~]$ telnet mail.server.example.com 587
  
> Trying 1.2.3.4&#8230;
  
> Connected to mail.server.example.com (1.2.3.4).
  
> Escape character is &#8216;^]'.
  
> 220-server.example.com ESMTP Exim 4.69 #1 Fri, 26 Nov 2010 16:54:07 +0000
  
> 220-We do not authorize the use of this system to transport unsolicited,
  
> 220 and/or bulk e-mail.

If you see a message similar to the above it has worked, so now you can save iptables and restart the service:

  * iptables-save
  * service iptables restart

Done!