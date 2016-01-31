---
id: 181
title: Adding table controls and support to TinyMCE in WordPress
date: 2008-03-28T13:20:12+00:00
author: admin
layout: post
guid: http://wade.be/posts/adding-table-controls-and-support-to-tinymce-in-wordpress
permalink: /adding-table-controls-and-support-to-tinymce-in-wordpress/
categories:
  - Development
---
<p class="lead">
  One thing wordpress has always lacked is the ability to handle tabular data. This is not because it can&#8217;t handle it, after all it&#8217;s only HTML, but the problem is that by default the setup does NOT include tablecontrols in it&#8217;s TinyMCE setup.
</p>

Here&#8217;s what you need to do to get table controls added into WordPress&#8217;s TinyMCE&#8230;

<!--more-->

  1. Check your TinyMCE plugins to see if you have table support, they are found at &#8220;wp-includes/js/tinymce/plugins/tables/&#8221;, if you don&#8217;t&#8230; 
      1. Download TinyMCE, to know which version to download, open /wp-includes/js/tinymce/tiny_mce.js and check this.majorVersion (it should say &#8220;2&#8221;).
      2. Visit the [TinyMCE download site](http://tinymce.moxiecode.com/download.php), and download the latest of the appropriate major version. (tinymce\_2\_1_3.zip)
      3. Extract the .zip and go to &#8220;tinymce\jscripts\tiny_mce\plugins\&#8221;, upload the &#8220;table&#8221; directory to &#8220;wp-includes/js/tinymce/plugins/&#8221;.
  2. Edit &#8220;wp-includes/js/tinymce/tiny\_mce\_config.php&#8221; 
      1. FIND $plugins = array(&#8216;inlinepopups&#8217;, &#8216;autosave&#8217;, &#8216;spellchecker&#8217;, &#8216;paste&#8217;, &#8216;wordpress&#8217;);
      2. UNDER ADD $plugins[]=&#8217;table&#8217;;
      3. FIND &#8220;, &#8216;wp\_adv\_end'&#8221; INLINE REPLACE WITH &#8221; , &#8216;tablecontrols&#8217;, &#8216;wp\_adv\_end'&#8221;

Once this is done, login to the admin area, go to write or manage a post or page, you will find that in the visual editor there&#8217;s a button on the right, which if you hover your mouse over is entitled advanced options, clicks this and you will then be faced with another row, which contains the new table controls.

Enjoy!