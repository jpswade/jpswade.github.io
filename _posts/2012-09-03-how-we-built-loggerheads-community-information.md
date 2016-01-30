---
id: 3618
title: 'How We Built: Loggerheads Community Information Shop'
date: 2012-09-03T22:12:00+00:00
author: James Wade
layout: post
guid: http://jpswade.github.io/?p=3618
permalink: /how-we-built-loggerheads-community-information/
tumblr_jpswade_permalink:
  - http://jpswade.tumblr.com/post/30827617063/how-i-built-loggerheads-community-information
tumblr_jpswade_id:
  - 30827617063
categories:
  - Development
tags:
  - web design
  - web development
---
<p class="lead">
  What seems like an age ago now started out with me meeting up with Eric Pemberton to give a few pointers with the online presence for the community run information shop he had successfully built up from grass roots with the help of Newcastle-under-Lyme Borough Council and a committee.
</p>

**Background**

Originally Eric was editing the retro HTML by hand to manage the content, but this was proving quite challenging.

At first Eric wanted to learn about PHP and MySQL to help make managing the content easier, however I felt this was a rabbit hole that could go in any number of directions indefinitely as technology changes and new best practices come to light.

Instead I decided to advise towards a content management system. I wanted to stick to an Open Source, PHP and MySQL powered one, mainly to keep costs for this volunteer run project down, but also so Eric was able to pick up some of the terminology and concepts.

At the time I’d used WordPress a heck of a lot and had grown to love the beauty of it’s simplicity.

However because this was a “community” website with quite BIG ambitious features, I felt that WordPress might be a little “underpowered” for the job.

Having briefly worked with it before I recalled Drupal being very “community” centric due to its fine-grained user access and plenty of community modules. Drupal was now in version 6 and considered a mature project.

I was sold on this idea as soon as I learned that not only was the new data.gov.uk site based on Drupal but so was the new whitehouse.gov website.

Perfect.

That’s the technology sorted, on to the design.

**Design**

We had lots of back and forth over email with regards to design. We discussed all sorts of ideas, features, layouts and styles before we managed to get a few things down in black and white.

We looked at quite a few “similar” community type websites, both local and national. The take away notion was that the website should have an obviously look and feel of Loggerheads and the surrounding areas.

I knew at this point that imaginary was going to play a big part of this website, so I began focusing on including high resolution images right at the top of the design in the header.

I tried a few ideas but I didn&#8217;t really like them…

[<img class="alignnone wp-image-3628 size-medium" src="http://jpswade.github.io/upload/lcis1-300x240.png" alt="lcis1" width="300" height="240" srcset="http://jpswade.github.io/upload/lcis1-300x240.png 300w, http://jpswade.github.io/upload/lcis1-1024x819.png 1024w, http://jpswade.github.io/upload/lcis1.png 1280w" sizes="(max-width: 300px) 100vw, 300px" />](http://jpswade.github.io/upload/lcis1.png) 

I abandoned this concept before it got too ugly and went back to the drawing board.

One site that that I kept coming back to, that really inspired my designs going forward, was visitphilly.com, designed by the world-renowned design studio Happy Cog.

As you&#8217;ll see in my next concept…

[<img class="alignnone size-medium wp-image-3631" src="http://jpswade.github.io/upload/lcis2.3-236x300.png" alt="lcis2.3" />](http://jpswade.github.io/upload/lcis2.3.png) 

I decided to keep with the green and brown which represented the farmland in the surrounding areas as well as take some layout direction from the website design I’d become familiar with.

The feedback was that it wasn&#8217;t very in-line with the existing branding, so the design was compromised into this:<figure>

[<img class="alignnone size-medium wp-image-3632" src="http://jpswade.github.io/upload/lcis3.0-236x300.png" alt="lcis3.0" />](http://jpswade.github.io/upload/lcis3.0.png)</figure> 

This was the first draft adopting the logo and the blue branding. This wasn&#8217;t the final draft as a few more details were added in before it went into production:<figure class="">

[<img class="alignnone size-medium wp-image-3633" src="http://jpswade.github.io/upload/lcis3.2-236x300.png" alt="lcis3.2" />](http://jpswade.github.io/upload/lcis3.2.png)</figure> 

This is the design that went into production.

**Training**

As part of the agreement, I then wrote just under 30 pages of training instructions for implementing Drupal.

This included instructions from how to install Drupal, to creating views, to editing the style using CSS.

However, this was for Drupal v6.x, so much of this is likely to have changed or become irrelevant now as things move on so quickly.

I worked through this with Eric so he was able to setup Drupal himself.

**Evaluation**

In hindsight this was a much bigger task than I had anticipated as Drupal is very much a huge unwieldy beast.

The reasoning behind using Drupal was that it was seen as enterprise level and the eventual governance of this website was set to require something a bit more robust than WordPress. There was also scope for a forum, which we found there was not much demand for.

However, if I was to do the project again, I would not hesitate to use Wordpress as it&#8217;s certainly proved its robustness over the years and it would be well within the scope of the eventual governance which turned out to be no more than 3 users.