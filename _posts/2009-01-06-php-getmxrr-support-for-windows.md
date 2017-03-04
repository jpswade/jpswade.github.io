---
id: 332
title: PHP getmxrr() support for windows
date: 2009-01-06T22:23:41+00:00
author: admin
layout: post
guid: http://wade.be/?p=332
permalink: /php-getmxrr-support-for-windows/
tags:
  - getmxrr
---
<p class="lead">
  As many of you may be aware there's <a href="http://bugs.php.net/bug.php?id=5311">a lack of getmxrr() support in Windows</a>, which dates back as far as <a href="http://bugs.php.net/bug.php?id=1660">1999</a>.
</p>

It's not a major problem for me as an individual because I never use WIN32 PHP in production, but for development and for the purpose of wide distribution it can raise an issue.

Apparently the lack of support in win32 is due to the [lack of &#8220;res\_search&#8221; in &#8220;bindlib\_w32&#8221;](http://bugs.php.net/bug.php?id=7288), I'm surprised this hasn't been fixed already.

The official PHP.net documentation for the [getmxrr()](http://www.php.net/getmxrr) function states:

> <strong class="note">Note</strong>: This function is not implemented on Windows platforms. Try the [» PEAR](http://pear.php.net/){.link.external} class [» Net_DNS](http://pear.php.net/package/Net_DNS){.link.external}.

However, there are problems with this suggestion&#8230;

<!--more-->

  1. Some users don't have access to install the required PEAR module.
  2. _pear/Net_DNS requires PHP extension &#8220;mhash&#8221;_ &#8211; some users may not have this installed.
  3. The Net_DNS class does not have a direct equivalent to getmxrr() so results may not be as expected.
  4. It's not a portable solution, especially if some users experience the above issues.

This isn't going to be a realistic option for many users.

So, what are the alternatives? Do they have any issues?

  1. Use [exec()](http://www.php.net/exec) in conjunction with &#8220;[nslookup.exe](http://support.microsoft.com/kb/200525)&#8220;. 
      * When safe mode is enabled, you can only execute files within the safe\_mode\_exec_dir. For practical reasons, it is currently not allowed to have .. components in the path to the executable.
      * &#8220;nslookup.exe&#8221; may not exist on the system.
      * PHP may not have permission to run &#8220;nslookup.exe&#8221;.
  2. Write your own class/function to [fsockopen()](http://www.php.net/fsockopen) via UDP to a name server and parse the returned information. 
      * Long and overly complex.
      * Requires understanding of the [DNS related RFCs](http://www.dns.net/dnsrd/rfc/).
      * Reinventing the wheel, as Net_DNS already handles this.
      * Results may not be as expected.
  3. Fix the implementation problem in PHP core. 
      * Not very simple to implement.
      * May be a complex issue.
      * Not backwards compatible.

I think the obvious option here is to run with the first option of using &#8220;nslookup&#8221; and hope for the best.

With any luck you will find the &#8220;[getmxrr() support for Windows](http://www.google.com/search?q="getmxrr()+support+for+Windows"+site%3Aphp.net+OR+site%3Agoogle.com)&#8221; function in on the [getmxrr()](http://www.php.net/getmxrr) manual page (_find the latest [here](?dl=getmxrr.phps)_).

**NEWS FLASH!**

As I write this, and go over the article again, check my links, I see an update on the [PHP Bug #5311](http://bugs.php.net/bug.php?id=5311) tracker:

> <pre class="note">As a new year present, all DNS functions are now available on windows,
5.3 and 6 (head).</pre>

This is good news, all that remains is for [PHP_Compat](http://pear.php.net/package/PHP_Compat) to catch up and use the above suggestions <img src="http://wade.be/wp-includes/images/smilies/simple-smile.png" alt=":)" class="wp-smiley" style="height: 1em; max-height: 1em;" />

Good luck.

**Update:** I am now helping the PHP_Compat team. View the [getmxrr() support for windows feature request](http://pear.php.net/bugs/bug.php?id=15531).

**Update2:** I have now decided to support [checkdnsrr()](http://www.php.net/checkdnsrr) as well. [Download checkdnsrr() support for windows](?dl=checkdnsrr.phps).

**Update3:** I have now decided to support [dns\_get\_record()](http://www.php.net/dns_get_record) as well. Coming soon.