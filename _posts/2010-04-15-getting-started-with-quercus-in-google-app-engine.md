---
id: 609
title: Getting started with Quercus in Google App Engine
date: 2010-04-15T12:26:55+00:00
author: admin
layout: post
guid: http://wade.be/?p=609
permalink: /getting-started-with-quercus-in-google-app-engine/
aktt_notify_twitter:
  - yes
aktt_tweeted:
  - 1
categories:
  - Development
tags:
  - gae
  - google app engine
  - java
  - quercus
  - Wordpress
---
<p class="lead">
  Last year an article was written on a blog about how to <a href="http://www.webdigi.co.uk/blog/2009/run-php-on-the-google-app-engine/">run PHP on Google App Engine (GAE)</a>.
</p>

The guide came with a pre-made package to get you started.

However, Quercus has been updated since this was produced.

<!--more-->Unfortunately the 

[official Quercus website](http://quercus.caucho.com/) has very little detail to help us get started&#8230;

Further research lead me to a blog post by the company that makes Quercus entitled: [Quercus on the Google App Engine](http://blog.caucho.com/?p=187)

It gives a general overview of what is required, but isn't really very direct.

I did also find an entry on their wiki for [Quercus on Google App Engine](http://wiki.caucho.com/Quercus_Google_App_Engine), which was more useful.

Here's what you need to do:

  1. Follow the [Google App Engine: Creating a Project getting started guide](http://code.google.com/appengine/docs/java/gettingstarted/creating.html) to create your file structure and the xml files.
  2. Download the [latest version of Resin](http://caucho.com/download) (ie: [resin-4.0.6.zip](http://www.caucho.com/download/resin-4.0.6.zip))
  3. From the zip, copy lib/resin.jar to your WEB-INF/lib
  4. Add GoogleQuercusServlet as a standard servlet and any params to web.xml ([example web.xml](http://gist.github.com/367023))
  5. Put your PHP files in your &#8220;war&#8221; directory.
  6. Use the [AppEngine Java SDK](http://code.google.com/appengine/downloads.html#Google_App_Engine_SDK_for_Java) appcfg to update.

If you get this error:

> java.lang.IllegalStateException: Found a jar file too large to upload: &#8220;&#8230;\WEB-INF\lib\resin.jar&#8221;. Consider using &#8211;enable\_jar\_splitting.

Using the suggested option fixed this, which looks like this:

> C:\appengine-java-sdk\bin\appcfg.cmd &#8211;enable\_jar\_splitting update war

That's pretty much it to get you started, when you visit your app address, you should be able to call your PHP files.

If you are looking for something a bit more advanced, take a look at these articles that explain how to get WordPress working:

  * [Converting WordPress for Quercus on Google App Engine](http://blog.caucho.com/?p=196)
  * [Using Quercus® to Run the WordPress PHP blog on Google App Engine (pdf)](http://www.caucho.com/articles/Quercus_on_GAE.pdf)

For additional help I recommend you visit [Caucho's Quercus Forums](http://forum.caucho.com/forumdisplay.php?f=5).

<div id="_mcePaste" style="position: absolute; left: -10000px; top: 575px; width: 1px; height: 1px; overflow: hidden;">
  Using Quercus® to Run the WordPress PHP blog on Google App EngineUsing Quercus® to Run the WordPress PHP blog on Google App Engine
</div>