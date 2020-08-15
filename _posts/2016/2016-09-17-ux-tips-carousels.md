---

title:  "UX Tips: Carousels"
date:   2016-09-17 17:00:00 +0000
author: James Wade
categories: Development
tags: development ux tips
categories:
  - Development
---

So what's the deal with carousels? Why does everyone keep asking for them on their website?

The problem usually stems from the question: What goes on the homepage? When the answer is: Everything.

This results in a constant fight for attention where nobody wins.

Let's dive into the facts...

<!--more-->

## Facts

* [Data suggests 1% of people actually click on carousels at all](http://conversionxl.com/dont-use-automatic-image-sliders-or-carousels-ignore-the-fad/).
* [Carousels aren't always obvious and 84% of people only click on the first one.](https://erikrunyon.com/2013/01/carousel-stats/)
* [Carousels (sliders) kills your rankings and conversions](https://yoast.com/opinion-on-sliders/).

Despite this, there are two great proponents of on-page Carousels, they are:

* [Amazon - Shows off how Amazon uses marketing banner carousels](https://www.smashingmagazine.com/2015/02/carousel-usage-exploration-on-mobile-e-commerce-websites/)
* [Bootstrap - The popular front-end framework, used by everyone, comes complete with a carousel example](https://getbootstrap.com/examples/carousel/)

You may think that for image galleries, it's different. The current design pattern for galleries is a "full-screen photo
 browsing experience" or lightbox, like [Jetpack for Wordpress](https://jetpack.com/support/carousel/).

## So, what about Lightboxes?

Lightboxes often introduce more user experience issues than they fix, especially on mobile.

It's rare to find a good example of lightbox working well in the wild these days, other than those one that take over
 the whole page.

"Interactions that happen through modal dialogs or across modules/panels on large screens often make more sense as
 separate pages on smaller screens." —[Luke Wroblewski, September 1, 2011](http://www.lukew.com/ff/entry.asp?1390)

[Lightboxes don't really work for small screens](http://bradfrost.com/blog/post/conditional-lightbox/), using pages
 we'll be linking to the content by default.

Still not convinced?

## Performance

Not every carousel, gallery or slider is equal. You'll likely want different ones to do different things and each time
 you'll be adding in a new set of code to handle that situation.

I found an example of a site that had at least 8 different ones, including:

* [carouFredSel](https://dev7studios.com/products/caroufredsel-wordpress-plugin/)
* [flexslider](https://woocommerce.com/flexslider/)
* [Slick](http://kenwheeler.github.io/slick/)

Loading all of these will reduce page load time, especially when they are used for image galleries.

## Conclusion

The take away here is that if you're asking whether you should use a carousel or not, the answer is probably
 [no](http://shouldiuseacarousel.com/).

There's much more creative ways to get your content seen without using a carousel. 

Just take a look at this [collection of inspirational websites using media queries and responsive web
 design](http://mediaqueri.es/) and you'll soon discover new ways to solve old problems.