---
id: 178
title: 50+ PHP optimisation tips revisited
date: 2008-05-20T17:51:28+00:00
author: admin
layout:
  - default
guid: http://jpswade.github.io/?p=178
permalink: /50-php-optimisation-tips-revisited/
aktt_notify_twitter:
  - yes
categories:
  - Development
tags:
  - Optimisation
  - php
---
<p class="lead">
  After reading an article some time ago entitled &#8220;<a href="http://digg.com/programming/40_Tips_for_optimizing_your_php_Code">40 Tips for optimizing your php Code</a>&#8221; (and some others that are suspiciously similar), I decided to redo it, but properly this time with more accurate tips, providing references and citations for each and every one.
</p>

The result is this list of over 50 PHP optimisation tips&#8230;

**Update: The list is more like 50+ PHP tips and tricks these days.**

Enjoy!

<!--more-->

  1. [_echo_](http://www.php.net/echo) is faster than [_print_](http://www.php.net/print). [[Citation]](http://web.archive.org/web/20050407085143/http://dynacker.dotgeek.org/printvsecho/)
  2. Wrap your string in single quotes (&#8216;) instead of double quotes (&#8220;) is faster because PHP searches for variables inside &#8220;&#8230;&#8221; and not in &#8216;&#8230;&#8217;, use this when you&#8217;re not using variables you need evaluating in your string. [[Citation]](http://spindrop.us/2007/03/03/php-double-versus-single-quotes/)
  3. Use sprintf instead of variables contained in double quotes, it&#8217;s about 10x faster. [[Citation]](http://teroheikkinen.iki.fi/blog/php-s_different_echo_methods_performance_comparison/)
  4. Use [echo](http://www.php.net/echo)&#8216;s multiple parameters (or stacked) instead of string concatenation. [[Citation]](http://blog.libssh2.org/index.php?/archives/28-How-long-is-a-piece-of-string.html)
  5. Use pre-calculations, set the maximum value for your for-loops before and not in the loop. ie: [for](http://www.php.net/for) ($x=0; $x < count($array); $x), this calls the count() function each time, use $max=count($array) instead before the for-loop starts. [[Citation]](http://www.php.lt/benchmark/phpbench.php)
  6. Unset or null your variables to free memory, especially large arrays. [[Citation]](http://lists.nyphp.org/pipermail/talk/2003-January/001855.html)
  7. Avoid magic like [\_\_get, \_\_set](http://uk2.php.net/manual/en/language.oop5.overloading.php), [__autoload](http://www.php.net/__autoload). [[Citation]](http://www.ilia.ws/files/zend_performance.pdf)
  8. Use require() instead of require_once() where possible. [[Citation]](http://peter.mapledesign.co.uk/weblog/archives/writing-faster-php-code-1-require_once)
  9. Use [full paths](http://en.wikipedia.org/wiki/Path_(computing)) in includes and requires, less time spent on resolving the OS paths. [[Citation]](http://t3.dotgnu.info/blog/php/include_once-mostly-harmless.html)
 10. require() and include() are identical in every way except require halts if the file is missing. Performance wise there is very little difference. [[Citation]](http://groups.google.com/group/php.general/browse_thread/thread/72332fe1ed21e104/b1650148cd6e3c17?lnk=st&q=php+require+vs+include+performance#b1650148cd6e3c17)
 11. Since PHP5, the time of when the script started executing can be found in $\_SERVER[’REQUEST\_TIME’], use this instead of time() or microtime(). [[Citation]](http://www.php.net/time)
 12. [PCRE](http://www.php.net/pcre) regex is quicker than [EREG](http://www.php.net/ereg), but always see if you can use quicker native functions such as [strncasecmp](http://www.php.net/strncasecmp), [strpbrk](http://www.php.net/strpbrk) and [stripos](http://www.php.net/stripos) instead. [[Citation]](http://talks.php.net/show/php-best-practices/36)
 13. When parsing with XML in PHP try [xml2array](http://www.bin-co.com/php/scripts/xml2array/), which makes use of the [PHP XML functions](http://www.php.net/xml), for HTML you can try PHP&#8217;s [DOM document](http://www.php.net/dom) or [DOM XML](http://www.php.net/domxml) in PHP4. [[Citation]](http://htmlparsing.icenine.ca/)
 14. [str_replace](http://www.php.net/str_replace) is faster than [preg_replace](http://www.php.net/preg_replace), str_replace is best overall, however [strtr](http://www.php.net/strtr) is sometimes quicker with larger strings. Using array() inside str\_replace is usually quicker than multiple str\_replace. [[Citation]](http://www.tummblr.com/web-development/php/php-speed-of-string-replacement-functions/)
 15. &#8220;else if&#8221; statements are faster than [select statements](http://en.wikipedia.org/wiki/Switch_statement) aka [case/switch](http://www.php.net/switch). [[Citation]](http://www.php.lt/benchmark/phpbench.php)
 16. Error suppression with @ is very slow. [[Citation]](http://michelf.com/weblog/2005/bad-uses-of-the-at-operator/)
 17. To reduce bandwidth usage turn on mod_deflate in Apache v2 [[Citation]](http://howtoforge.com/apache2_mod_deflate) or for Apache v1 try mod_gzip. [[Citation]](http://talks.php.net/show/php-best-practices/40)
 18. Close your database connections when you&#8217;re done with them. [[Citation]](http://uk.php.net/manual/en/function.mysql-close.php#69063)
 19. $row[’id’] is [7 times faster](http://www.moskalyuk.com/blog/php-optimization-tips/1272) than $row[id], because if you don&#8217;t supply quotes it has to guess which index you meant, assuming you didn&#8217;t mean a constant. [[Citation]](http://www.php.net/constants#language.constants.syntax)
 20. Use <?php &#8230; ?> tags when declaring PHP as all other styles are depreciated, including short tags. [[Citation]](http://talks.php.net/show/php-best-practices/10)
 21. Use strict code, avoid suppressing errors, notices and warnings thus resulting in cleaner code and less overheads. Consider having [error\_reporting(E\_ALL)](http://www.php.net/error_reporting) always on. [[Citation]](http://talks.php.net/show/php-best-practices/11)
 22. PHP scripts are be served at 2-10 times slower by Apache httpd than a static page. Try to use static pages instead of server side scripts. [[Citation]](http://talks.php.net/show/php-best-practices/34)
 23. PHP scripts (unless cached) are compiled on the fly every time you call them. Install a PHP caching product (such as [memcached](http://www.php.net/memcache) or [eAccelerator](http://eaccelerator.net/) or [Turck MMCache](http://sourceforge.net/projects/turck-mmcache/)) to typically increase performance by 25-100% by removing compile times. You can even [setup eAccelerator on cPanel using EasyApache3](http://www.cpanel.net/support/docs/ea/ea3/ea3php_php_extensionmgr.html). [[Citation]](http://www.phpfive.net/php-opcode-caching-with-eaccelerator-article45.htm)
 24. An alternative caching technique when you have pages that don&#8217;t change too frequently is to cache the HTML output of your PHP pages. Try [Smarty](http://smarty.php.net/) or [Cache Lite](http://pear.php.net/Cache_Lite). [[Citation]](http://phplens.com/phpeverywhere/tuning-apache-php)
 25. Use isset where possible in replace of strlen. (ie: if (strlen($foo) < 5) { echo &#8220;Foo is too short&#8221;; } vs. if (!isset($foo{5})) { echo &#8220;Foo is too short&#8221;; } ). [[Citation]](http://blog.dynom.nl/archives/String-length-vs-isset-to-check-string-lengths_20070807_5.html)
 26. ++$i is faster than $ i++, so [use pre-increment where possible](http://www.hudzilla.org/phpwiki/index.php?title=Pre-increment_where_possible). [[Citation]](http://talks.php.net/show/php-best-practices/32)
 27. Make use of the countless predefined functions of PHP, don&#8217;t attempt to build your own as the native ones will be far quicker; if you have very time and resource consuming functions, consider writing them as C extensions or modules. [[Citation]](http://talks.php.net/show/php-best-practices/31)
 28. Profile your code. A profiler shows you, which parts of your code consumes how many time. The [Xdebug debugger](http://xdebug.org/) already contains a profiler. Profiling shows you the bottlenecks in overview. [[Citation]](http://talks.php.net/show/php-best-practices/39)
 29. Document your code. [[Citation]](http://talks.php.net/show/php-best-practices/16)
 30. Learn the difference between good and bad code. [[Citation]](http://www.sitepoint.com/blogs/2007/05/25/good-and-bad-php-code/)
 31. Stick to coding standards, it will make it easier for you to understand other people&#8217;s code and other people will be able to understand yours. [[Citation]](http://talks.php.net/show/php-best-practices/15)
 32. Separate code, content and presentation: keep your PHP code separate from your HTML. [[Citation]](http://www.ibm.com/developerworks/library/wa-phprock1/index.html)
 33. Don&#8217;t bother using complex template systems such as Smarty, use the one that&#8217;s included in PHP already, see [ob\_get\_contents](http://www.php.net/ob_get_contents) and [extract](http://www.php.net/extract), and simply pull the data from your database. [[Citation]](http://www.massassi.com/php/articles/template_engines/)
 34. Never trust variables coming from user land (such as from $_POST) use [mysql\_real\_escape_string](http://www.php.net/mysql_real_escape_string) when using mysql, and [htmlspecialchars](http://www.php.net/htmlspecialchars) when outputting as HTML. [[Citation]](http://talks.php.net/show/php-best-practices/19)
 35. For security reasons never have anything that could expose information about paths, extensions and configuration, such as display_errors or [phpinfo](http://www.php.net/phpinfo)() in your webroot. [[Citation]](http://talks.php.net/show/php-best-practices/24)
 36. Turn off [register_globals](http://www.php.net/register_globals) (it&#8217;s disabled by default for a reason!). No script at production level should need this enabled as it is a security risk. Fix any scripts that require it on, and fix any scripts that require it off using [unregister_globals()](http://uk.php.net/manual/en/security.globals.php#82542). Do this now, as it&#8217;s set to be removed in PHP6. [[Citation]](http://talks.php.net/show/php-best-practices/27)
 37. Avoid using plain text when storing and evaluating passwords to avoid exposure, instead use a hash, such as an [md5](http://www.php.net/md5) hash. [[Citation]](http://talks.php.net/show/php-best-practices/28)
 38. Use [ip2long](http://www.php.net/ip2long)() and [long2ip](http://www.php.net/long2ip)() to store IP addresses as integers instead of strings. [[Citation]](http://blog.rightbrainnetworks.com/2006/09/18/10-things-you-probably-didnt-know-about-php/)
 39. You can avoid reinventing the wheel by using the PEAR project, giving you existing code of a high standard. [[Citation]](http://www.moskalyuk.com/blog/php-optimization-tips/1272)
 40. When using header(&#8216;Location: &#8216;.$url); remember to follow it with a die(); as the script continues to run even though the location has changed or avoid using it all together where possible. [[Citation]](http://richardlynch.blogspot.com/2007/06/php-header-location-redirect-refresh.html)
 41. In [OOP](http://www.php.net/oop), if a method can be a [static method](http://en.wikipedia.org/wiki/Method_(computer_science)#Static_methods), declare it static. Speed improvement is by a factor of 4. [[Citation]](http://ilia.ws/files/frankfurt_perf.pdf).
 42. Incrementing a local variable in an OOP method is the fastest. Nearly the same as calling a local variable in a function and incrementing a global variable is 2 times slow than a local variable. [[Citation]](http://phplens.com/lens/php-book/optimizing-debugging-php.php)
 43. Incrementing an object property (eg. $this->prop++) is 3 times slower than a local variable. [[Citation]](http://phplens.com/lens/php-book/optimizing-debugging-php.php)
 44. Incrementing an undefined local variable is 9-10 times slower than a pre-initialized one. [[Citation]](http://phplens.com/lens/php-book/optimizing-debugging-php.php)
 45. Just declaring a global variable without using it in a function slows things down (by about the same amount as incrementing a local var). PHP probably does a check to see if the global exists. [[Citation]](http://phplens.com/lens/php-book/optimizing-debugging-php.php)
 46. Method invocation appears to be independent of the number of methods defined in the class because I added 10 more methods to the test class (before and after the test method) with no change in performance. [[Citation]](http://phplens.com/lens/php-book/optimizing-debugging-php.php)
 47. Methods in derived classes run faster than ones defined in the base class. [[Citation]](http://phplens.com/lens/php-book/optimizing-debugging-php.php)
 48. A function call with one parameter and an empty function body takes about the same time as doing 7-8 $localvar++ operations. A similar method call is of course about 15 $localvar++ operations. [[Citation]](http://phplens.com/lens/php-book/optimizing-debugging-php.php)
 49. Not everything has to be OOP, often it is just overhead, each method and object call consumes a lot of memory. [[Citation]](http://talks.php.net/show/php-best-practices/33)
 50. Never trust user data, escape your strings that you use in SQL queries using [mysql\_real\_escape_string](http://www.php.net/mysql_real_escape_string), instead of mysql\_escape\_string or addslashes. Also note that if [magic\_quotes\_gpc](http://www.php.net/magic_quotes_gpc) is enabled you should use [stripslashes](http://www.php.net/stripslashes) first. [[Citation]](http://www.jemjabella.co.uk/articles/php-security-tips)
 51. Avoid the PHP mail() function header injection issue. [[Citation]](http://uk3.php.net/manual/en/function.mail.php#56788)
 52. Unset your database variables (the password at a minimum), you shouldn&#8217;t need it after you make the database connection.
 53. [RTFM!](http://en.wikipedia.org/wiki/RTFM) PHP offers a [fantastic manual](http://www.php.net/manual/), possibly one of the best out there, which makes it a very hands on language, providing working examples and talking in plain English. Please USE IT! [[Citation]](http://xkcd.com/293/)

If you still need help, try #PHP on the [EFnet](http://chat.efnet.org/) IRC Network. (Read the !rules first).

Also see:

  * an <a href="http://phplens.com/lens/php-book/optimizing-debugging-php.php" target="_blank">Excellent Article</a> about optimizing PHP by John Lim
  * [PEAR coding standards](http://pear.php.net/manual/en/standards.php)
  * [PHP best practices](http://talks.php.net/show/php-best-practices/) by ez.no (Use left and right keys to scroll through the pages)
  * [Tuning Apache and PHP for Speed on Unix](http://phplens.com/phpeverywhere/tuning-apache-php)
  * [Premature Optimisation](http://c2.com/cgi/wiki?PrematureOptimization)
  * [PHP and Performance](http://ilia.ws/files/frankfurt_perf.pdf)
  * [Performance Tuning PHP](http://www.scribd.com/doc/10633/Performance-Tuning-PHP)
  * [Develop rock-solid code in PHP](http://www.ibm.com/developerworks/library/wa-phprock1/index.html)
  * [12 PHP optimization tips](http://www.moskalyuk.com/blog/php-optimization-tips/1272)
  * [10 things you (probably) didn’t know about PHP](http://blog.rightbrainnetworks.com/2006/09/18/10-things-you-probably-didnt-know-about-php/)

Think you&#8217;re a PHP guru now? See if you can [answer these questions](http://www.nickhalstead.com/2007/05/23/php-interview-questions-from-yahoo/).