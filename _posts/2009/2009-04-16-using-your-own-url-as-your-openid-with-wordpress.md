---
id: 408
title: Using Your Own URL as Your OpenID with WordPress
date: 2009-04-16T22:09:33+00:00
author: admin

guid: http://wade.be/?p=408
permalink: /using-your-own-url-as-your-openid-with-wordpress/
categories:
  - Development
  - Internet
tags:
  - openid
  - openid delegation
  - Wordpress
---
<p class="lead">
  Today I decided to join <a href="http://www.stackoverflow.com/">stackoverflow.com</a>, which requires you to login using <a href="http://openid.net/get/">OpenID</a>.
</p>

It was pretty simple to get signed up with [myopenid.com](https://www.myopenid.com/), but while I was on the [stackoverflow login page](http://stackoverflow.com/users/login?returnurl=%2f) I noticed a little message which I found interesting:<!--more-->

> #### Use your own URL
> 
> Want to add OpenID support to _your_ website?
> 
> It's as easy as adding two HTML header tags!
> 
> [Read more..](http://blog.stackoverflow.com/2009/01/using-your-own-url-as-your-openid/)

It basically would mean I could use &#8220;example.com&#8221; instead of &#8220;example.myopenid.com&#8221; to login with OpenID, which is pretty neat. There's also a section in the help on [myOpenID.com for using your own domain](https://www.myopenid.com/help#own_domain), which confirms this.

Seems easy enough, I thought. Then I took into consideration that I'm using wordpress, sure not a major problem, I can simply hard code it into my theme, but then do I really want to do that? No, of course not.

WordPress is renound for it's ability to be compltely dynamic, I want to stick in line with that. More importantly, I want my OpenID URL to work regardless of what theme I'm using.

So I decided to start looking into it. I soon discovered someone over at wordpress.com had the same idea and had requested a way to [add OpenID delegation link to head](http://en.forums.wordpress.com/topic/add-openid-delegation-link-to-head).

At first I thought about getting a plugin that would inject the required lines of HTML into the head, however after some quite extensive research I found what I was looking for&#8230;


<img class="alignnone size-full wp-image-409" title="OpenID Delegation" src="http://wade.be/upload/screenshot-5.png" alt="OpenID Delegation" width="550" height="141" /> 

[The WordPress OpenID Plugin](http://wordpress.org/extend/plugins/openid/) allows users authorized to use the OpenID Provider can delegate to a different provider, among other things.

Once you have installed and activated the plugin you need to do the following:

  1. Go to the OpenID settings page (/wp-admin/options-general.php?page=openid)
  2. Set the &#8220;Blog Owner&#8221; as yourself, and click &#8220;Save Changes&#8221;.
  3. Go to your profile (/wp-admin/profile.php) and scroll to the bottom where it says &#8220;OpenID Delegation&#8221;.
  4. In the edit box you would provide your OpenID URL (ie: http://user.myopenid.com/)

Now when I check the source code of my site I see the following HTML in the <head>:

> <link rel=&#8221;openid2.provider&#8221; href=&#8221;http://www.myopenid.com/server&#8221; />
  
> <link rel=&#8221;openid2.local_id&#8221; href=&#8221;http://user.myopenid.com/&#8221; />
  
> <link rel=&#8221;openid.server&#8221; href=&#8221;http://www.myopenid.com/server&#8221; />
  
> <link rel=&#8221;openid.delegate&#8221; href=&#8221;http://user.myopenid.com/&#8221; />

Perfect!

I hope you find this as useful as I have.