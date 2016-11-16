---
id: 398
title: Choosing a PHP Framework
date: 2009-03-19T07:46:46+00:00
author: James Wade
layout: post
guid: http://wade.be/?p=398
permalink: /choosing-the-best-php-framework/
aktt_notify_twitter:
  - yes
categories:
  - Development
tags:
  - framework
  - php
  - web development
  - webdev
---
<p class="lead">
  Recently i&#8217;ve been writing a lot more PHP based websites and web applications. I&#8217;ve found myself building and rebuilding my own framework, but to no real standard. I decided this needs to change. I need to choose a PHP Framework.
</p>

<!--more-->

To begin with I started by looking at what frameworks are out there&#8230; [[Wikipedia](http://en.wikipedia.org/wiki/List_of_web_application_frameworks)] [[Google](http://www.google.com/search?q=php+frameworks)]

The list is almost endless, new ones are being produced all the time, however I didn&#8217;t think many of the others were even worth considering taking a look at (especially if they didn&#8217;t have a Wikipedia entry).

  * [Zend Framework](http://framework.zend.com/)
  * [CakePHP](http://www.cakephp.org/)
  * [Symfony](http://www.symfony-project.org/)
  * [CodeIgniter](http://codeigniter.com/)
  * [Kohana](http://kohanaphp.com/) (CodeIgniter)
  
<p class="lead">
  Recently i&#8217;ve been writing a lot more PHP based websites and web applications. I&#8217;ve found myself building and rebuilding my own framework, but to no real standard. I decided this needs to change. I need to choose a PHP Framework.
</p>

To begin with I started by looking at what frameworks are out there&#8230; [[Wikipedia](http://en.wikipedia.org/wiki/List_of_web_application_frameworks)] [[Google](http://www.google.com/search?q=php+frameworks)]

The list is almost endless, new ones are being produced all the time, however I didn&#8217;t think many of the others were even worth considering taking a look at (especially if they didn&#8217;t have a Wikipedia entry).

  * [Zend Framework](http://framework.zend.com/)
  * [CakePHP](http://www.cakephp.org/)
  * [Symfony](http://www.symfony-project.org/)
  * [CodeIgniter](http://codeigniter.com/)
  * [Kohana](http://kohanaphp.com/) (CodeIgniter)](http://kohanaphp.com/) 

Of course, I&#8217;m looking for the &#8220;best&#8221; framework to use, but what defines it as &#8220;best&#8221;?

I wondered is it which is most popular? After all, this is almost a popularity contest as you want to use a framework that is not only useful but well supported.

The question is then, how do you measure how popular it is?

  * How many results it has in Google&#8217;s results.
  * How many mentions it has on sites such as reddit, digg, twitter, etc.
  * How many downloads the framework has had.
  * How many notable sites use the framework.
  * How many web developers use the framework.

How many notable websites or web applications used the PHP framework interested me the most to begin with.

  * CakePHP 
      * [Mingle2](http://bakery.cakephp.org/articles/view/how-i-built-a-web-2-0-dating-site-in-66-5-hours)
  * Symfony 
      * [Yahoo! Bookmarks](http://www.symfony-project.org/blog//2006/10/28/yahoo-bookmarks-uses-symfony)
      * [Yahoo! Answers](http://www.symfony-project.org/blog/2008/05/08/yahoo-answers-powered-by-symfony)
  * Zend Framework 
      * [Bwin Pokerroom.com](http://framework.zend.com/casestudies/ZFCaseStudy-bwin.pdf)
      * [Various other Case Studies](http://framework.zend.com/about/casestudies)
  * CodeIgniter 
      * [Various](http://codeigniter.com/projects/) (small sites)

Nothing was really winning it over for me, I decided to start trying them out&#8230;

Based on a recommendation from a fellow web developer I decided to give Zend Framework a go. However, I quickly came across a [problem](http://framework.zend.com/issues/browse/ZF-5883), which put me to a stop.

I decided to go back to the drawing board and try CakePHP, I started reading the [CakePHP Quick Start guide](http://book.cakephp.org/view/326/the-cake-blog-tutorial), which took about 8 tasks to do before I could even get started. Once I started reading on I found the guide quite hard to follow&#8230;

I decided to move on to Symfony to see if it was any more useful. They have a 10 minute [screencast video guide](http://www.symfony-project.org/screencast/cart), although now I could follow the guide better, it made this framework look complex. I also found their use of Mac and TextMate a bit magic, as a windows user.

I decided to take a look if there were any video tutorials that might help with CakePHP, or for that matter any of the frameworks&#8230;

  * I could not find any for CakePHP on youtube, but found some on [vimeo](http://www.vimeo.com/videos/search:cakephp) (most are useless).
  * I noticed that CodeIgniter has quite a few, including a [20min blog tutorial](http://codeigniter.com/tutorials/watch/blog/).
  * Zend Framwork also has quite a few [screencasts](http://framework.zend.com/docs/screencasts).

I liked the look of CodeIgniter, but CodeIgniter based Kohana seemed more appealing to me, so I considered using that, however I soon realised that I was faced with the same issue as with Zend Framework, being that it&#8217;s requirements meant I needed to upgrade my PHP, as it requires PHP 5.2.3 or above.

I am leaning towards going back to Zend Framework mainly due to an article that marksanborn wrote ([Why I use the Zend Framework](http://www.marksanborn.net/php/why-i-use-the-zend-framework/)), which seemed to make a lot of sense.

I also really related to a [talk on frameworks](http://faceoffshow.com/2009/02/04/episode-1-frameworks/) by the guys at the faceoff show. Inparticular the information about DoJo, as at first I was put off as to why dojo was included in Zend Framwork, when in my opinion jQuery is a much better javascript framework; however it&#8217;s mentioned that it&#8217;s easy to see why Zend picked DoJo, which is because it makes it easy to work with forms and form validation; it&#8217;s not like jQuery, which has its uses in most other cases.

However, looking back at CodeIgniter it has very appealing system requirements:

  * PHP version 4.3.2 or newer.
  * A Database is required for most web application programming. Current supported databases are MySQL (4.1+), MySQLi, MS SQL, Postgres, Oracle, SQLite, and ODBC.

If you understand that a) I work on Pear&#8217;s PHP_Compat, and b) My dev server runs PHP 5.1.6 due to CentOS backporting, you&#8217;ll see why it&#8217;s appealing to me over some of the others.

CakePHP was also appealing as it supports PHP 4.3.2 or greater.

I can&#8217;t help but feel that using CodeIgniter would be a bit backwards, considering the future seems to be Zend Framework, however I can&#8217;t help but wonder if Zend Framework is going to have any kind of backwards compatibility or am I expected to upgrade and recompile PHP to bleeding edge each time I use the latest version?

Despite all this, I still pretty much really want to use Zend Framework, purely for the fact that as a web developer, I can see the appeal. I can see why other web developers are using it and why they like it.

I think what I&#8217;d like to see more of is more backwards compatibility &#8211; I want to know that no matter what version of PHP i&#8217;m using i&#8217;m able to use the latest version of the framework.

If i&#8217;m going to learn a language, I at least want to learn something that&#8217;s going to be worth while. With that in mind, I think the only choice is going to be Zend Framework.

I think ultimately that Zend Framework is appealing especially for the project i&#8217;m working on because of it&#8217;s support for DoJo, which means making forms will be simple. Since my next project will be mainly about forms, as it&#8217;s got a few ordering steps, I think Zend Framework is probably going to be the obvious choice here.

However, I am interested in CodeIgniter based ExpressionEngine for some small business sites I am producing.

I don&#8217;t think there&#8217;s anything wrong with using a mix of both for different projects, there&#8217;s no need to stick to one framework, loyalty is not required, it&#8217;s whatever is best for the project and in my case, I think it&#8217;s going to be Zend Framework.