---
id: 162
title: Does registering a domain for a longer term increase your search engine rankings?
date: 2008-01-09T16:40:36+00:00
author: admin
layout: post
guid: http://jpswade.github.io/posts/does-registering-a-domain-for-a-longer-term-increase-your-search-engine-rankings
permalink: /does-registering-a-domain-for-a-longer-term-increase-your-search-engine-rankings/
tags:
  - SEO
---
<p class="lead">
  Recently I come across a claim by Network Solutions stating:
</p>

> _Did you know? Registering a domain name for a longer term not only saves you money, but helps to increase your search engine ranking. Consider a 5-year term!_
> 
> _Why it works: Search engines perceive domain names registered for 5 years or longer to be more legitimate than domain names registered for a shorter term, and therefore rank them more highly._
> 
> _[Source](http://www.networksolutions.com/purchase-it/images/domain-ad-in-cart.gif)_

<!--more-->Having previously discussed the &#8220;age of a domain&#8221; issue at length with other Search Engine Optimisers I decided to investigate whether there was any truth in this statement, or if in fact it was purely marketing.

Firstly we can assume that by &#8220;search engine&#8221; they are referring to one of the &#8220;big three&#8221; (Yahoo!, Google and Live Search). Since Google is the market leader, and their search engine technology is better documented we will focus on them.

Next, we have to ask what they mean by &#8220;search engine ranking&#8221;, Google offers two prominent ranking systems, they are [SERPs](http://en.wikipedia.org/wiki/Serp) (Search Engine Results Pages) and [PageRank](http://en.wikipedia.org/wiki/PageRank). Since &#8220;SERPs&#8221; is a generic ranking system, used by all search engines, we can assume this is what they are referring to.

In order to work out whether this is true, we need to know more about the Google SERP algorithm, one place to start is at [Google&#8217;s patents](http://appft1.uspto.gov/netacgi/nph-Parser?Sect1=PTO2&Sect2=HITOFF&p=1&u=%2Fnetahtml%2FPTO%2Fsearch-bool.html&r=0&f=S&l=50&TERM1=google&FIELD1=AS&co1=AND&TERM2=&FIELD2=&d=PG01). One patent to look at in particular is page two of the [U.S. Patent Application No. 20050071741, titled &#8220;Information Retrieval Based on Historical Data&#8221;,](http://appft1.uspto.gov/netacgi/nph-Parser?Sect1=PTO2&Sect2=HITOFF&p=1&u=%2Fnetahtml%2FPTO%2Fsearch-bool.html&r=2&f=G&l=50&co1=AND&d=PG01&s1=20050071741&OS=20050071741) patent which states:

> 1. A method for scoring a document, comprising: identifying a document; obtaining one or more types of history data associated with the document; and generating a score for the document based on the one or more types of history data.
> 
> 38. The method of claim 1, wherein the one or more types of history data includes domain-related information corresponding to domains associated with documents; and wherein the generating a score includes: analyzing domain-related information corresponding to a domain associated with the document over time, and scoring the document based, at least in part, on a result of the analyzing.
> 
> 39. The method of claim 38, wherein the scoring the document includes: determining whether the domain associated with the document is legitimate, and scoring the document based, at least in part, on whether the domain associated with the document is legitimate.
> 
> 40. The method of claim 38, wherein the domain-related information is related to at least one of an expiration date of the domain, a domain name server record associated with the domain, and a name server associated with the domain.

This doesn&#8217;t tell us a great deal, so we continue reading&#8230;

> [0099] Certain signals may be used to distinguish between illegitimate and legitimate domains. For example, domains can be renewed up to a period of 10 years. Valuable (legitimate) domains are often paid for several years in advance, while doorway (illegitimate) domains rarely are used for more than a year. Therefore, the date when a domain expires in the future can be used as a factor in predicting the legitimacy of a domain and, thus, the documents associated therewith.

So far we learn that registering a domain for a longer term doesn&#8217;t increase your &#8220;search engine rankings&#8221; or SERPs, but in fact, it simply aids Google to identify illegitimate domains.

However, reading further we read:

> [0102] In summary, search engine 125 may generate (or alter) a score associated with a document based, at least in part, on information relating to a legitimacy of a domain associated with the document.

_Note: As far as I am aware &#8220;Search Engine 125&#8221; is the patent name for the search engine we know as &#8220;Google&#8221;. I believe a diagram should be included to realise this._

Effectively, the patent is stating that having a domain that is detected as illegitimate can ultimately affect your score (or rank).

However, there are some oddities with so called patent &#8220;20050071741&#8221;:

  * It appears as part of patent &#8220;[ENTITY DISPLAY PRIORITY IN A DISTRIBUTED GEOGRAPHIC INFORMATION SYSTEM](http://appft1.uspto.gov/netacgi/nph-Parser?Sect1=PTO2&Sect2=HITOFF&p=1&u=%2Fnetahtml%2FPTO%2Fsearch-bool.html&r=1&f=G&l=50&co1=AND&d=PG01&s1=20050071741&OS=20050071741&RS=20050071741)&#8220;, on page 2, mentioned only once on page 1. This patent in essence has nothing to do with &#8220;search engines rankings&#8221;. However it does mention a &#8220;page rank&#8221; and mentions this application as a reference.
  * The patent doesn&#8217;t appear to be registered to Google, instead it states a &#8220;HARRITY & SNYDER, LLP&#8221;, however the &#8220;inventors&#8221; are recognised staff at Google.
  * Searching for [20050071741](http://www.google.com/patents?q=20050071741&btnG=Search+Patents) or [&#8220;Information retrieval based on historical data&#8221;](http://www.google.com/patents?q=%22Information+retrieval+based+on+historical+data%22&btnG=Search+Patents) via Google patents returns no results.
  * Searching for [20050071741](http://patft.uspto.gov/netacgi/nph-Parser?TERM1=20050071741&Sect1=PTO1&Sect2=HITOFF&d=PALL&p=1&u=%2Fnetahtml%2FPTO%2Fsrchnum.htm&r=0&f=S&l=50) in the official US Goverment patent database returns no results.
  * It mentions FIGURES/diagrams which are not included, and cannot be found.
  * It does not clearly state what this &#8220;scoring system&#8221; is used for, however it&#8217;s nature seems very close to that of the Google PageRank system, not that of SERPs.
  * It appears that this is only a patent application and **NOT an actual patent**. Considering this application has been _patent pending_ since 2005 we don&#8217;t even know if its currently implemented.

So it seems the patent path has brought us to a dead end, however from the information discovered I have concluded that registering your domain for a longer term:

  * decreases the chances of your domain being marked as illegitimate.
  * only affects your SERPs or search engine rankings if your domain is marked as illegitimate.
  * probably decreases your page rank if your domain is marked as illegitimate.

**Is it worth registering 5 years ahead?**

Please use your common sense.

Unless you&#8217;re trying to do something illegitimate, it&#8217;s safe to say registering for 5 years would have very little affect (if any) on your search engine rankings.

To give this some kind of perspective, having a link from this very page to your new domain would increase your page ranking far beyond that of registering the same domain could do even if you registered it for 1000 years.

It is however recommended that you should register for more than 1 year when purchasing a new domain, but don&#8217;t let it put you off if you only want it for 1 year.

This is because it is common knowledge that illegitimate sites have the trend of only buying a domain for a year.

Having said this, one of the major benefits of registering for a long period of time ensuring you do not lose your domain name.

Ultimately the answer is: Probably not&#8230;