---
id: 507
title: jQuery sucks at browser detection
date: 2009-09-22T16:16:18+00:00
author: admin
layout: post
guid: http://wade.be/?p=507
permalink: /jquery-sucks-at-browser-detection/
aktt_notify_twitter:
  - yes
aktt_tweeted:
  - 1
categories:
  - Development
  - Internet
tags:
  - browser
  - detection
  - internet explorer
  - JavaScript
  - jquery
  - layout engine
  - opera
  - sniffer
  - useragent
  - version
---
<p class="lead">
  This week i've been tweaking a little site I've started called &#8220;<a href="http://ismybrowseruptodate.com/">ismybrowseruptodate.com</a>&#8220;, which is designed to assist people who don't know whether their browser is up-to-date or not.
</p>

At first I thought this would be simple, because I knew jQuery had browser detection and had a variable called [jQuery.browser.version](http://docs.jquery.com/Utilities/jQuery.browser.version), which would be very useful for checking the browser version, or so I thought.

<!--more-->Don't get me wrong here, I think jQuery is a fantastic javascript framework and is great at helping you to avoid reinventing the wheel, but it sucks at browser detection!

On closer inspection I see that jQuery is deprecating this variable in place for better ways of [browser detection](http://xkr.us/js/detect), namely by [not detecting the browser, but detecting technologies (via objects)](http://developer.apple.com/internet/webcontent/objectdetection.html) instead.

As such, you can already see evidence of the jQuery team [deprecating the browser sniffing](http://www.reddit.com/r/programming/comments/7l2mr/jquery_removes_all_browser_sniffing/) by removing references to the jquery.browser variable.

The problem is that even now it still exists in jQuery because it is being used for backwards compatibility and by plugins. It can't just be removed, so it must still be maintained.

As we know, jQuery sucks at browser detection because they've been detecting by browser, instead of by technologies all along, so what else is new?

Not long ago Opera Software released the latest version of their [Opera Browser](http://www.opera.com/), which is version 10, however, during trials they came across some issues where some sites would detect the wrong version, forcing Opera to [make changes to Opera's user agent string](http://dev.opera.com/articles/view/opera-ua-string-changes/).

Guess what?

jQuery is detecting the wrong version number for Opera. It's detecting &#8220;Opera v10&#8221; as &#8220;Opera v9.80&#8221;.

However, in this instance it isn't much of a problem because jQuery is moving it's dependencies away from browser sniffing to technology detection, and opera made changes to their user agent string to handle it.

So what is the problem?

The problem is that jQuery is not maintained to cope with the changes to the user agent string and that they are getting engine versions confused with browser versions. Let's take a look at the [actual core code](http://dev.jquery.com/export/6582/trunk/jquery/src/core.js):

> (userAgent.match( /.+(?:rv|it|ra|ie)\[\/: \]([\d.]+)/ ) [0,'0&#8242;])[1]

As you can see it has 4 checks&#8230;

  * rv=Revision of the Gecko &#8220;layout engine&#8221;.
  * it=Version of the WebKit &#8220;layout engine&#8221;.
  * ra=Version of Opera, and NOT &#8220;Presto&#8221; it's layout engine.
  * ie=Version of Internet Explorer, but NOT &#8220;Trident&#8221; it's layout engine.

After that you can see the browser checks it does&#8230;

> safari: /webkit/.test( userAgent ),
  
> opera: /opera/.test( userAgent ),
  
> msie: /msie/.test( userAgent ) && !/opera/.test( userAgent ),
  
> mozilla: /mozilla/.test( userAgent ) && !/(compatible|webkit)/.test( userAgent )

As you can see, it lists 4 browsers, some test for the layout engine, some test for the browser name, mozilla is a test for neither and what about Google Chrome?

The problem is that many browsers use the same layout engine, but may result in different version numbers.

So, the question is, are we detecting the [web browser](http://en.wikipedia.org/wiki/Web_browser) or the [layout engine](http://en.wikipedia.org/wiki/Layout_engine)?

If it's browsers, the version match is all wrong and doesn't consider the changes made to Opera's user agent string; and if it's layout engines it's detecting the wrong version numbers from the browser rather than the engine.

For jQuery at least, considering there are only about [20 notable layout engines](http://en.wikipedia.org/wiki/List_of_layout_engines), it would make more sense to match those rather than the literally hundreds of browsers, many of which are based on the same layout engine.

So how do we fix this?

It depends what you want to detect, whether it be the browser or the layout engine. The problem is that if you change this now, older code will no longer be compatible, as the problem with version numbers will arise.

I have raised this as a bug [#5279](http://dev.jquery.com/ticket/5279) with the jQuery team, but I don't expect much to be done about it.

Instead, I have created and am using a better browser sniffer on &#8220;[ismybrowseruptodate.com](http://ismybrowseruptodate.com/)&#8221; in javascript, however at the moment it is not open source code. If you are interested, let me know and I will release it as open source, along with the layout engine sniffer and detection I started developing too.

Enjoy!

<div id="_mcePaste" style="overflow: hidden; position: absolute; left: -10000px; top: 452px; width: 1px; height: 1px;">
  // Use of jQuery.browser is deprecated.<br /> // It's included for backwards compatibility and plugins,<br /> // although they should work to migrate away.<br /> browser: {<br /> version: (/.+(?:rv|it|ra|ie)[\/: ]([\d.]+)/.exec(userAgent) || [0,'0&#8242;])[1],<br /> safari: /webkit/.test( userAgent ),<br /> opera: /opera/.test( userAgent ),<br /> msie: /msie/.test( userAgent ) && !/opera/.test( userAgent ),<br /> mozilla: /mozilla/.test( userAgent ) && !/(compatible|webkit)/.test( userAgent )<br /> }
</div>