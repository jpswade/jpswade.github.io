---
id: 151
title: Correct Documents and Settings folder on Windows 2000
date: 2007-11-16T00:46:46+00:00
author: admin
layout: post
guid: http://jpswade.github.io/posts/correct-documents-and-settings-folder-on-windows-2000
permalink: /correct-documents-and-settings-folder-on-windows-2000/
---
<p class="lead">
  Today I get a frantic call from a client who&#8217;s experiencing a little bit of trouble with his laptop.
</p>

&#8220;When it all loads up, it&#8217;s not the same as normal, my Outlook icon is missing, I can&#8217;t get to my email and my favourites are gone from Internet Explorer.&#8221;

He&#8217;s using Windows 2000, so my immediate suspicion is that he&#8217;s logged on as another user by mistake, so, it should be nothing more than a 5 minute job right?

<!--more-->Wrong.

It turns out that since I set his laptop up on the router, Windows 2000 has decided it will create him a new profile in a new local profile directory under &#8220;C:\Documents and Settings\&#8221;, so now instead of &#8220;C:\Documents and Settings\User\&#8221;, it&#8217;s now &#8220;C:\Documents and Settings\User.Machine\&#8221;, and the original profile still exists, but is not being read.

So my initial though is this. Simple, what I&#8217;ll do is just delete the user, and recreate it using the original directory. How wrong I was&#8230;

What I originally tried was this (not recommended)&#8230; first make a new administrator user, restart (not just logoff/logon), then you need to delete the user, rename the directory, then add the user again. THIS DID NOT WORK. I just ended up with another &#8220;User.Machine&#8221; directory again, after another try and a rename of this and that, and a few reboots in between, I got it to use the original &#8220;User&#8221; directory as it should.

However I discover some of the settings have gone missing, such as passwords. Naturally, clients like this don&#8217;t remember their passwords or have them written down and stored in a safe place, and have no way of recovering them. Great. That&#8217;s no good!

I have since then learned how to corrected restore the user profile back to the original documents and settings folder&#8230;

  1. Get the Security ID (SID) of the user 
      1. Download and install [getsid](http://download.microsoft.com/download/win2000platform/getsid/1.0/nt5/en-us/getsid.exe).
      2. Go to Start -> Run, type CMD, press &#8220;OK&#8221;.
      3. CD to the directory you installed getsid to (ie: cd &#8220;C:\Program Files\Resource Kit\&#8221;).
      4. Type: getsid \\MACHINE User \\MACHINE User 
          * Replace MACHINE with the computername and User with the username, and yes, you need it twice.
  2. Once you have that SID (the last 4 numbers in particular), you need to edit the registry. 
      1. You need to run &#8220;regedit&#8221; (from Start -> Run).
      2. Find HKEY\_LOCAL\_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\ProfileList
      3. Find the one that has the same key as the SID, click on that.
      4. On the left you should have a value entitled &#8220;ProfileImagePath&#8221;, double click that.
      5. You should see something like &#8220;%SystemDrive%\Documents and Settings\User.Machine&#8221;, simply change this back to &#8220;%SystemDrive%\Documents and Settings\User&#8221;. 
        

Problem solved!

_Note: I&#8217;m not sure how useful this will be as nobody really uses Windows 2000 any more, and I couldn&#8217;t think up an appropriate title. Hope this helps someone._

Also see: [Cannot move or rename the Documents and Settings folder](http://support.microsoft.com/kb/236621)