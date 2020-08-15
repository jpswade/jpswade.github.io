---
id: 673
title: 'OpenVZ: Container already locked'
date: 2010-12-10T13:22:39+00:00
author: admin

guid: http://wade.be/?p=673
permalink: /openvz-container-already-locked/
aktt_notify_twitter:
  - yes
aktt_tweeted:
  - 1
categories:
  - Sysadmin
---
<p class="lead">
  f you received this message when you try and stop the VE&#8230;
</p>

<pre>[root@server ~]# vzctl stop 104
Container already locked</pre>

<!--more-->Here's 

_how to_ fix it:

  * Delete the lock file

<pre>[root@server ~]# rm /vz/lock/104.lck
rm: remove regular file `/vz/lock/104.lck'? y</pre>

  * Kill the checkpoint

<pre>[root@server ~]# vzctl chkpnt 104 --kill
Killing...</pre>

I also submitted this article onto the OpenVZ Wiki entitled &#8220;[Container already locked](http://wiki.openvz.org/Container_already_locked)&#8220;.

I did this because, there was nothing found on the OpenVZ website with regards to this before now:

> Your search &#8211; site:openvz.org &#8220;Container already locked&#8221; &#8211; did not match any documents.

Hope this helps!