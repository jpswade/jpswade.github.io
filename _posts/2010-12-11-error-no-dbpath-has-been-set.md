---
id: 676
title: 'error: no dbpath has been set'
date: 2010-12-11T20:39:19+00:00
author: admin
layout: post
guid: http://jpswade.github.io/?p=676
permalink: /error-no-dbpath-has-been-set/
aktt_notify_twitter:
  - yes
aktt_tweeted:
  - 1
categories:
  - Sysadmin
tags:
  - centos
  - openvz
  - rpmdb
  - trac
  - yum
---
<div id="_mcePaste">
  I&#8217;ve recently been having trouble with a OpenVZ VPS upgraded from CentOS4 to CentOS5, here&#8217;s what I&#8217;m seeing when trying to rum a yum install of mod_python:
</div>

> <div>
>   [root@coffee ~]# yum install mod_python
> </div>
> 
> <div id="_mcePaste">
>   Loaded plugins: fastestmirror
> </div>
> 
> <div id="_mcePaste">
>   error: no dbpath has been set
> </div>
> 
> <div id="_mcePaste">
>   error: cannot open Packages database in /%{_dbpath}
> </div>
> 
> <div id="_mcePaste">
>   Traceback (most recent call last):
> </div>
> 
> <div id="_mcePaste">
>   File &#8220;/usr/bin/yum&#8221;, line 29, in ?
> </div>
> 
> <div id="_mcePaste">
>   yummain.user_main(sys.argv[1:], exit_code=True)
> </div>
> 
> <div id="_mcePaste">
>   File &#8220;/usr/share/yum-cli/yummain.py&#8221;, line 309, in user_main
> </div>
> 
> <div id="_mcePaste">
>   errcode = main(args)
> </div>
> 
> <div id="_mcePaste">
>   File &#8220;/usr/share/yum-cli/yummain.py&#8221;, line 157, in main
> </div>
> 
> <div id="_mcePaste">
>   base.getOptionsConfig(args)
> </div>
> 
> <div id="_mcePaste">
>   File &#8220;/usr/share/yum-cli/cli.py&#8221;, line 187, in getOptionsConfig
> </div>
> 
> <div id="_mcePaste">
>   self.conf
> </div>
> 
> <div id="_mcePaste">
>   File &#8220;/usr/lib/python2.4/site-packages/yum/__init__.py&#8221;, line 664, in <lambda>
> </div>
> 
> <div id="_mcePaste">
>   conf = property(fget=lambda self: self._getConfig(),
> </div>
> 
> <div id="_mcePaste">
>   File &#8220;/usr/lib/python2.4/site-packages/yum/__init__.py&#8221;, line 239, in _getConfig
> </div>
> 
> <div id="_mcePaste">
>   self._conf = config.readMainConfig(startupconf)
> </div>
> 
> <div id="_mcePaste">
>   File &#8220;/usr/lib/python2.4/site-packages/yum/config.py&#8221;, line 804, in readMainConfig
> </div>
> 
> <div id="_mcePaste">
>   yumvars[&#8216;releasever&#8217;] = _getsysver(startupconf.installroot, startupconf.distroverpkg)
> </div>
> 
> <div id="_mcePaste">
>   File &#8220;/usr/lib/python2.4/site-packages/yum/config.py&#8221;, line 877, in _getsysver
> </div>
> 
> <div id="_mcePaste">
>   idx = ts.dbMatch(&#8216;provides&#8217;, distroverpkg)
> </div>
> 
> <div id="_mcePaste">
>   TypeError: rpmdb open failed
> </div>

<div>
  Here&#8217;s how to fix it:
</div>

> <div>
>   [root@coffee ~]# rm /dev/urandom
> </div>
> 
> <div id="_mcePaste">
>   rm: remove regular file `/dev/urandom&#8217;? y
> </div>
> 
> <div id="_mcePaste">
>   [root@coffee ~]# mknod -m 644 /dev/urandom c 1 9
> </div>

<p class="lead">
  Nothing else seems to work, but this does indeed seem to solve the problem.
</p>

Perhaps I&#8217;ll finally get Trac installed&#8230;