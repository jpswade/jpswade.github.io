---
id: 157
title: 'How I hacked my schools website &#8211; a look into the past'
date: 2008-01-25T10:40:50+00:00
author: admin
layout: post
guid: http://wade.be/posts/hacked-my-school
permalink: /hacked-my-school/
redirect_from: /posts/hacked-my-school/
categories:
  - Internet
  - Sysadmin
---
<p class="lead">
  When I was about 16 I hacked my schools website, why? how? Let&#8217;s find out&#8230;
</p>

<!--more-->To get the most from this story I have to provide you a bit of background&#8230;

Imagine, it&#8217;s year 9, and I&#8217;m at high school. We have just had a new head of IT teacher and a new IT technician. I learn very quickly that they are both very egotistical characters, for example, I recall the IT teacher saying:

> “I have been coding since I was 9 years old, and won competitions in computer magazines”.

…Yeah right, so that is why you’re a teacher?

Right from the very start, we never saw eye to eye, I was never quite sure why.

This teacher has (on more than one occasion) gone to extreme lengths to prove a point, such as in one instance where he poured his coffee all over a students 400+ page IT project and then threw it in the bin, just because they didn&#8217;t put a front cover on it. A point well made, nobody ever made that mistake again.

The network they ran was always pretty open, they never seemed to like to really lock anything down, however when they did, I always took great pleasure in finding a way around it, it was part of the fun, the thrill of the challenge.

However, back in the day these guys used to connect to our machines using &#8220;Netbus&#8221;, and open our CD-ROM drives, just for the fun of it. This was until I got smart and started using &#8220;Netbuster&#8221;.

Very early on I was able to do things on the network I shouldn&#8217;t have been able to do, included running the teacher profile script to gain access to their “Teacher Public”, where the teachers stored and shared files. I remember finding some very interesting documents.

It gets better&#8230;

The biggest breakthrough was when the head of IT had left his laptop hard drive completely shared and accessible over the network from any machine. A perfect opportunity to snatch any files that I felt had any valuable (password files, profile scripts, etc). One of them was the admin proxy script, which connected me directly to the router instead of the restricted network proxy (running on the server) allowing me to avoid a whole list of filters and logging. I also managed to grab a few other useful things, such as network tools, settings, documents and a CuteFTP .dat file (smdata.dat).

A few months passed, I used what I had for quite a while and never got detected. A few other things I did during this time was to firstly setup a fake hotmail page to grab passwords, secondly I installed a keylogger (kl2.zip &#8211; Key Logger 2) on certain machines which I knew staff members with admin rights used. During this time I also discovered that with the cuteftp dat file I could import it into my copy of cuteftp, however I soon discovered that the file was password protected.

I had to think outside the box, the my idea was to make a backup copy of my dat file and replace it with their dat file, I did this and ran cuteFTP, sure enough no password was required. I was then faced with a few sites (mostly default and audiowarez), however there was one site listed that was not warez related or there by default, that was the schools ftp login to the web hosting, the host was “schoolsite.edex.net.uk”, the username was “s423”, all very simple, however the password was masked. I remembered a trick I used to grab dial-up passwords, I simply used a password grabber (SnadBoy&#8217;s Revelation), and it worked! The password was: &#8220;babbage&#8221;, yes, all in lower case, no numbers, that’s babbage, as in _Charles Babbage_, known to some as the &#8220;Father of Computing&#8221;. This is simple stuff.

Once I have the login details, I get an ftp proxy and connect in to it and have a browse around, I find that the technician is actually hosting his _planetarium_ clan website on there. So, I do nothing, nothing at all, until I hear news that the head of IT and the technician is leaving the school to move to another school, together, at the same time. I wait, and wait, and they leave. I wait a bit longer. Then I upload &#8220;thementor.txt&#8221; (The Conscience of a Hacker by +++The Mentor+++), I leave that there for weeks, nothing, it remains for the entire time. Interesting…

I get bored… and so, one day at a friends house with nothing better to do, we proxy in to the ftp account and download an image from the front page of the headmaster holding (at the time we didn’t realise what it was) a bible, offering it up to the priest in front of him. We wanted to deface the site in a small way, noticeable but not destructive, we decided upon a “Homer Simpson” style donut. Hilarious! We photoshop’ed the donut into the headmaster’s hand, it now looked as if he was holding this large comical purple donut. It was then uploaded. The fun begins…

The site mains like this for roughly 3 weeks, with thementor.txt and the modified image in tact, without any sign of hassle, though some people did question it. This was boring, the way forward was to open a can of worms. One night I decided, for a laugh, to give out the password to a couple of my “geeky” friends, those who were interested anyway. It went from there. Once about 6 people had the password, there was no stopping the defacing. The entire site was changed, a picture of the school on the main page was set alight, the name of the school was changed, all the content was modified, funny, but somewhat excessive. I wait until people stop modifying it, until about 11pm, when I decide to go to bed, so I re-upload a backup copy of the site I have so the site is in a clean condition before I disappear, hoping that this will be the case in the morning…

The following morning I wake up and head off to school. I make it through the day without any hassle until about lunch time, when I get news that a so called friend of mine has been boasting about how HE “hacked” the schools site, and HE changed it all. Unfortunately because this guy was such an idiot, it was simply a matter of time before someone told on him. And so by the end of lunch, he was called in to the headmaster’s office…

In class I know that it only a matter of time before he breaks and tells them who else is involved and how he got the login details. And so without any time at all I am asked to head over to the headmasters office, where all involved (about 6 of us) all stand there and desperately discuss quietly what to do. My plan was to blame it all on the guy that let his ego get on top of him, we all agreed and so one by one we all went into the office trying to explain the situation to someone who understands as much about computers as I understand about the brain surgery.

I am the last to go in, unfortunately it seems that after I had gone to bed, someone had changed the site again, completely defacing it this time all together, it also seems that they already know what’s going on (a friend tipped me off when he came out of the office), and so I have to tell them the truth. They tell me that they had to call Edex (Their ISP at the time) and get the account suspended. At this point I realised the power I actually had. I was the only person in the entire school who had access to that web site, not even the headmaster had access, and because of this they had to get the ISP to remove it for them.

What I did was a hell of an experience and I have no regrets, apart from the fact I got a 5 day suspension for it, which involved staying at home doing very little, so it wasn’t all bad.

After this, I was asked to help the new head of IT to restore the website. I gained a few things out of the whole experience: a reputation, a lesson on how who to trust anyone with certain information, and how sometimes helping with security issues can be just as satisfying as breaking security.