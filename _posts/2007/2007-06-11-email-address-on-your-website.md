---
id: 121
title: email address on your website
date: 2007-06-11T13:23:16+00:00
author: admin

guid: /email-address-on-your-website
permalink: /email-address-on-your-website/
redirect_from: /posts/email-address-on-your-website/
aktt_notify_twitter:
  - yes
categories:
  - Internet
tags:
  - email
---
<p class="lead">
  This is something that people don't seem to realise, and although I tell them over and over it seems to go ignored.
</p>

**DO NOT PUT YOUR EMAIL ADDRESS ON YOUR WEBSITE**

The reason is that spam bots crawl websites and gather email addresses, then place them into a list ready to spam.

<!--more-->
People often ask me how to overcome this issue, I mainly use the following 3 methods:

  1. Add removable tags. (eg: web@[-REMOVE-]example.com)
  2. Images &#8211; Simply turn your email address into an image and include it on your site, be warned however, some spam bots use OCR, but not very often as it uses lots of resources.
  3. Forms &#8211; One of the best methods, because your email address is never visible, however forms can be spammed.

For those with some PHP skills here's a simple script I made, you can use to render your email addresses, as per option 2:

```
<?php
$string=$_GET['text'];
$fixedhost=str_replace('www.','',$_SERVER['HTTP_HOST']);
//check for string
if (!$string) { die(); }
$string=$string.'@'.$fixedhost;
//ensure no caching by browser - START
header("Expires: Mon, 26 Jul 1997 05:00:00 GMT"); //A Date in the past
header("Last-Modified: " . gmdate("D, d M Y H:i:s") . " GMT"); // always modified
header("Cache-Control: no-store, no-cache, must-revalidate"); // no cache for HTTP/1.1
header("Cache-Control: post-check=0, pre-check=0", false); // no cache for HTTP/1.1
header("Pragma: no-cache"); // no cache for HTTP/1.0
//ensure no caching by browser - END
//output the image
header('Content-type: image/gif'); // tell the browser that this is an image
//Create the image
$font  = 3;
$width  = ImageFontWidth($font)* strlen($string);
$height = ImageFontHeight($font);
$im = ImageCreate($width,$height);
$x=imagesx($im)-$width ;
$y=imagesy($im)-$height;
$background_color = imagecolorallocate ($im, 242, 242, 242); //white background
$text_color = imagecolorallocate ($im, 0, 0,0);//black text
$trans_color = $background_color;//transparent colour
imagecolortransparent($im, $trans_color);
imagestring ($im, $font, $x, $y,  $string, $text_color);
imagegif($im);
ImageDestroy($im); 
?>
```

Update: I recently also write some javascript that is not easily detectable by the spam bots&#8230;

> <script language=&#8221;JavaScript&#8221; type=&#8221;text/javascript&#8221;>
> <!&#8211;
> var who = &#8216;info';
> var at = &#8216;@';
> URL=self.location.href;
> prefix=URL.substring(0,URL.indexOf(&#8216;.')+1);
> URLremain=URL.substring(prefix.length,URL.length);
> domain=&#8221;;
> if((prefix=='http://www.') || (prefix=='www.')) {
> domain=URLremain.substring(0,URLremain.indexOf(&#8216;/'));
> }
> else {
> prefix2=URL.substring(0,7);
> if (prefix2=='http://') {
> URLremain2=URL.substring(prefix2.length,URL.length);
> domain=URLremain2.substring(0,URLremain2.indexOf(&#8216;/'));
> }
> else{ domain=URL.substring(0,URL.indexOf(&#8216;/')); }
> }
> document.write(who + at + domain);
> //&#8211;>
> </script>

It pulls the domain name automatically, ideal for many simple sites.

There are plenty of other techniques, csarven has a very nice article detailing these, called [hiding email addresses](http://www.csarven.ca/hiding-email-addresses).