---
id: 684
title: Installing Subversion on a cPanel Server
date: 2010-12-21T17:37:50+00:00
author: admin
layout: post
guid: http://jpswade.github.io/?p=684
permalink: /installing-subversion-on-a-cpanel-server/
aktt_notify_twitter:
  - yes
aktt_tweeted:
  - 1
categories:
  - Sysadmin
tags:
  - centos
  - centos4
  - el4
  - rpmforge
  - subversion
  - svn
  - yum
---
<p class="lead">
  It should be easy right? Just &#8220;yum install subversion&#8221;.
</p>

Nope. You get this error message:

> Error: Missing Dependency: perl(URI) >= 1.17 is needed by package

<!--more-->It&#8217;s not a problem in CentOS, no, it&#8217;s a restriction created by cPanel to control what is installed using yum.

Here&#8217;s what you do:

  * Edit your &#8220;/etc/yum.conf&#8221; file.
  * Remove &#8220;perl*&#8221; from the &#8220;exclude&#8221; line.
  * Run your &#8220;yum install subversion&#8221;
  * Add the &#8220;perl*&#8221; back to the &#8220;exclude&#8221; line in the yum file.

That&#8217;s it! It will install as expected.

**Update**

If you&#8217;re using CentOS4 you may get the following error when exporting:

<pre>[user@server ~]$ svn export http://server/svn/project/directory/filename
svn: REPORT request failed on '/svn/project/!svn/vcc/default'
svn:
Cannot replace a directory from within</pre>

This is caused by <a href="http://subversion.tigris.org/issues/show_bug.cgi?id=1708" rel="nofollow">a bug</a> which was <a href="http://svn.collab.net/viewvc/svn?view=revision&revision=12686" rel="nofollow">fixed</a> and released in subversion version 1.2.0, however, RHEL4 (Redhat Enterprise Linux 4) and CentOS 4 use Subversion 1.1.4 from 2005 which doesn&#8217;t have this fix.

The solution is to install the latest version of SVN from a third party repository such as [RPMForge](http://wiki.centos.org/AdditionalResources/Repositories/RPMForge):

> wget http://pkgs.repoforge.org/rpmforge-release/rpmforge-release-0.5.2-2.el4.rf.i386.rpm
> 
> rpm -Uhv rpmforge-release-0.5.2-2.el4.rf.i386.rpm

Once RPMForge (and RPMForge extras) is setup, simply run:

> yum install &#8211;enablerepo=rpmforge-extras subversion

That&#8217;s it!