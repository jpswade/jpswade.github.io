---
id: 164
title: ERROR 5 (0x00000005) Copying NTFS Security to Destination Directory
date: 2009-10-14T13:22:25+00:00
author: admin
layout: post
guid: http://www.devotedit.com/?p=164
permalink: /2009/10/14/error-5-0x00000005-copying-ntfs-security-to-destination-directory/
aktt_notify_twitter:
  - 'no'
categories:
  - Software
tags:
  - robocopy
  - samba
  - windows
---
Got this error today using [ROBOCOPY](http://en.wikipedia.org/wiki/Robocopy) to copy files to a [SAMBA](http://en.wikipedia.org/wiki/Samba_%28software%29) share.

> ERROR 5 (0x00000005) Copying NTFS Security to Destination Directory e:\xxxx\
  
> Access is denied.

I figured out a workaround&#8230;

<!--more-->

Backup mode cannot circumvent explicit NTFS deny ACL&#8217;s if the copier isn&#8217;t the objects&#8217; owner.

(Error message: ERROR 5 (0x00000005) Copying NTFS Security to Destination Directory. Access denied.)

You can overcome this error by just copying the data in the files with these Options setting:

> /COPY:DT instead of the /COPYALL option.

Why this works&#8230;

> /COPYALL is equivalent to /COPY:DATSOU, D=Data, A=Attributes, T=Timestamps, S=Security=[NTFS](http://en.wikipedia.org/wiki/NTFS "NTFS") [ACLs](http://en.wikipedia.org/wiki/Access_control_list "Access control list"), O=Owner info, U=aUditing info

We only need Data and Timestamps.