---
id: 177
title: eCommerce shopping cart software
date: 2008-03-26T01:17:33+00:00
author: admin
layout: post
guid: /ecommerce-shopping-cart-software
permalink: /ecommerce-shopping-cart-software/
categories:
  - Development
tags:
  - SEO
---
<p class="lead">
  So you&#8217;ve got a shop, or perhaps a new product range and you want to build a website so you can sell online.
</p>

What you need is some kind of web based eCommerce shopping cart system, the question is which?

I decided to build a short list of web based eCommerce shopping cart software out there.

The scenario is this, you have a client who wants an eCommerce solution, they are paying you, but not nearly enough, you&#8217;re doing this as more of a favour. You started to develop a solution for them, but felt their feedback wasn&#8217;t sufficient which would ultimately lead to missing things out, and it probably wasn&#8217;t worth it anyway. What is needed is a base platform to build upon.

The rules are this, it must be open source, and it must work out of the box.

Please remember, this is based purely on my options, by all means, take them on board, and form your own options.

<!--more-->

[**osCommerce**](http://www.oscommerce.com/) &#8211; [Demo](http://demo.oscommerce.com/)

This thing has been around since about 2000, and to be honest I don&#8217;t think it&#8217;s improved much since then. I used it in the past, I found it was a ugly, useless piece of junk, despite the fact I keep getting reports from fellow web developers claiming that it&#8217;s actually a wonderful piece of software&#8230; once you apply all the community patches, fix the template system and add an array of modules to make it do all sorts of trickery.

Fail.

[**osCMax**](http://www.oscmax.com/) &#8211; [](http://www.oscmax.com/)[Demo](http://demo.opensourcecms.com/oscmax/)**
  
** 

No surprises that this got it&#8217;s name due to the fact that it&#8217;s based on osCommerce. Advised by a fellow web developer I proceed with caution. As it turns out, like osCommerce, it requires register\_globals to be enabled. In this day and age, I cannot take any web software that tells me it will not work until I make my setup a security risk seriously. Although this is called osCommerce Maximized, if they can&#8217;t manage to work without register\_globals being enabled, i&#8217;m not convinced.

Fail.

[**CubeCart**](http://www.cubecart.com/site/home/) &#8211; [Demo](http://www.cubecart.com/site/demo/cc3/)

By looking at their website, you&#8217;d assume this product costs money. However apparently it&#8217;s only support and removal of the copyright which you must pay for, which would be fine, if it was reasonably priced, but it isn&#8217;t. And let&#8217;s just say the &#8220;checkout&#8221; process is much to be desired, for example, it doesn&#8217;t show the postage until you actually pay.

Fail.

[**Interchange**](http://www.icdevgroup.org/) &#8211; [Demo](http://demo.icdevgroup.org/i/demo4)**
  
** 

From the initial outlook it appears to be very much something that was created at the start of the dot-com boom, and indeed it is. Coded in perl back in 1995, it&#8217;s likely to be one of the original GPL eCommerce solutions out there. I investigated the demo, it seems very simple, yet oozes the lack of any kind of modern day standards.

Fail.

[**Magento**](http://www.magentocommerce.com/) &#8211; [Demo](http://demo.magentocommerce.com/)**
  
** 

From the outset this software appears to be ideal. It&#8217;s very much geared for the modern web developer with it&#8217;s trendy feel, complete with snazzy design and gradients on the demo store. Too good to be true? Maybe.

<p align="left">
  What is interesting to know is that the company that developed this software Irubin Consulting Inc originally started out as &#8220;<a href="http://web.archive.org/web/20051104063855/http://www.irubin.com/oscommerce.html">osCommerce developers</a>&#8220;.
</p>

To begin with I notice that it has a huge amount of [libs](http://en.wikipedia.org/wiki/Library_%28computer_science%29) which amounts to over 50% of the total disk space footprint. I&#8217;m not one for unnecessary bulk, and I&#8217;m not convinced all this is required by the default setup. I proceed regardless, thinking &#8220;hey, perhaps all this is justified&#8221;.

Once all the files were uploaded, the installation could begin, a standard step of visiting the url and following the instructions. The localization took me longer than expected to define the locale settings as the lists were bizarrely long, and difficult to find what I was looking for. _Now feeling dumber than before, I continue anyway._

I reach a step entitled: &#8220;Download Magento Core Modules and Updates&#8221;, to which I say &#8220;huh?&#8221;, I have three options: SVN Installation; Package Management through the Web; Manual Downloads and Upgrades. I chose the &#8220;Proceed with Automatic Download (Alpha)&#8221;. _Why this had to be so complicated is beyond me&#8230;_

I&#8217;ve finally reached the next step where i&#8217;m greeted by a new problem: PHP Extension &#8220;pdo_mysql&#8221; must be loaded
  
PHP Extension &#8220;mcrypt&#8221; must be loaded. _I&#8217;m sure i&#8217;d loaded these&#8230;_

Great, now I need to recompile PHP, lucky for me I&#8217;m the sysadmin, otherwise I&#8217;d have to contact someone to do this for me. _I&#8217;m wondering can I still justify all this? I&#8217;m having doubts. I quit far earlier on previous solutions._

Fail? Not yet, just because my server wasn&#8217;t setup correctly doesn&#8217;t mean I can give up just yet!

I continued the installation which went flawlessly from there on inwards.

Okay, so i&#8217;m all setup and I logged in as an admin. This is complicated, how on earth will my end users figure out how to manage their online store? Reluctantly it&#8217;s a&#8230;

Fail.

[**Zen Cart**](http://www.zen-cart.com/) &#8211; [Demo(s)](http://www.zen-cart.com/index.php?main_page=showcase)**
  
** 

Yet another osCommerce based system. Nobody really has a bad word to say about it. Apart from the die hard osCommerce fans that claim it&#8217;s too overly customised, yet you&#8217;ll always find their osCommerce is also, very customised, so I&#8217;m not convinced. One of the bad things about Zen is if you find you need to change something outside of your template each time you upgrade, you&#8217;ll need to reapply the modifications you made.

Fail.

**[osc2nuke](http://www.osc2nuke.com/)** &#8211; [Demo](http://demo.osc2nuke.com/)

If you&#8217;ve ever used phpNuke, the last thing you&#8217;ll want to do is even consider entrusting it with your business transactions. Well, this is a merge between osCommerce and phpNuke, both renowned for their security issues.

Fail.

[**cpCommerce**](http://cpcommerce.cpradio.org/) &#8211; [Demo](http://demo.opensourcecms.com/cpcommerce/)](http://cpcommerce.cpradio.org/) 

The script&#8217;s site itself doesn&#8217;t have a demo, just screenshots. I&#8217;m never happy to use a solution that is so concerned about it&#8217;s own security that it won&#8217;t even include a demo on it&#8217;s own site. If you have no confidence in your product, neither do I, so no thanks.

Fail.

**[Freeway](http://www.openfreeway.org/)** &#8211; [](http://www.openfreeway.org/)[Demo](http://www.openfreeway.org/demo/frontdemo/)**](http://www.openfreeway.org/)** 

The whole time I was looking at the admin part of this script I was thinking: &#8220;will my end users understand how to use this?&#8221;, and the answer is no. I just can&#8217;t see myself working with this.

Fail.

**[phpShop](http://www.phpshop.org/)** &#8211; [Demo](http://demo.opensourcecms.com/phpshop)**](http://www.phpshop.org/)** 

This system could be nice if it was designed a bit nicer with the latest standards in mind. Tables are very much a thing of the past. _It&#8217;s got potential, but I&#8217;m not the man to do it. I have enough to do as it is._

Fail.

**[CRE Loaded](http://www.creloaded.com/)** &#8211; [Demo](http://demos.creloaded.com/creloaded62standard/)**](http://www.creloaded.com/)** 

Again, it&#8217;s osCommerce based, yet I don&#8217;t like the fact that they are constantly trying to sell you something, that is essentially free.

Fail.

**[Bakesale](http://www.bakesalehq.com/)** &#8211; [Demo](http://demo.bakesalehq.com/)**](http://www.bakesalehq.com/)** 

What strikes me about this is how amazingly simple it seems right from the outset. There&#8217;s no beating about the bush, even the main site clearly states exactly what it is, and what it isn&#8217;t.

Although it&#8217;s good points may also be it&#8217;s down fall. It&#8217;s simplicity leaves little room for expansion, thus there&#8217;s very little interest in this project. No community means no community support, which effectively renders it a dead project. For me to use a project it must have an active community that drive the project and constantly pushing the boundaries. This simply does not have that.

Fail.

**Joomla! + [Virtuemart](http://virtuemart.net/)** &#8211; [Demo](http://demo.virtuemart.net/)**](http://virtuemart.net/)** 

This happy module exists as an eCommerce addon to the ever popular Joomla, but this is just far too complicated. It&#8217;s a CMS AND an eCommerce solution, yet the eCommerce solution appears to be sufficient on it&#8217;s own. I guess the point is it uses Joomla as a platform, but if you don&#8217;t already use Joomla, it&#8217;s not much use is it? Why does it have to be so complicated? Thus as far as I&#8217;m concerned&#8230;

Fail.

**[UberCart](http://www.ubercart.org/)** &#8211; [Demo](http://livetest.ubercart.org/)

Using Drupal as a working platform, UberCart is in all honesty a very nice looking solution. It sings, it dances, it does everything you&#8217;d expect from an eCommerce system. However, ultimately you know that underneath it&#8217;s Drupal, and although Drupal is a fantastic CMS, that is what it is, a content management system. Aren&#8217;t we over complicating things a little?

Fail.

**[Quick.Cart](http://www.opensolution.org/index,pl.html?sLang=en)** &#8211; [Demo](http://opensolution.org/Quick.Cart/demo/)**](http://www.opensolution.org/index,pl.html?sLang=en)** 

I&#8217;m not sure what it is, I just couldn&#8217;t get on with this. I just didn&#8217;t like it.

Fail.

**[IdeaCart](http://www.ideacart.com/)** &#8211; [Demo](http://demo.ideacart.com/)

The demo appears to be down, not a good start. I think I&#8217;ll pass&#8230;

Fail.

**[OpenCart](http://www.opencart.com/)** &#8211; [Demo](http://demo.opencart.com/)

Very simple frontend and a very nice and straight forward admin area, a joy to see something so finely constructed for modern web development.

A very simple 2 step setup sequence was most refreshing. I was setup in no time at all and ready to go.

All I needed to do was setup the rewrites in the &#8220;.htaccess&#8221; file, login to the admin area via &#8220;/admin/&#8221; and enable it there.

Success!