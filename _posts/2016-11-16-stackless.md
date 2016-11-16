---
layout: post
title:  "Will the last person to leave turn the LAMP off"
date:   2016-11-17 09:00:00 +0000
author: James Wade
categories: Development
tags:
    - development
    - stackless
    - serverless
    - php
categories:
  - Internet
  - Sysadmin
---

We all love LAMP (that’s Linux, Apache httpd, MySQL, PHP), but the love affair may be coming to an end.

According to Netcraft, the Apache web server has been overtaken by Microsoft, but that’s not the end of the story.

When you start to look around, you’ll notice that the landscape has changed.

<!--more-->

Web application platforms/languages such as nodejs, ruby on rails, Python and even PHP have their own built in web server.

I’ve been using nginx for quite some time and my usual stack has been permanently transformed to a less catchy acronym of LNMP (or LEMP, if you will): Linux, Nginx, MariaDB and PHP7.

At the advent of serverless architecture, what web server you’re running becomes less and less relevant.

We’ve comfortably been described as LAMP stack developers in job descriptions for the last 10 years or so but all that is about to change.

Sure you’ve heard of other stacks, like MEAN (mongodb+express+angularjs+node js), but things have moved on again, we’ve already reached the next level.

I envisage that within the next 5 years, those of us using a typical LAMP stack will have moved over to an architecture where the stack has become irrelevant, a “stackless” architecture.

## Going stackless

This idea of a stackless architecture has become possible due to:

* The serverless architecture that we’re now seeing on Amazon Web Services, Lambda
* The rise of DevOps, creating infrastructure as code and software such as terraform
* The rise of microservice architecture, allowing developers to be language/platform agnostic, choosing the right tool, for the right job


All of this means that developers no longer need to know anything about the stack, just that the infrastructure will do what they expect it to when they deploy their application to it.


The power of this is that developers no longer need to spend any time worrying about the stack and instead can focus their efforts on what is important: developing the application.


I’m sure there’s some veterans that will be screaming blue murder about how this won’t happen, can’t happen, shouldn’t happen, but the reality is, it’s already happening right now.


Just look around you.


Let’s take a really rudimentary example, a blog. Let’s say, for arguments sake, it’s a Wordpress blog.


At some point, in the not too distant past, chances are you have had or used Wordpress. The typical stack for Wordpress is LAMP.


To get that blog online, you would have traditionally had to buy or rent part or all of a hardware server somewhere in a datacentre.


That, for a long time was a given. 


Not any more though. Serverless changes that.


Who cares what hardware it’s running on?


The idea of stackless is that it takes that idea to another level…


Who cares whether you run Wordpress? Who cares that you’re using PHP or MySQL? Who cares what web server software you’re running? Who cares what operating system it is?


Maybe you do care right now, but ultimately, it usually boils down to delivering what your users want, rather than what technical stack you’re using. They don’t care much about the stack used, just that you have delivered the content or functionality that they wanted.


Sure, you might be learning or know PHP now, but why discount node.js for your next project? It’s fast and you might like it and most mportantly, if it’s the right tool for the job, then use it.


Being precious about the stack you use is about as useful as whether you used Linux, Mac or Windows to develop it. If it works, use it.

It’s time to let go.

Remember to turn off the LAMP on your way out.