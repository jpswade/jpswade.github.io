---
id: 3434
title: How To Install MongoDB on CentOS 6 with cPanel
date: 2015-05-15T10:00:40+00:00
author: James Wade
layout: post
guid: http://wade.be/?p=3434
permalink: /how-to-install-mongodb-on-centos-6-with-cpanel/
categories:
  - Internet
  - Software
  - Sysadmin
tags:
  - database
  - mongo
  - nosql
  - php
  - yum
---
<p class="lead">
  First of all, what is MongoDB? Well if you&#8217;re already here, you probably know, but if this is the first time you&#8217;ve heard of it, then you may want to know a bit more, so here&#8217;s a brief description to help you along your way:
</p>

> [MongoDB](https://en.wikipedia.org/wiki/MongoDB) is a &#8220;document database&#8221; designed for performance and scalability while remaining easy for developers to use. It does not mean XLS or DOC files, instead it means storing arrays, therefore it is often grouped with other non-relational databases under the term &#8220;NoSQL&#8221;.

The question is, why might you want to use this over traditional SQL databases such as MySQL, PostgreSQL or even SQLite?

Well, there&#8217;s one fantastic reason: it works as if it is part of the language you&#8217;re coding in, rather than requiring you to learn a new one.

The problem is that cPanel doesn&#8217;t have native support for MongoDB, but that won&#8217;t stop us installing it on CentOS 6, in fact, because there&#8217;s no interference from cPanel (yet), it makes it a little easier.

Here&#8217;s how we get it installed:

<!--more-->

Very simply, just run these commands:

> #!/bin/sh
  
> #1: Add the MongoDB Repository
  
> echo [mongodb]>/etc/yum.repos.d/mongodb.repo
  
> echo name=MongoDB Repository>>/etc/yum.repos.d/mongodb.repo
  
> echo baseurl=http://downloads-distro.mongodb.org/repo/redhat/os/\`uname -m\`/>>/etc/yum.repos.d/mongodb.repo
  
> echo gpgcheck=0>>/etc/yum.repos.d/mongodb.repo
  
> echo enabled=1>>/etc/yum.repos.d/mongodb.repo
  
> echo #EOF>>/etc/yum.repos.d/mongodb.repo
  
> #2: Install MongoDB
  
> yum install -y mongo-10gen mongo-10gen-server
  
> #3: Get MongoDB Running
  
> service mongod start
  
> #4: Check Mongo Status
  
> service mongod status
  
> mongostat
  
> #EOF

That&#8217;s it, MongoDB is installed!

Assuming you want to use MongoDB with PHP, here&#8217;s what you need next:

> pecl install mongo

Once completed that&#8217;s it, you&#8217;re all set to go.

In PHP, you&#8217;re then able to do things like this:

> <?php
> 
> $mongo = new Mongo();
  
> //your code goes here&#8230;
> 
> ?>

Now you&#8217;re ready to rock and roll!

Next time on MongoDB, creating an Address Book&#8230;