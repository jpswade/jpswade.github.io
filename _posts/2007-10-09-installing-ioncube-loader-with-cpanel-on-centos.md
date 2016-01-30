---
id: 135
title: Installing IonCube Loader with cPanel on CentOS
date: 2007-10-09T01:13:46+00:00
author: admin
layout: post
guid: http://jpswade.github.io/posts/installing-ioncube-loader-with-cpanel-on-centos
permalink: /installing-ioncube-loader-with-cpanel-on-centos/
categories:
  - Sysadmin
tags:
  - Linux
---
<p class="lead">
  There seems to be limited details of how this is done. It&#8217;s fairly simple to be honest, but I felt it could save somebody some time if it was documented.
</p>

In case you were wondering IonCube is a PHP encoder, usually used to stop people stealing your PHP code when you distribute it. Consequently to run the encoded PHP you require a &#8220;loader&#8221;, which will run it correctly.

<!--more-->If your server does not have IonCube loader installed these are the steps you need to take.

  1. Visit the [IonCube loader](http://www.ioncube.com/loaders.php) page and choose a download for your operating system. 
      * In this case we will be selecting the Linux (x86) &#8220;.tar.gz&#8221; [download](http://downloads2.ioncube.com/loader_downloads/ioncube_loaders_lin_x86.tar.gz) for CentOS 4.
  2. Use &#8220;cd&#8221; to go to your home directory (usually /root).
  3. You need to download the file, issue: wget http://downloads2.ioncube.com/loader\_downloads/ioncube\_loaders\_lin\_x86.tar.gz
  4. Next, extract the files from the tarball, issue: tar zxvf ioncube\_loaders\_lin_x86.tar.gz
  5. We now need to move the directory to the correct path, issue: mv ioncube /usr/local
  6. Next we need to change our active directory, issue: cd /usr/local/ioncube
  7. We now need to find out where the &#8220;php.ini&#8221; is stored, issue: php ioncube-loader-helper.php page=install-assistant 
      * You should see something similar to &#8220;<code>/usr/local/Zend/etc/php.ini</code>&#8221;.
      * Also take note of the part that says &#8220;ioncube\_loader\_lin_4.4.so&#8221; we will use this file later.
  8. Next we need to edit the file, issue: nano /usr/local/Zend/etc/php.ini 
      * You can use any editor you like such as nano/pico or vi if you know what you&#8217;re doing.
  9. Find (ctrl+w) the &#8220;[Zend]&#8221; section of the &#8220;php.ini&#8221;, above the &#8220;zend_extension&#8221; line, place: <span class="green">zend_extension = /usr/local/ioncube/ioncube_loader_lin_4.4.so (followed by ctrl+x, Y then enter if using pico or nano).</span>
 10. <span class="green">Finally issue: service httpd restart </span>