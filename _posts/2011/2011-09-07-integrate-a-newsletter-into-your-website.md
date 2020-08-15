---
id: 3257
title: Integrate a newsletter into your website
date: 2011-09-07T13:26:56+00:00
author: James Wade

guid: http://wade.be/?p=3257
permalink: /integrate-a-newsletter-into-your-website/
aktt_notify_twitter:
  - yes
aktt_tweeted:
  - 1
categories:
  - Development
tags:
  - mailchimp
  - mailing lists
  - mailman
  - newsletter
  - php
---
<p class="lead">
  <a href="http://wade.be/upload/mailman-par-avion.png"><img class="alignright size-medium wp-image-3260" title="Mailman powering our Newsletter" src="http://wade.be/upload/mailman-par-avion-300x165.png" alt="" width="300" height="165" /></a>Over the years I've been asked how to integrate a newsletter into a website quite a few times.
</p>

These days I often find myself recommending a third party service such as [MailChimp](http://mailchimp.com/), however I soon discovered that as brilliant as it is, MailChimp its not for everyone.

For example, many of our web hosting clients want to run their own mail campaigns through their own website rather than use a third party service.

<!--more-->

### What software should we use?

From memory there's a few ways to do that:

  * [Mailman](http://docs.cpanel.net/twiki/bin/view/AllDocumentation/CpanelDocs/MailingLists) &#8211; Installed with cPanel
  * [PHPList](http://www.phplist.com/) &#8211; Install yourself or through fantastico, I'm not a fan
  * [Majordomo](http://www.greatcircle.com/majordomo/) &#8211; Not installed

There's quite a few other &#8220;[free mailing list](http://en.wikipedia.org/wiki/Category:Free_mailing_lists)&#8221; solutions and there's plenty of [alternatives to Mailman](http://alternativeto.net/software/mailman/), but Mailman is the preferred option for us, mainly because it's reliable and established&#8230;

> &#8220;cPanel currently uses Mailman, which is an open source product under the GNU Project&#8221;
> 
> &#8211; [Adam Wien, Systems Administrator](http://www.cpanel.net/podcast?page_id=673)

It's reassuring when software is used by a vendor such as cPanel, as you know it's likely to be supported for the foreseeable future.

It's really easy to [get started](http://docs.cpanel.net/twiki/bin/view/AllDocumentation/CpanelDocs/MailingLists) with the Mailman Mailing Lists in cPanel, however there's even a [video tutorial](http://www.cpanel.net/media/tutorials/mailinglists.htm) if you're a little unsure.

> Tip: When you setup your mailing list call it &#8220;newsletter&#8221; so its purpose is easy to identify.

Now we've decided what software we're using and we've setup our newsletter mailing list, we can now actually integrate it with our website.

When I first started looking into this, there wasn't many ways to integrate Mailman using PHP, just an outdated article entitled [How do I integrate Mailman with PHP, or any other web enabling technology?](http://wiki.list.org/pages/viewpage.action?pageId=4030648#)

Don't worry about that, because we're here to help&#8230;

### Introducing the Mailman Widget for WordPress

What we want to achieve here is a widget on our website so users are able to subscribe to our newsletter.

If you're using WordPress, this is no problem as we've got a WordPress Plugin to do it for you:

  * [Mailman Widget](http://wordpress.org/extend/plugins/mailman-widget/)

Simply login to your WordPress site as you normally would and go to the [Add New Plugin](http://codex.wordpress.org/Plugins_Add_New_Screen) screen. Just look for the &#8220;Mailman Widget&#8221;. If in doubt, take a look at the [Mailman Widget screenshots](http://wordpress.org/extend/plugins/mailman-widget/screenshots/) to help you out.

### Not using WordPress? Don't panic!

We can use exactly the same library that's used in the _Mailman Widget_ on _any_ PHP based website.

  * [PHP-Mailman](http://php-mailman.sourceforge.net/)

Simply download the file and take a look at the example to get you started.

### The future of PHP Mailman

In future, using PHP Mailman should be even easier as it is turned into a PHP Pear package called Services_Mailman.

You can now download the Pear package via github:

  * [Services_Mailman](https://github.com/pear/Services_Mailman)

Simply click the download button and extract the files. You can either require it like a normal class or install it as a Pear package by running the following:

> pear install package.xml

Once the [proposal for Services_Mailman](http://pear.php.net/pepr/pepr-proposal-show.php?id=672) has been passed, you should be able to simply do &#8220;pear install Services_Mailman&#8221; as it will be added to the Pear channel.

### In summary

I hope this helps make it easier for you to add a newsletter to your website. Despite the rise of social media (such as twitter) email is still the number 1 way to communicate online, so it's never been more important to keep in touch with your customers or peers.

**Good luck!**