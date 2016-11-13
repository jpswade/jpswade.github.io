---
id: 149
title: Alternative name servers
date: 2010-01-15T13:10:03+00:00
author: admin
layout: post
guid: http://www.devotedit.com/?p=149
permalink: /2010/01/15/alternative-name-servers/
aktt_notify_twitter:
  - 'no'
categories:
  - Internet
tags:
  - 4.2.2.1
  - 4.2.2.2
  - dns
  - dns servers
  - isp
  - name servers
  - nameserver
  - opendns
  - public nameservers
---
If you&#8217;ve ever had a problem with your ISPs **DNS name servers** then you&#8217;ll probably find this very useful.

The domain name system (DNS) is a way of resolving a host name to an ip address.

> * Dns resolved example.com to 208.77.188.166

To do this, you need DNS servers or name servers, which are usually provided by your Internet Service Provider (ISP).

Sometimes the domain name servers provided by your ISP go down or get overloaded and stop responding.

If your computer is unable to resolve a domain name to an IP address, generally this means that you will be unable to browse the internet. Very annoying, I&#8217;m sure you&#8217;ll agree.

So what can I do if my ISPs name servers go down? Use alternative name servers often known as **public nameservers** or **public dns servers**.

<!--more-->

There are a few public name servers out there, you just have to know where to look.

Fortunately for you, I&#8217;ve made a list for you&#8230;

  * [Genuity](http://www.genuity.com/) 
      * 4.2.2.1 (vnsc-pri.sys.gtei.net)
      * 4.2.2.2 (vnsc-bak.sys.gtei.net)
      * 4.2.2.3 (vnsc-lc.sys.gtei.net)
      * 4.2.2.4 (vnsc-pri-dsl.genuity.net)
      * 4.2.2.5 (vnsc-bak-dsl.genuity.net)
      * 4.2.2.6 (vnsc-lc-dsl.genuity.net)
  * [Level3](http://www.level3.com/) 
      * 209.244.0.3 (resolver1.level3.net)
      * 209.244.0.4 (resolver2.level3.net)
  * [OpenDNS](http://www.opendns.com/) 
      * 208.67.222.222 (resolver1.opendns.com)
      * 208.67.220.220 (resolver2.opendns.com)
  * [dnsadvantage](http://www.dnsadvantage.com/) 
      * 156.154.70.1 (rdns1.ultradns.net)
      * 156.154.71.1 (rdns2.ultradns.net)
  * [Google](http://code.google.com/speed/public-dns/docs/using.html) 
      * 8.8.8.8 (google-public-dns-a.google.com)
      * 8.8.4.4 (google-public-dns-b.google.com)
  * [DynDNS Internet Guide](http://www.dyndns.com/services/dynguide/readme.html) 
      * 216.146.35.35 (resolver1.dyndnsinternetguide.com)
      * 216.146.36.36 (resolver2.dyndnsinternetguide.com)

**How do I change my DNS settings?**

[_OpenDNS_](https://store.opendns.com/setup/) provides guides on how to change your nameservers for Windows, Mac, Linux or any other operating system. They also provide instructions on how to change the DNS server settings at your router.

You can use their guides to use any of the above IPs as your name servers.

Alternatively, Google provide a [usage guide](http://code.google.com/speed/public-dns/images/using.pdf) (pdf) for their Public DNS service.

**What are the benefits?**

The main benefit for me is reliability. They are an ideal alternative if you are having trouble with your own name servers.

The other main benefit is speed. This is persistent across all of the above providers, claiming that by improving DNS speed (using [Anycast](http://en.wikipedia.org/wiki/Anycast)), websites will load quicker, which in most cases is true.

OpenDNS offers bad website blocking, statistics and a customised solutions. Some offer a similar thing, others do not. Be sure to check them out and use the one that suits you the most.

You may also want to use it if your ISP is [hijacking your DNS](http://www.theregister.co.uk/2009/08/17/dzuiba_virgin_media_opendns/).

**What can go wrong?**

Nothing. It&#8217;s unlikely for it to go wrong, and if it does, there&#8217;s plenty of support out there for these services or you can very easily just revert back by telling your system to automatically choose your name servers for you.