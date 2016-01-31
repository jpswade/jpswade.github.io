---
id: 450
title: Cex.co.uk site errors
date: 2009-08-14T08:29:24+00:00
author: admin
layout: post
guid: http://wade.be/?p=450
permalink: /cex-co-uk-site-errors/
aktt_notify_twitter:
  - yes
aktt_tweeted:
  - 1
tags:
  - cex
  - security
---
<p class="lead">
  After browsing the <a href="http://www.cex.co.uk/">cex.co.uk</a> website for some time I came across a few errors on the site&#8230;
</p>

<!--more-->The first one was when I visited 

[this page](http://www.cex.co.uk/products/Gaming/PC%20Gaming/PC%20CD-ROM/index.php?sku=5017783016963) a few months back&#8230;

> PHP Warning:  imagejpeg() [<a href=&#8217;function.imagejpeg&#8217;>function.imagejpeg</a>]: Unable to open &#8216;c:\Inetpub\wwwroot\images\products\gaming\\5017783016963.jpg&#8217; for writing: No such file or directory in D:\websites\ukwwwroot\includes\functions\functions.inc.php on line 580

I also came across a couple of other errors reported by other users on their very own forum&#8230;

> PHP Warning: include(include/templates/side\_r\_uncached.php) [function.include]: failed to open stream: No such file or directory in D:\websites\ukwwwroot\sell\order\_monitor\_complete.php on line 188
  
> PHP Warning: include() [function.include]: Failed opening &#8216;include/templates/side\_r\_uncached.php&#8217; for inclusion (include\_path=&#8217;C:\PHP\pear;d:\websites\ukwwwroot&#8217;) in D:\websites\ukwwwroot\sell\order\_monitor_complete.php on line 188
> 
> PHP Warning: include(include/templates/side\_r\_uncached.php) [function.include]: failed to open stream: No such file or directory in D:\websites\ukwwwroot\sell\order\_monitor\_complete.php on line 188
  
> PHP Warning: include() [function.include]: Failed opening &#8216;include/templates/side\_r\_uncached.php&#8217; for inclusion (include\_path=&#8217;C:\php528nts\pear;d:\websites\ukwwwroot&#8217;) in D:\websites\ukwwwroot\sell\order\_monitor_complete.php on line 188

I&#8217;m not sure whether these errors really give too much away, but they are still a security risk by releasing information that you don&#8217;t want us to know.

Such as that you&#8217;re using Windows to serve your site and the paths you&#8217;re including from.

**Security Experts:** I&#8217;m not seeing any obvious vulnerabilities, are you?

**Cex:** I&#8217;m available for consultancy and can fix these errors for you.

Let&#8217;s see who gets there first&#8230;

Times are hard hey?