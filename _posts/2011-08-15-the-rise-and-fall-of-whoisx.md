---
id: 3051
title: The rise and fall of WhoisX
date: 2011-08-15T08:33:38+00:00
author: James Wade
layout: post
guid: http://labs.phurix.net/?p=3051
permalink: /the-rise-and-fall-of-whoisx/
aktt_notify_twitter:
  - yes
aktt_tweeted:
  - 1
categories:
  - Development
  - Internet
---
<p class="lead">
  <a href="http://labs.phurix.net/upload/fail.png"><img class="alignright size-medium wp-image-3143" title="Fail narwhal" src="http://labs.phurix.net/upload/fail-300x225.png" alt="" width="300" height="225" srcset="http://jpswade.github.io/upload/fail-300x225.png 300w, http://jpswade.github.io/upload/fail.png 500w" sizes="(max-width: 300px) 100vw, 300px" /></a><a href="http://whoisx.co.uk/">WhoisX</a> is a domain name lookup service, similar to the whois service provided by &#8220;domain tools&#8221;, but ours was primarily for UK domain names.
</p>

It began as a small project to help people check whether a domain was available or not. When a domain was available the visitor was linked to a place they could buy the domain.

<!--more-->We developed out the project into more of a whois lookup service because this was useful to customers who wanted to see details about their domain using a web service rather than understanding how to do a whois lookup from the command line.

However, we soon came to realise that the site was causing a high load on the server because it was being hammered by bots. These bots were visiting thousands of URLs in an attempt to get WhoisX to generate a link back to them. Little do they know that, that&#8217;s not how it works.

The project was revamped with a whole load of new features including caching and load checking, which worked very well.

It no longer just did domain lookups either, it did hostnames (showing the &#8220;domain parts&#8221; making it easy to navigate), ip lookups, country code lookups, reverse ip lookups, mail server lookups and various dns queries all displayed within a few seconds.

We expanded the &#8220;social&#8221; aspect to make it easier to share and made it ad supported using Google Adwords.

Personally, I found the tool very useful to quickly check a domain, or drop a link into an email so customers could check for themselves.

This was all working great. The tool was useful to us and it was bringing in a small revenue, so it was all worth while.

However, this ended when Google emailed with the subject &#8220;AdSense ad serving has been disabled to your site&#8221;, the email went on to say:

> Hello,
> 
> During a recent review of your account we found that you are currently
  
> displaying Google ads in a manner that is not compliant with our program
  
> policies
  
> (<https://www.google.com/support/adsense/bin/answer.py?answer=48182&stc=aspe-1pp-en>).
> 
> &#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8211;
  
> EXAMPLE PAGE: <http://whoisx.co.uk/adult-hardcore-sex.cuntspace.me.uk>
> 
> Please note that this URL is an example and that the same violations may
  
> exist on other pages of this website or other sites in your network.
> 
> VIOLATION(S) FOUND:
> 
> LINKS TO ADULT CONTENT: As stated in our program policies, AdSense
  
> publishers are not permitted to place Google ads on pages with adult or
  
> mature content. This includes displaying ads on pages that provide links
  
> for or drive traffic to adult or mature sites. More information about this
  
> policy can be found in our help center
  
> (<https://www.google.com/adsense/support/as/bin/answer.py?hl=en&answer=105957>).
> 
> ADULT SEARCH RESULTS: As stated in our program policies, AdSense
  
> publishers are not permitted to place Google ads on pages with adult or
  
> mature content. This includes search results pages for adult or mature
  
> terms, images or videos with adult keywords or tags, and user generated
  
> comments that are mature in nature. More information about this policy can
  
> be found in our help center (
  
> <https://www.google.com/adsense/support/as/bin/answer.py?hl=en&answer=105957>
  
> ).
> 
> ACTION TAKEN: We have disabled ad serving to your site.
> 
> ACCOUNT STATUS: ACTIVE
  
> Your AdSense account remains active. However, please note that our team
  
> reserves the right to disable your account at any time. As such, we
  
> encourage you to become familiar with our program policies and monitor
  
> your network accordingly.
> 
> Issue ID# XXXXXXX
> 
> &#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8211;
  
> Thank you for your cooperation.
> 
> Sincerely,
> 
> The Google AdSense Team
  
> &#8212;&#8212;&#8212;&#8212;&#8212;-
  
> For more information regarding this email, please visit our Help Center:
  
> <https://www.google.com/adsense/support/bin/answer.py?answer=113058&stc=aspe-ai4-en>.

Although I agree with Google&#8217;s terms, this was an outside case and I couldn&#8217;t understand why they had chosen the example they had, since the &#8220;visit website&#8221; link on the page links to a website that doesn&#8217;t exist.

At the very worst, the URL contains an adult word, which is almost impossible to filter due to the &#8220;[Scunthorpe problem](http://en.wikipedia.org/wiki/Scunthorpe_problem)&#8221; and that Google have not supplied a &#8220;bad word list&#8221; for us to work off.

This meant that without spending a lot of time on developing a very complex filter system so that ads aren&#8217;t displayed on pages containing potentially bad words, there was very little we could do about it.

So, this signals the end for [WhoisX](http://whoisx.co.uk/) as we know it.

Consider this 30 days that the site will be closing down in it&#8217;s current form.

However, we do have plans to open a new domain lookup service, supported by Phurix in it&#8217;s place.

Watch this space!