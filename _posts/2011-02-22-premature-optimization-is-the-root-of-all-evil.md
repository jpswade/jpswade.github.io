---
id: 696
title: Premature optimization is the root of all evil
date: 2011-02-22T20:57:29+00:00
author: admin
layout: post
guid: http://wade.be/?p=696
permalink: /premature-optimization-is-the-root-of-all-evil/
aktt_notify_twitter:
  - yes
aktt_tweeted:
  - 1
categories:
  - Development
tags:
  - cache
  - Donald Knuth
  - php
  - Premature optimization
  - xdebug
---
<p class="lead">
  There&#8217;s <a href="http://wade.be/posts/50-php-optimisation-tips-revisited">loads of ways</a> you can optimize your PHP code, however they are probably NOT the answer to your performance issues.
</p>

A wiser man than myself once said:

> _We should forget about small efficiencies, say about 97% of the time: premature optimization is the root of all evil. Yet we should not pass up our opportunities in that critical 3%._

This was originally said by [Donald Knuth](http://en.wikipedia.org/wiki/Donald_Knuth), the father of the _analysis of algorithms_.

This can also be applied when working with programming languages such as PHP.

Here&#8217;s some handy performance tips to point you in the right direction&#8230;

<!--more-->

**Profile** your code using a debugger is highly recommended as a way to find those bottlenecks that are slowing it down.

[Xdebug](http://xdebug.org) is great, it&#8217;s open source, highly recommended by PHP experts everywhere, it easily integrates as a PHP extension and with any [popular IDE](http://www.ibm.com/developerworks/opensource/library/os-php-ide/index.html).

Once configured, you can use [Xdebug to profile your PHP scripts](http://www.xdebug.org/docs/profiler) and determine where the bottlenecks are in your code.

You never know, the issue may not even be down to your code and instead be down to a database or network latency issue.

**Upgrade** PHP to the latest version. With every release developers have tweaked and optimised the code to improve performance.

So if a particular core PHP function is your bottleneck, perhaps you&#8217;re due an upgrade.

**Cache** everything is the advice given by developers of large websites (such as [reddit](http://highscalability.com/blog/2010/5/17/7-lessons-learned-while-building-reddit-to-270-million-page.html)).

The [Memcache module](http://php.net/memcache) can be used to improve performance by caching database results.

If you use the Smarty template engine, then you can [cache pages](http://www.smarty.net/docsv2/en/caching.tpl) that way.

Otherwise you may find the [Cache_Lite](http://pear.php.net/package/Cache_Lite) handy.

**Ask**. Once you&#8217;ve profiled your code and discovered your bottleneck the only thing left to do is speak to the community.

The community know best because they&#8217;ve already done it.

If you didn&#8217;t write it, remember to speak to the author and it&#8217;s community first, otherwise try these resources:

  * [#PHP on EFnet](http://chat.efnet.org/) ([IRC](irc://irc.efnet.org/php))
  * [PHP Mailing lists](http://php.net/mailing-lists.php)
  * [PHP on StackOverflow](http://stackoverflow.com/questions/tagged/php)
  * [PHP on reddit.com](http://www.reddit.com/r/PHP/)

_Tip: The community is more likely to help you if you lurk a bit first, make some comments and see what it&#8217;s all about before start asking questions._

**Don&#8217;t forget** PHP never was and never will be built to be the best.

That&#8217;s why [Ruby developers make jokes](http://najafali.com/php-is-better-than-ruby.html) about PHP being better and why facebook developed [Hiphop for PHP](http://en.wikipedia.org/wiki/HipHop_for_PHP).

[Rasmus Lerdorf](http://en.wikipedia.org/wiki/Rasmus_Lerdorf) (who started PHP) would probably agree that it&#8217;s more about getting the job done than &#8220;real programming&#8221;.