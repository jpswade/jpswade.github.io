---
id: 3702
title: Why error suppression in PHP is bad
date: 2015-05-20T03:41:42+00:00
author: James Wade
layout: post
guid: http://wade.be/blog/?p=3702
permalink: /why-error-suppression-in-php-is-bad/
categories:
  - Development
  - Software
tags:
  - error
  - errors
  - performance
  - php
  - webdev
---
<p class="lead">
  I appreciate that to most people, this is not a new topic and it almost goes without saying, however I can understand that not everybody knows this, especially when you&#8217;re just starting out with PHP.
</p>

Back in 2008, I wrote an article titled &#8220;[50+ PHP optimisation tips revisited](/50-php-optimisation-tips-revisited/)&#8220;. Although it was written for fun and to include citations for tips that had gone without any supporting evidence, the underlying issue with the article was that &#8220;premature optimization is the root of all evil&#8221;.

At the time, I had no real argument for this witty retort, however in hindsight, my reason for this was to settle those arguments of best practice, no matter how trivial, the evidence is there in black and white.

The same is true with error suppression, despite what the PHP manual does or does not say.

<!--more-->

The use of the at sign (@), the [Error Control Operator in PHP](http://php.net/manual/en/language.operators.errorcontrol.php) has been prevalent through it&#8217;s history.

People often use it instead of a ternary operator, for example:

  <?php
  $var = isset($_GET[&#8216;var&#8217;]) ? $_GET[&#8216;var&#8217;] : &#8221;;
  ?>

vs

  <?php
  $var = @$_GET[&#8216;var&#8217;];
  ?>

Originally, people did begin by using this error suppression as it lead to shorter and ultimately more readable code, and nothing else mattered.

Since then we&#8217;ve learned that PHP is a bit of an odd toolbox, that doesn&#8217;t always behave as expected, so we quickly learned that suppressing errors makes debugging code exponentially more difficult.

We also learned, a long time ago, 2005 to be precise, that [error suppression with @ is very slow](https://michelf.ca/blog/2005/bad-uses-of-the-at-operator/).

There&#8217;s a lot of historic evidence to say that the @ (silence) operator gives a slow performance, but in PHP v5.4 released 1 March 2012, a fix was introduced to make it [a bit faster](http://svn.php.net/viewvc?view=revision&revision=302442).

So, should you use it now?

No. Absolutely not.

I can see why it might be tempting, but it&#8217;s really such a bad idea to do anything that might hinder your ability to debug a problem.

We&#8217;re now finally at the point where even well established PHP Frameworks such as CodeIgniter have decided that [masking errors is a bad idea](https://github.com/bcit-ci/CodeIgniter/issues/3036) and begun to actively remove error suppression.

In conclusion, despite a leap in performance (which is still slower) hiding errors instead of logging them or catching them is a bad idea and a debugging nightmare.

Save yourself time in the long run and just don&#8217;t do it.