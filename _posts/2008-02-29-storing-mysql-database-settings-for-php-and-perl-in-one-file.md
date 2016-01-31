---
id: 173
title: Storing mySQL database settings for php and perl in one file
date: 2008-02-29T11:36:10+00:00
author: admin
layout: post
guid: http://wade.be/posts/storing-mysql-database-settings-for-php-and-perl-in-one-file
permalink: /storing-mysql-database-settings-for-php-and-perl-in-one-file/
categories:
  - Sysadmin
---
<p class="lead">
  I have a situation where there&#8217;s two scripts.
</p>

  1. The main core of the code which is PHP based.
  2. A perl script which is called by the mail server for parsing incoming mail.

Both of these scripts require database access to the same database.

<!--more-->Previously the solution would be to have two separate files both containing effectively the same information. This is less than ideal, nobody wants settings in two places.

Some have suggested using SETENV with apache, however although this would work fine for the PHP aspect, it wouldn&#8217;t work for the perl script as it&#8217;s not called via apache.

Some have suggested using ini files, then using [parse\_ini\_file](http://www.php.net/parse_ini_file) for php, and the ini parser module in perl. My problem with this was that because ini files read as plain text, it becomes a security problem. It is argued that you could deny access using apache&#8217;s &#8220;.htaccess&#8221;, or put the file outside of the web directory (usually public_html). I didn&#8217;t think this was suitable.

After some thought, and a little assistance I propose the following solution:

Create settings.pl:

> #!/usr/local/bin/perl
> 
> $db_type = &#8216;mysql&#8217;;
  
> $db_host = &#8216;localhost&#8217;;
  
> $db_name = &#8221;;
  
> $db_user = &#8221;;
  
> $db_pass = &#8221;;

Hey presto, we now have 1 settings file that works for both perl and PHP.

_Note: If you&#8217;re using strict in perl, you&#8217;ll need to define the variables before you include the settings file, otherwise it will complain.
  
_ 

The problem is that php won&#8217;t evaluate the code, so we need to create another file, that will read the settings and evaluate them for use with PHP.

Create settings.php

> <?php
> 
> $c = file\_get\_contents(&#8216;settings.pl&#8217;);
  
> eval($c);
> 
> ?>

Problem solved. Enjoy!

Update: After some discussion it was suggested that another way would be to create an ini file, and simply rename it to a file that has a handler in your httpd (such as .pl or .cgi NOT .php as PHP would render it as plain text), then in perl you can use the parser such as [Config::INI](http://search.cpan.org/~kirsle/Config-INI-Simple-0.02/lib/Config/INI/Simple.pm) to read the file and in PHP use [parse\_ini\_file](http://www.php.net/parse_ini_file)(). The obvious downside to this is the additional overheads that the above method simply does not have. If you have a large amount of settings, it might be worth it.