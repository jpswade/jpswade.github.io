---
id: 124
title: Developing a Facebook Application on PHP4
date: 2007-08-03T14:49:08+00:00
author: admin
layout: post
guid: /developing-a-facebook-application-on-php4
permalink: /developing-a-facebook-application-on-php4/
categories:
  - Development
---
<p class="lead">
  I want to create a facebook application, however currently all my production servers run PHP4.
</p>

Ultimately the project will be appear on your Facebook profile as a profile box.

I&#8217;m writing this while I begin creating my facebook application to assist people in a similar situation to myself.

<!--more-->

So to begin with we will start at the Official Facebook Step-by-step Guide to Creating an Application.

This is all fine, until you get to about step 10 of &#8220;Integrating Hello World&#8221;, you quickly realise that this guide is for PHP5 users&#8230;

If you followed the guide correctly, you should have added yourself an application to Facebook, and got your API key, etc. You should also have a copy of the [PHP (4 and 5) Client Library](http://developers.facebook.com/clientlibs/facebook-platform.tar.gz).

The next step is to follow the directions in the README file that comes with the Client Library and setup the &#8220;example&#8221; facebook application called Footprints.

Below is a step by step guide on how to achieve this:

  1. Create a new directory, and copy the following files from the library to it&#8230; 
      * ./footprints/config.php
      * ./footprints/index.php
      * ./footprints/lib.php
      * ./php4client/facebook.php
      * ./php4client/facebookapi\_php4\_restlib.php
  2. Edit &#8220;index.php&#8221;, change &#8220;include\_once &#8216;../client/facebook.php&#8217;;&#8221; to &#8220;include\_once &#8216;facebook.php&#8217;;&#8221;
  3. Edit &#8220;config.php&#8221;, ensure you set the $api\_key; $secret; $db\_ip; $db\_user; $db\_pass; $db\_pass; $db\_name correctly. Note, obviously at this point you need to create a user/database and from reading the file, at the bottom you need to create the table called &#8220;footprints&#8221;, I did this by loading up phpmyadmin and running the SQL.
  4. To get this to work correctly for php4, you also need [simplexml44](http://downloads.sourceforge.net/ister4framework/simplexml44-0_4_4.tar.gz), it should extract into a directory named &#8220;simplexml44-0\_4\_4&#8221;, you will need this.
  5. If like me you have discovered that lib.php errors because of the try-catch, don&#8217;t worry. just [comment them out](http://rafb.net/p/JNFoSu20.txt).

If you have done everything correctly, you should be at a point when you are ready to start editing the &#8220;index.php&#8221; and the functions in &#8220;lib.php&#8221;.

From this point onwards you need to understand PHP and read the developers documentation on the facebook website to continue.

It was interesting up until this point. I pretty much figured the best approach was to have an already existing project or site then you would simply make an application for that.

Tip: I suggest if you plan on making an application, make the project first.