---
id: 3180
title: 'Google&#8217;s Official Profanity API'
date: 2011-08-17T10:09:15+00:00
author: James Wade
layout: post
guid: http://wade.be/?p=3180
permalink: /googles-official-profanity-api/
aktt_notify_twitter:
  - yes
aktt_tweeted:
  - 1
dsq_thread_id:
  - 4536305507
categories:
  - Development
  - Internet
tags:
  - api
  - bad words
  - json
  - php
  - profanity
---
<p class="lead">
  <a href="http://www.wdyl.com/?q=butt hole lane"><img class="alignright size-medium wp-image-3230" title="Butt_Hole_Road" src="http://i.imgur.com/U2IWJ.jpg" alt="" width="300" height="199" /></a>Recently a list of &#8220;bad words&#8221; were made available through Google&#8217;s new website which asks: <a href="http://wdyl.com/">&#8220;What do you love?&#8221;</a> (wdyl.com).
</p>

So, perhaps I was a bit hasty [writing off WhoisX](/the-rise-and-fall-of-whoisx).

The list of profanities was [discovered](http://fffff.at/googles-official-list-of-bad-words/) in the Javascript on the website, however Google reacted quickly and switched this to a URL lookup instead of a Javascript one therefore keeping the list away from prying eyes.

However, what this does mean is now we have an API to play with:<!--more-->

> <http://www.wdyl.com/profanity?q=xxx>

This will return a true JSON response:

> {&#8220;response&#8221;: &#8220;true&#8221;}

While looking up something like &#8220;lol&#8221; will return a false response:

> <http://www.wdyl.com/profanity?q=lol>
> 
> {&#8220;response&#8221;: &#8220;false&#8221;}

All in all a pretty simple and easy way to figure out whether Google thinks it is a bad word or not.

On the down side, you can&#8217;t easily use it on your site, as, if you try to call it by AJAX you&#8217;ll be faced by the following error:

> XMLHttpRequest cannot load http://www.wdyl.com/profanity. Origin http://example.org is not allowed by Access-Control-Allow-Origin.

On the upside, we don&#8217;t want to do that anyway, we can to use it from PHP.

> <pre>&lt;?php

$q=isset($_REQUEST['q'])?urlencode($_REQUEST['q']):'';
readfile('http://www.wdyl.com/profanity?q='.$q);

?&gt;</pre>

That&#8217;s right, that&#8217;s all there is to it. Simply copy that into the a file called &#8220;profanity.php&#8221; and you&#8217;re ready to go!

Now you can do a [JSON cal](http://api.jquery.com/jQuery.getJSON/)l to your &#8216;profanity.php&#8217; to tell you whether the word is bad or not.

If that&#8217;s not enough, you could try using the Google Profanity API to avoid displaying ads on pages that contain profanities.

Now if only there was a way to avoid the [Scunthorp problem](http://en.wikipedia.org/wiki/Scunthorpe_problem)&#8230;

Going back to the reported Adsense problem on WhoisX.co.uk, the example query was:

> adult-hardcore-sex.cuntspace.me.uk

Passing this to the API returned false.

But, changing all the non-word characters to spaces has a different effect:

> adult hardcore sex cuntspace me uk
> 
> {&#8220;response&#8221;: &#8220;true&#8221;}

This is done in PHP using a simple regular expression:

> echo preg_replace(&#8216;/[\W+]/&#8217;,&#8217; &#8216;,&#8217;adult-hardcore-sex.cuntspace.me.uk&#8217;);

I&#8217;m not sure this exactly solves the Scunthorp problem, but it definitely does identify &#8220;sex&#8221; as an adult theme which is perfect.

Now to turn it into a usable function:

> <pre>&lt;?php

function is_profanity($q,$json=0) {
	$q=urlencode(preg_replace('/[\W+]/',' ',$q));
	$p=file_get_contents('http://www.wdyl.com/profanity?q='.$q);
	if ($json) { return $p; }
	$p=json_decode($p);
	return ($p-&gt;response=='true')?1:0;
}

$q=isset($_REQUEST['q'])?$_REQUEST['q']:'';
echo is_profanity($q);

?&gt;</pre>

We can use this function to check whether the query is considered a profanity or not. If it is, it will return a 1, otherwise a 0 is returned.

This function can now be used to include kittens (or whatever) rather than Google Adsense Ads on a pages with &#8220;[adult themed](https://www.google.com/adsense/support/as/bin/answer.py?hl=en&answer=105957)&#8221; content.

Brilliant!

Now to submit for [reconsideration](https://www.google.com/adsense/support/bin/request.py?contact_type=policy_violation_appeal)&#8230;