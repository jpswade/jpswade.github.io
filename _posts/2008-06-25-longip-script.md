---
id: 210
title: longip perl script
date: 2008-06-25T23:52:29+00:00
author: admin
layout: post
guid: http://jpswade.github.io/?p=210
permalink: /longip-script/
aktt_notify_twitter:
  - yes
categories:
  - Development
tags:
  - FreeBSD
  - Linux
---
<p class="lead">
  I wanted to create a script that would convert a normal IP address to a long IP, just like mIRC Script&#8217;s $longip alias.
</p>

> <span style="font-weight: bold; font-size: 9pt; font-family: 'Verdana'; color: #00007f;">$longip(address)</span>
> 
> <span style="color: #000000;">Converts an IP address into a long value and vice-versa.</span>
> 
> <span style="color: #000000;">$longip(158.152.50.239)  returns 2660774639</span>
> 
> <span style="color: #000000;">$longip(2660774639)       returns 158.152.50.239</span>

What I was originally trying to do was increase an IP by 1, but due to the octets only allowing up to 255, this became increasingly difficult to do.

What I decided to do in the end was convert the IP to a &#8220;longip&#8221; then increase it by 1, then convert the IP BACK to normal IP.

This required a way to convert an IP to and from longIP, I was told it could be done purely using shell script, here&#8217;s what I did&#8230;

<!--more-->

I decided that shell script wasn&#8217;t powerful enough for what I wanted, and that I could do it easier in perl, this is the result:

> #!/usr/bin/perl
> 
> \# longip by HM2K 2008 (Updated: 17/01/08)
> 
> \# Description: Converts (Short) IPs to Long Ips and visa versa.
  
> \# Usage: ./longip.pl <ip>
> 
> use warnings;
  
> use strict;
  
> use Socket;
> 
> sub longip {
  
> my $input=shift;
  
> if ($input =~ /\d+\.\d+\.\d+\.\d+/) { return ip2long($input); }
  
> else { return long2ip($input); }
  
> }
> 
> sub ip2long { return unpack(&#8220;l\*&#8221;, pack(&#8220;l\*&#8221;, unpack(&#8220;N*&#8221;, inet_aton(shift)))); }
> 
> sub long2ip { return inet_ntoa(pack(&#8220;N*&#8221;, shift)); }
> 
> print longip(shift);

Thanks for the assistance from #perlhelp (EFnet).

It&#8217;s also worth noting that cls (EFnet) created a shell script version called &#8220;ipconv.sh&#8221;, which is about 50 long lines in total (too long for such a simple task imo), however it didn&#8217;t convert how I wanted. If you ask him (or me) nicely, you may receive a copy.

Update: I also found a version of &#8220;[ipconv.sh](http://libconnect.cvs.sourceforge.net/viewvc/*checkout*/libconnect/libconnect-cvs/doc/tools/ipconv.sh?revision=1.1.1.1&content-type=text%2Fplain)&#8221; in libconnect.

Enjoy!