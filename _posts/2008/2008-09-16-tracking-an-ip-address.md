---
id: 231
title: Tracking an IP address
date: 2008-09-16T15:51:53+00:00
author: admin

guid: http://wade.be/?p=231
permalink: /tracking-an-ip-address/
sandpaper:
  - 1
  - 1
categories:
  - Development
  - Sysadmin
---
<p class="lead">
  In my job I have to manage lots of machines all over the place. Many of them are on windows.
</p>

I often find tracking IP addresses to be a difficult task if they do not have a static IP address.

So what can be done to keep track of an IP address?

<!--more-->

Generally if I have no reliable solution setup their end, I end up asking them to visit one of the many &#8220;what is my IP&#8221; websites, and get them to read &#8220;the big number&#8221;. More often than not they end up on Google some how, and give me a Google IP instead of their own.

Not very reliable.

An idea I came up with was to provide a user with a simple script that would display their IP address in a dialogue window. I made this using a script provided by Microsoft entitled &#8220;[List the Contents of a Web Page](http://www.microsoft.com/technet/scriptcenter/scripts/misc/intnet/default.mspx?mfr=true)&#8220;.

> url=&#8221;http://whatismyip.akamai.com/&#8221;
  
> Set objHTTP = CreateObject(&#8220;MSXML2.XMLHTTP&#8221;)
  
> Call objHTTP.Open(&#8220;GET&#8221;, url, FALSE)
  
> objHTTP.Send
  
> WScript.Echo(objHTTP.ResponseText)

Simply place this code into a file named myip.vbs and hand it over to your user. When they run it, it will display their IP address on their screen in a little dialogue box.

You will notice that I have used &#8220;whatismyip.akamai.com&#8221; as it is probably a lot more reliable than these other &#8220;what is my IP address&#8221; sites. After all [Akamai](http://en.wikipedia.org/wiki/Akamai_Technologies) is a content delivery provider for Microsoft, so you know it's not going anywhere soon.

These days many broadband ISPs offer the ability to change your IP address to a static one for free of charge, or at least the ones I recommend do.

If they don't, or if you prefer using a dynamic IP address many routers, (especially the [netgear](http://kbserver.netgear.com/kb_web_files/n101279.asp) range) are compatible with the [DynDNS](http://www.dyndns.org/) service.

DynDNS will give you a hostname (eg: you.dnsalias.com) which you can use to match up to your IP address, and update it accordingly each time your IP changes.

Of course DynDNS isn't the only service of this kind, there's plenty of other [Dynamic DNS services](http://www.dmoz.org/Computers/Internet/Protocols/DNS/DNS_Providers/Dynamic_DNS/) out there. [CJB.net](http://www.cjb.net/), [No-IP](http://www.no-ip.com/) and [ZoneEdit](http://www.zoneedit.com/) are all well established and reliable services.

The [CJB.net dynIP page](http://www.cjb.net/cgi-bin/dynip.cgi) even offers a list of programs to automatically update your CJB.NET address when your IP address changes.

A similar script to the above can be used to update Dynamic DNS services&#8230;

> &#8216; Uncomment this line to use with CJB.net
  
> &#8216; url=&#8221;http://www.cjb.net/cgi-bin/dynip.cgi?username=[username]&password=[password]&#8221;
  
> &#8216; Uncomment this line to use with DynDNS.org
  
> &#8216; url=&#8221;http://[username]:[password]@members.dyndns.org/nic/update?hostname=[yourhostname]&#8221;
  
> Set objHTTP = CreateObject(&#8220;MSXML2.XMLHTTP&#8221;)
  
> Call objHTTP.Open(&#8220;GET&#8221;, url, FALSE)
  
> objHTTP.Send
  
> &#8216; Uncomment this line to display the response (debug only)
  
> &#8216; WScript.Echo(objHTTP.ResponseText)

As you can see you have a choice whether you wish to use cjb.net's URL or dyndns's URL, or you can specify your own. You will also notice that the &#8220;echo&#8221; is commented out so that the update is silent, however you may wish to use this if you're having problems getting it working so you can display the error response.

Now you can set this script in your scheduler to run every few hours to ensure the IP is up-to-date.

You can adopt these scripting principle to any scripting language, including [mIRC](http://wade.be/mirc/).

In the past I have used software such as [DynSite](http://www.noeld.com/dynsite.asp), however I can't justify paying for something that is so simple to do for free.