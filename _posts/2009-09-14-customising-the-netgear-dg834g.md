---
id: 212
title: Customising the Netgear DG834G
date: 2009-09-14T20:35:08+00:00
author: admin
layout: post
guid: http://jpswade.github.io/?p=212
permalink: /customising-the-netgear-dg834g/
aktt_notify_twitter:
  - yes
aktt_tweeted:
  - 1
categories:
  - Hardware
  - Internet
  - Sysadmin
tags:
  - customising
  - dg834g
  - hacking
  - netgear
  - router
---
<p class="lead">
  I started writing this article a long time ago, however after researching the <a href="http://en.wikipedia.org/wiki/Netgear_DG834G">DG834G</a> I soon found many more articles and sites dedicated to hacking or customising the <a href="http://www.netgear.com/Products/RoutersandGateways/WirelessGRouters/DG834G.aspx">Netgear DG834G router</a>.
</p>

Recently I have discovered that many of these sources are now going offline. The thing is about this router, even though it has been around since at least 2004, is that it is still in use and more importantly, still available to purchase, yet [hardly changed in price](http://www.reddit.com/r/technology/comments/7rg8k/how_come_laptops_are_vastly_more_powerful_and/).

So, the purpose of this article is to provide you with information on how to customise your Netgear DG834G router. I hope you find it useful.

<!--more-->

The web interface provides little scope for customization, however it is possible to put the router in a debug mode.

To enable debug mode, you simply visit the following URL in your web browser:

> <http://192.168.0.1/setup.cgi?todo=debug>
> 
> _Note: Where &#8220;192.168.0.1&#8221; is, put your router&#8217;s IP address._

This will allow users on the LAN to connect to the router via telnet to the embedded Linux system running [BusyBox](http://www.busybox.net/).

> <telnet://192.168.0.1>
> 
> _Note: Again, where &#8220;192.168.0.1&#8221; is, put your router&#8217;s IP address._

If that isn&#8217;t enough, the more adventurous can replace the built-in firmware with the customer firmware such as [OpenWrt](http://openwrt.org/) or [openDG834](https://gna.org/projects/opendg).

I have one of these routers running at home myself, however I had to configure it in a fairly unique way to pass all handling to my server (which now acts like a router), because I could not figure out a native way to forward from the external IP on one port (eg: 8080) to an internal IP on another port (eg: 80). I also experienced a problem when using the latest firmware from Netgear where I was [unable to connect](http://www.linuxquestions.org/questions/linux-networking-3/home-network-gateway-and-accessing-sshd-from-outside-477242/) remotely to anything within my network.

To overcome these issues I&#8217;m considering either reconfiguring my router using a custom firmware or buying a [Vigor 2820 router](http://clkuk.tradedoubler.com/click?p(50662)a(1634641)g(16472718)url(http://www.dabs.com/learn-more/networking-and-communication/draytek--what-happens-if-your-broadband-goes-down--5281.html)) for [when broadband fails](http://www.fixr.co.uk/2009/06/03/when-broadband-fails/). Either way means downtime, which is something I like to avoid.

If you have any useful information, please feel free to add it as a comment on this post. If you have a complex question, you could try the [Netgear forums for this router](http://forum1.netgear.com/forumdisplay.php?f=34).

There&#8217;s loads more information out there, more than you probably care to investigate, much of it can now only be found via the web archive, so I hope you find this useful.

Resources:

  * [The Little DG834G Page](http://web.archive.org/web/20080119003657/http://www.suburbia.com.au/%7Edan/) (archived)
  * [Hacking the Netgear DG834G](http://web.archive.org/web/20080116194411/http://www.1337h4x0r5.org/1/) (archived)
  * [walliteam.com hacking the DG834 wiki](http://web.archive.org/web/20080129095528/http://walliteam.com/dg834/) (archived)
  * [Mike&#8217;s DG834 Firmware Page](http://web.archive.org/web/20070124233723/http://members.iinet.net.au/%7Emlanagan/) (archived)
  * [OpenWrtDocs/Hardware/Netgear/DG834GT](http://oldwiki.openwrt.org/OpenWrtDocs%282f%29Hardware%282f%29Netgear%282f%29DG834GT.html) (old wiki)
  * [HOW TO use the Netgear DG834G ADSL Modem/Router](http://www.nat32.com/nat32e/htm/dg834g.htm)
  * [Netgear DG834v2 Hacking Page](http://doomed.profusehost.net/dg834.php?page=info)
  * [Asinine Monkey&#8217;s DG834GT Page](http://www.asininemonkey.com/articles/files/tag-netgear.php)
  * [OpenWRT Netgear DG834G Forum](http://forum.openwrt.org/viewforum.php?id=3) (Archive &#8211; read only)
  * [DGTeam unofficial custom firmware](http://dgteam.ilbello.com/)
  * [Steps to Flashing a Sky Netgear DG834GT Router](http://www.skyuser.co.uk/forum/sky-router/18286-flashing-new-sky-netgear-dg834gt-router.html#post113504)

_If you do find this article useful and want more information, let me know and I&#8217;ll see what I can do! Thanks!_

<div id="_mcePaste" style="overflow: hidden; position: absolute; left: -10000px; top: 462px; width: 1px; height: 1px;">
  http://www.linuxquestions.org/questions/linux-networking-3/home-network-gateway-and-accessing-sshd-from-outside-477242/
</div>