---
id: 219
title: For VS While in PHP
date: 2008-09-09T22:54:25+00:00
author: admin
layout: post
guid: http://wade.be/?p=219
permalink: /for-vs-while-in-php/
---
<p class="lead">
  Today I was coding a new PHP script, when I asked myself &#8220;should I use for or while?&#8221;&#8230;
</p>

It&#8217;s a question I thought I should know the answer to after I spent a very long time researching [50+ PHP optimisation tips](http://wade.be/posts/50-php-optimisation-tips-revisited).

One I hadn&#8217;t mastered was whether the [for()](http://www.php.net/for) function was faster than [while()](http://www.php.net/while) function, as both can be used for most types of looping.

<!--more-->

So what do we know about for and while?

  * [John&#8217;s PHP Digest says that for is faster than while](http://www.myphpdigest.com/tutorial/PHP%20Benchmark%20-%20For%20vs%20While)
  * [Cosmin Budinschi&#8217;s blog says that while is faster than for](http://cosminb.blogspot.com/2004/09/performance-tweaking-for-vs-while-vs.html)
  * [bruesoft&#8217;s PHP Benchmarking says that while is faster than for](http://web.archive.org/web/20070615154657/http://www.bruesoft.com/php_benchmark.php#loopforwhile)
  * [php.lt&#8217;s PHP benchmark tests](http://www.php.lt/benchmark/phpbench.php) has many loop tests

I&#8217;m sure there&#8217;s many more, but there&#8217;s nothing new, and nothing conclusive&#8230;

A quick search for &#8220;for vs while php&#8221; landed me on [Mgccl&#8217;s blog](http://mgccl.com/2007/03/26/break-the-for-vs-while-loop-war), where last year, he had tested and benchmarked exactly this with a lovely little video.

His video and site claimed that while was faster than for, I wanted to test this for myself, but I noticed he hadn&#8217;t provided us with his code, meaning I had to rewrite it.

I decided to improve on it slightly and provide both results one after another. Because of this I also decided to get rid of the memory usage that would now be affected by running both functions in the one script.

Don&#8217;t worry about this though, the memory usage was insignificantly different anyway (while was less). We&#8217;re interested in the speed more than anything. Here&#8217;s the code:

> <?php
> 
> // for() vs while() loop benchmark test v0.1 by HM2K (09/09/08)
> 
> echo &#8216;PHP v&#8217;,phpversion(),'<br>&#8217;;
> 
> /\* benchmark functions \*/
> 
> include(&#8216;Benchmark/Iterate.php&#8217;);
> 
> function benchmark ($n,$t=100) {
  
> $b=new Benchmark_iterate();
  
> $b->run($t, $n);
  
> $r=$b->get();
  
> echo $n,&#8217; Mean time: &#8216;,$r[&#8216;mean&#8217;],'<br>&#8217;;
  
> }
> 
> /\* things to benchmark \*/
> 
> benchmark(&#8216;testfor&#8217;);
  
> benchmark(&#8216;testwhile&#8217;);
> 
> /\* test functions \*/
> 
> function testfor(){
  
> for($i=0; $i<10000;++$i){
  
> }
  
> }
  
> function testwhile(){
  
> $i=0;
  
> while ($i<10000){
  
> ++$i;
  
> }
  
> }
> 
> ?>

_Note: you will need the [PEAR benchmark package](http://pear.php.net/package/Benchmark)._

The great thing about this script is it is totally reusable for all sorts of PHP benchmarking, but enough about the script, let&#8217;s get back to the benchmarking.

Using the script I was very quickly able to gather the results&#8230;

> PHP v5.1.6
  
> testfor Mean time: 0.0030984044075012
  
> testwhile Mean time: 0.0027758502960205

Thus in conclusion **WHILE** _is_ faster than FOR.