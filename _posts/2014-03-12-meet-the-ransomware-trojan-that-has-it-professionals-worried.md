---
id: 1118
title: Meet the ransomware trojan that has IT professionals worried
date: 2014-03-12T13:07:40+00:00
author: wade
layout: post
guid: http://www.devotedit.com/?p=1118
permalink: /2014/03/12/meet-the-ransomware-trojan-that-has-it-professionals-worried/
image: /wp-content/uploads/2014/03/IMG_20140311_232356-940x198.jpg
categories:
  - Advice
tags:
  - security
  - trojan
  - virus
---
This week, for the first time I came into contact with the [CryptoLocker trojan](http://en.wikipedia.org/wiki/CryptoLocker). A virus that encrypts all of your documents and holds you to ransom to recover them.

This threat is very real and it&#8217;s the worst I&#8217;ve ever seen. It&#8217;s a game changer.

I first encountered the problem when documents on a network share were &#8220;corrupted&#8221;, Excel files became unopenable. It was very strange, unlike anything I&#8217;d heard of.

At first I suspected the hard disk or memory was at fault. It wasn&#8217;t. It was much worse.

<!--more-->I found that the file does open only to show a corrupted jumble of characters, the first line looks like this:

> !crypted!F5396107DE5443E3487226FBEABFA295<bÎÎózíðºÄ…

It looks like some kind of hash code.

Was this the workings of a virus? This is unlike any virus I&#8217;ve ever seen, one that encrypts documents on mapped network drives, surely not.

After a bit of research, I found that it is indeed a virus. A [particularly bad ransom virus](http://nakedsecurity.sophos.com/2013/10/18/cryptolocker-ransomware-see-how-it-works-learn-about-prevention-cleanup-and-recovery/) at that.

I found the infected machine, as it was the only one with &#8220;crypted&#8221; local files. The virus was identified as the [Ramdo/Redyms virus (acupx217.dll, EPUHelp.exe)](http://www.microsoft.com/security/portal/threat/encyclopedia/entry.aspx?Name=Trojan:Win32/Ramdo.A) and was removed.

I believe these were the catalyst for the deployment of a CrytoLocker type module.

Following the [advice from bleepingcomputer.com with regards to the CrytoLocker virus](http://www.bleepingcomputer.com/virus-removal/cryptolocker-ransomware-information#dropbox), I looked at restoring the crypted/corrupted files.

The very next day, I found that The Guardian had released an article on this very subject, entitled [PC users: beware of CryptoLocker malware](http://www.theguardian.com/money/2014/feb/27/pc-users-beware-cryptolocker-malware-royal-mail).

I decided it was time to send a reminder email out to the end users and make them aware of this very real threat that&#8217;s out there in the wild, this is what I sent:

> TL;DR: DO NOT OPEN EMAIL ATTACHMENTS YOU ARE UNSURE ABOUT; Always have a backup of your documents.
> 
> Hi all,
> 
> This is a warning about a new type of virus that many IT professionals are describing as a game changer.
> 
> There is a really bad virus being spread via links in e-mail that take the user to a bad site or attachments in an e-mail that contain the bad software. Its name is CryptoLocker.
> 
> If the link is clicked on or the attachment is opened the software starts up and goes on to encrypt, that is make unavailable, EVERY document the user has access to.
> 
> Once your machine is infected there is only one way to get out of the mess once the infected system is found and quarantined:
> 
> &#8211; Recover the files from a backup.
> 
> Simple rule of thumb: NEVER click on a link in an e-mail and avoid opening attachments if at all possible (Especially ZIP archives). And, if a link must be clicked on in an e-mail hover the mouse cursor over the link to see where it leads to. If it looks suspicious please ask!
> 
> As always, please be very careful and aware that bad people out there are always on the hunt for more victims. No business large or small is exempt from these activities.
> 
> For more information, please feel free to view the news coverage:
> 
> <http://www.theguardian.com/money/2014/feb/27/pc-users-beware-cryptolocker-malware-royal-mail>
> 
> If you have the opportunity, please see the [Watch CryptoLocker in action video](http://www.youtube.com/watch?v=Gz2kmmsMpMI).
> 
> Thank you.

If it wasn&#8217;t for the backups, we wouldn&#8217;t have had any chance of recovering the data without paying the ransom and even then we couldn&#8217;t be sure they would actually decrypt the files.

As I said, this threat is [very real](http://www.snopes.com/computer/virus/cryptolocker.asp), now is the time to act and ensure you have sufficient backups in place. Do not ignore this warning, there is no exception.

If you&#8217;re a systems administrator, there&#8217;s some very useful help over on reddit:

  * [CryptoLocker Recap: A new guide to the bleepingest virus of 2013.](http://www.reddit.com/r/sysadmin/comments/1p32lx/cryptolocker_recap_a_new_guide_to_the_bleepingest/)

The solution for domain systems administrators centres around deploying a Software Restriction Policy that blocks exe files from running in the APPDATA directory.