---
id: 3349
title: 'Unable to update nameservers: Nameserver doesn&#8217;t exist at the registry'
date: 2012-05-06T16:28:24+00:00
author: James Wade
layout: post
guid: http://wade.be/?p=3349
permalink: /unable-to-update-nameservers-nameserver-doesnt-exist-at-the-registry/
aktt_notify_twitter:
  - yes
aktt_tweeted:
  - 1
categories:
  - Internet
  - Sysadmin
tags:
  - dns
  - nameservers
  - opensrs
  - tucows
---
<p class="lead">
  If you have domains with TuCows OpenSRS you may be faced with this error when you try and set custom name servers on your domain through the <a href="https://manage.opensrs.net/index.cgi">OpenSRS manage interface</a>:
</p>

<p style="padding-left: 30px;">
  Unable to update nameservers: Nameserver [ns2.example.co.uk] doesn&#8217;t exist at the registry.
</p>

Especially if you&#8217;ve recently set a [new glue up](http://www.nominet.org.uk/registrars/systems/data/nameservers/).

<!--more-->In the OpenSRS domain manager it says:

<p style="padding-left: 30px;">
  ** IMPORTANT: Before adding additional name servers to your configuration, you should be sure that the name server has setup correctly. 24 &#8211; 48 hours after you submit a request for an additional name server, it will be in the rotation for authoritative lookups and if it is not setup correctly, your site will take a long time to resolve when visitors try to find you.
</p>

You can ignore this for now, here&#8217;s what you need to do first&#8230;

You, or your admin who has access to the OpenSRS reseller interface needs to find the page in there entitled &#8220;Add Nameserver to All Foreign Registries&#8221; as per [these instructions](http://www.opensrs.com/docs/opensrsrwi/add_nameserver_to_all_foreign_registries.htm):

<p style="padding-left: 30px;">
  Add Nameserver to All Foreign Registries<br /> This interface allows you to add Registered Nameservers to all of the Registries to which the OpenSRS system is connected. If you want to use a COM/NET/ORG nameserver (default.opensrs.net) on a .BIZ domain, you have to first add it to the “foreign” .BIZ Registry using this option. The reason for this is because each Registry keeps a database of “registered nameservers”, and new nameservers at “foreign” registries need to be explicitly added before they can be used to resolve domains in that TLD. Use this interface when you get the error “Unable to add nameservers: Command failed: unable to verify existence of nameserver” when trying to add a foreign nameserver to a domain.
</p>

<p style="padding-left: 30px;">
  To add a nameserver to all foreign registries
</p>

  1. In the Domain Management section of the RWI, click Add Nameserver to All Foreign Registries.
  2. In the Nameserver text box, enter the nameserver.
  3. Click Add Nameserver.

[<img class="aligncenter" title="OpenSRS" alt="" src="http://wade.be/upload/OpenSRS-300x193.png" width="300" height="193" />](http://wade.be/upload/OpenSRS.png) 

Once you do that you should see a message that says:

<p style="padding-left: 30px;">
  .com registry: Successfully added<br /> .asia registry: Successfully added<br /> .xxx registry: Successfully added<br /> .com.au registry: Successfully added<br /> .biz registry: Successfully added<br /> .bz registry: Successfully added<br /> .ca registry: Successfully added<br /> .cc registry: Successfully added<br /> .com.cn registry: Successfully added<br /> .co registry: Successfully added<br /> .in registry: Successfully added<br /> .info registry: Successfully added<br /> .es registry: Successfully added<br /> .me registry: Successfully added<br /> .mobi registry: Successfully added<br /> .name registry: Successfully added<br /> .nl registry: Successfully added<br /> .org registry: Successfully added<br /> .tv registry: Successfully added<br /> .us registry: Successfully added<br /> .ws registry: Successfully added<br /> .pro registry: Successfully added
</p>

Or similar.

Now we give it 24-48 hours, then you can set custom name servers on your domain via the OpenSRS manage interface.