---
id: 171
title: Word separators in URLs
date: 2008-02-06T01:00:26+00:00
author: admin
layout:
  - default
guid: http://jpswade.github.io/posts/word-separators-in-urls
permalink: /word-separators-in-urls/
aktt_notify_twitter:
  - yes
categories:
  - Development
  - Internet
tags:
  - SEO
---
<p class="lead">
  In the world of web development and search engine optimisation you find this topic is frequently discussed, yet often without any reasoning or conclusion. Therefore the purpose of this article is to investigate why.
</p>

So, let&#8217;s start at the very beginning, and find out what &#8220;word separators&#8221; actually are, and why we need them in URLs.

Traditionally a word separator is a space, yes, an every day space you create with your space-bar key.

The problem with using spaces in URLs is that when the URL is utilised in a browser (for example), the URL is encoded using [percent encoding](http://en.wikipedia.org/wiki/Percent-encoding) which causes spaces to appear as the encoded &#8220;%20&#8221;, resulting in an ugly URL formation which is humanly difficult to read.

> ie: http://www.example.com/percent%20encoding

How do we overcome the problem? Over the years a workaround has developed&#8230;

&#8230;the dash, no the hyphen, no in fact it&#8217;s the minus sign (yes, I mean this &#8220;-&#8221; symbol)&#8230;

> ie: http://www.example.com/not-percent-encoding

<!--more-->

**The history**

It appears that originally the usage of the hyphen comes from it&#8217;s appearance in hostnames and domain names.

In the early stages of the internet, groups of developers decided to write RFC documents to introduce ideas of how they believe the internet should work. These RFCs quickly became the standard, which includes details such as what is classed as a valid hostname or domain name is and what isn&#8217;t.

We can clearly see the use of the &#8220;minus sign&#8221; as a separator in [RFC 952](http://tools.ietf.org/html/rfc952), although originally they weren&#8217;t there to be used in place of spaces, but simply to allow you to add suffixes to hostnames.

Later, the use of &#8220;hyphens&#8221; appear in [RFC 1738](http://www.faqs.org/rfcs/rfc1738) where a standard for URLs is suggested.

Beyond that &#8220;hyphens&#8221; are mentioned again in [RFC 3986](http://www.ietf.org/rfc/rfc3986.txt) entitled &#8220;Uniform Resource Identifier (URI): Generic Syntax&#8221;, which clearly defines the URI (and consequently URL) syntax.

> <pre>reserved    = gen-delims / sub-delims

gen-delims  = ":" / "/" / "?" / "#" / "[" / "]" / "@"

sub-delims  = "!" / "$" / "&" / "'" / "(" / ")"
/ "*" / "+" / "," / ";" / "="

unreserved  = ALPHA / DIGIT / "-" / "." / "_" / "~"</pre>

From this we can see that a &#8220;hyphen&#8221; is categorised as an &#8220;Unreserved Characters&#8221;, unlike &#8220;Reserved Characters&#8221; which are often used as delimiters and therefore in many programming situations would require &#8220;[escaping](http://en.wikipedia.org/wiki/Escape_character)&#8220;, however they are not that difficult to work with.

Back in 2004 [GoogleGuy on WebmasterWorld](http://www.webmasterworld.com/forum3/23371.htm) clearly states that the period (.), the comma (,) and the hyphen (-) are valid word separators in URLs. He did also mentioned that most people seem to prefer the hyphen, without explanation why&#8230;

**Present usage**

Today the use of hyphens as a word separator in a URL is so common that people are beginning to think that it is an actually standard. It&#8217;s not.

And it&#8217;s not hard to see why. The amount of open source blogging (such as wordpress) and content management software (such as joomla) out there using them has given people enough reason to never even think twice about it.

_But, why is using a hyphen a problem?_

Like any workaround there are always going to be problems.

The problem arises over the confusion of a dash, hyphen, and the minus sign. Often they can be seen to be the same symbol and the same symbol used to represent each situation where they may be used as punctuation or to provide context to data.

One situation where there is potential confusion is with names and words that already contain hyphens (eg: Jean-Claude Van Damme).

_So, what are the alternatives?_

_Underscores (_)_. In the past, we have seen discussion of [dashes vs. underscores](http://www.mattcutts.com/blog/dashes-vs-underscores/), and it has been concluded that the use of dashes is considered better than the use of underscores in URLs due to how search engines interpret the input, until now&#8230;

Recently it has been stated that [Google now views underscores as word separators](http://www.news.com/8301-10784_3-9748779-7.html), in exactly the same way as dashes. However, a quick [test of this](http://www.google.com/search?q=bull_shit), and you soon discover that really, this hasn&#8217;t happened, even though the heavily popular [Wikipedia](http://en.wikipedia.org/wiki/Help:Page_name) and [Digg.com](http://digg.com/) use the underscore as a word separator in their URLs.

_Plus (+)_. In common [urlencoding](http://www.php.net/urlencode), we see that spaces are often encoded as this symbol instead of the percent-encoded version (%20). This gives you a good base reason to use this symbol as opposed to any other.

The biggest reason to use these instead is that unlike the hyphen, they are not found in words in the English dictionary, as well as being unheard of them appearing in names. However the one problem I have found is that visually urls encoded this way end up looking like search terms, rather than a static url.

_Full stop (.)_. As it&#8217;s an unreserved character we can easily use this in our URLs. The problem is that it may start to get confusing, as urls may look like files, with extensions. Also, in terms of programming, the &#8220;.&#8221; often means &#8220;everything&#8221;, especially in perl style regular expressions, which means you may have to escape it when using. It&#8217;s worth noting that &#8220;.&#8221; generally doesn&#8217;t get encoded to %2E.

**The future**

_What does this mean for my current sites using dashes?_

Ultimately _nothing_.

Any good webmaster knows that once you have your URLs in place the last thing you want to be doing is abandoning them, unless you rewrite/remap them.

However, next time you&#8217;re developing a new site, you can rest assured that you are fully aware of why you decided to use that word separator instead of another.