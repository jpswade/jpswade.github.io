---
id: 322
title: Missing Mediaid.bin file
date: 2009-01-04T14:54:49+00:00
author: admin
layout: post
guid: http://wade.be/?p=322
permalink: /missing-mediaidbin-file/
dsq_needs_sync:
  - 1
categories:
  - Sysadmin
---
<p class="lead">
  Recently I got asked to backup a Vista machine. I&#8217;m not a big Vista fan, so this was the first time.
</p>

I went ahead and backed up the entire machine onto my external USB hard drive, no problems.

However when it came to restore to a new vista machine I found myself with the following error:

> The restore did not finish successfully. Error code:
  
> The backup file could not be found. Check your hardware configuration or restore from a different backup (0x8100001A).

<!--more-->Through the wonders of the internet I discovered the Microsoft Knowledgebase article appropreately titled &#8220;

[Error message when you use the Restore Files option to restore a backup file on a Windows Vista-based computer: &#8220;The restore did not finish successfully. Error code: 0x8100001A&#8221;](http://support.microsoft.com/kb/940263)&#8220;.

As it turns out I must have deleted the &#8220;what seems to be unimportant file&#8221; Mediaid.bin which the backup utility places in the root of the backup drive, with no reason or explanation.

I soon learned the importance of this file as usefully (sarcasm) the article says:

> If the backup location is inaccessible, or if the Mediaid.bin file is corrupted, contact Microsoft Customer Support Services (CSS) for help rebuilding the Mediaid.bin file.

Great, I&#8217;m really not going to be calling them, there must be another way&#8230;

Fortunately there was, and so to rebuild the &#8220;Mediaid.bin&#8221; file these are the steps to take:

  1. Download and unzip &#8220;[sdutil.zip](http://www.vistax64.com/attachments/vista-file-management/7039d1223093116-procedure-rebuild-mediaid-bin-restoring-backups-sdutil.zip)&#8221; and rename the containing &#8220;sdutil.ex_&#8221; to &#8220;sdutil.exe&#8221;.
  2. MOVE &#8220;sdutil.exe&#8221; to your backup drive. (eg: G:\)
  3. Right click on &#8220;sdutil.exe&#8221; and click &#8220;Properties&#8221;, click on the &#8220;Compatibility&#8221; tab at the top, and tick &#8220;Run as administrator&#8221;, follow the instructions. (If you don&#8217;t do this you&#8217;ll see &#8220;_Access is denied. (0x80070005)_&#8220;)
  4. Find the &#8220;Catalogs&#8221; directory and COPY the &#8220;GlobalCatalog.wbcat&#8221; to your backup drive (eg: G:\)
  5. Go to Start > &#8220;Start Search&#8221; and enter: cmd, click on the &#8220;cmd&#8221; program from the list.
  6. In the black command prompt window enter your backup drive (eg: G:), press enter, and the prompt will change to &#8220;G:\>&#8221;
  7. Now in that same window type: _sdutil mediaid GlobalCatalog.wbcat [backup drive (eg: G:\)]_and press enter.

A Mediaid.bin file should now appear on the backup drive and you should be able to continue with your restore as normal.

_Note: &#8220;sdutil.exe&#8221; only runs on Windows Vista, it will not run on Windows XP._

[source](http://www.vistax64.com/vista-file-management/184885-procedure-rebuild-mediaid-bin-restoring-backups.html).