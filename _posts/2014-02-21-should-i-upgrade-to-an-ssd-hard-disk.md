---
id: 1106
title: Should I upgrade to an SSD hard disk?
date: 2014-02-21T10:00:43+00:00
author: wade
layout: post
guid: http://www.devotedit.com/?p=1106
permalink: /2014/02/21/should-i-upgrade-to-an-ssd-hard-disk/
image: /wp-content/uploads/2014/02/Z3YcA-500x198.jpg
categories:
  - Advice
tags:
  - hard disk
  - hdd
  - ssd
  - upgrade
---
It&#8217;s always been my opinion that the hard disk is really the crux of your computer because it&#8217;s the only mechanical part that affects the speed.

So I understand why it&#8217;s tempting to opt for a solid state disk (SSD) over a mechanical one.<!--more-->

**Is it failing?**

You&#8217;ll find that if you swap out an old (5+ years) or audibly noisy (loud ticking and such) disk with a new one of any kind, it usually performs a lot better as it&#8217;s probably on it&#8217;s way out.

I always use [gsmartcontrol](http://gsmartcontrol.sourceforge.net/home/index.php/Downloads) to see if the disk is failing, if it is, it&#8217;s an instant swap out. There&#8217;s a windows installer or portable version, or you can even download the [PartedMagic](http://partedmagic.com/) boot disc ISO.

Once I&#8217;ve discovered there&#8217;s a fault and have sourced a replacement disk, I generally use [Easus DiskCopy](http://www.easeus.com/disk-copy/) to clone the disk. I&#8217;ve tried lots of cloning solutions, including Norton Ghost and the free Clonezilla, but I&#8217;ve found they don&#8217;t always work as expected, unlike the Easus solution, which hasn&#8217;t failed me yet.

**Is your memory holding you back?**

If the hard disk isn&#8217;t failing or noisy then it might be worth upgrading your RAM first.

Sticking a bit more RAM in the machine will help because then it won&#8217;t need to use the virtual memory (page file) on the hard disk as much.

I usually use [Crucial](http://devotedit.com/crucial) to buy my RAM as their System Scanner is ideal and delivery is reliable and fast.

**Slow to start?**

If you&#8217;ve maxed out your RAM and replaced your faulty hard disk, but your system still has a slow boot time, there&#8217;s a few tweaks you can do to get things going a bit faster.

I&#8217;ve tried plenty of tools over the years to help with [startup problems](http://www.devotedit.com/2012/12/12/startup-problems-are-a-thing-of-the-past/), but I&#8217;ve finally settled on one I like, [Soluto](https://www.soluto.com/).

**Are SSD hard disks actually better?**

In theory, they should be, because they aren&#8217;t a mechanical device, you would expect them to be. However, they don&#8217;t always perform in the way you might expect.

Not too long ago, we had a Windows Server, serving a file system with an access database. I had maxed out the RAM and tweaked everything already, so when SSD hard disks started to become a bit more viable we opted to swap out the hard disks with shiny new SSD disks.

However, as it turns out, it didn&#8217;t make the database access any quicker and I was left disappointed. At that point, I&#8217;d had enough of Access and advised that a web based solution should be implemented as a replacement.

My current laptop has an SSD. I take it everywhere with me, so I wanted it to be as reliable as possible, that&#8217;s why I chose an SSD over mechanical disk which are more prone to knocks and drops.

I figured I&#8217;d not keep much on the actual laptop itself and opted for a 128GB hard disk, however, you find yourself running out of disk space quite quickly. 200MB for a SYSTEM partition, 16GB for a &#8220;Recovery&#8221; partition, 100MB for a HP_TOOLS partition and 4GB for the &#8220;Hibernation&#8221; partition, leaving under 100GB for your boot partition. By this point my Windows directory is now taking up 22GB leaving not a lot for everything else.

You certainly don&#8217;t get &#8220;bang for buck&#8221; with an SSD hard disk.

**So what should I buy?**

Unless you know a solid state disk will vastly improve performance or your hard disk is susceptible to damage, I would opt for a regular hard disk.

There&#8217;s plenty of information coming out all the time about what hard disks people are currently using in production environments and [which you should buy](http://blog.backblaze.com/2014/01/21/what-hard-drive-should-i-buy/), so keep your eye out, but don&#8217;t forget to do your own research too.