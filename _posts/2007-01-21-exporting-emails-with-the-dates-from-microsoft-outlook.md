---
id: 44
title: Exporting emails with the dates from Microsoft Outlook
date: 2007-01-21T11:28:18+00:00
author: admin
layout: post
guid: /exporting-emails-with-the-dates-from-microsoft-outlook
permalink: /exporting-emails-with-the-dates-from-microsoft-outlook/
categories:
  - Internet
  - Sysadmin
---
<p class="lead">
  <em><strong>The Problem:</strong></em>
</p>

By default when you try and export emails from Outlook, there are NO dates.

I wanted to export emails in a certain folder from outlook so I could then import the data into a database such as MySQL for further manipulation.

When I tried to export the emails, outlook would NOT export any of the header details or even something as simple as the date/time.

_**<!--more-->The Solution:**_

I spent a lot of time trying to find a solution to this.

After much searching I found this solution&#8230;

[http://www.topxml.com/snippetcentral/main.asp?view=viewsnippet〈=xml&id=v20020414223234](http://web.archive.org/web/20071018072710/http://topxml.com:80/snippetcentral/main.asp?view=viewsnippet&lang=xml&id=v20020414223234)

> Summary
  
> A set of short code snippets that I developed using Visual Basic for Applications (VBA) and MSXML4 that will export and import Microsoft Outlook objects including contacts, e-mail, notes, and task items. This is code snippet project still very much a work in progress and contributions are certainly welcome.
> 
> The code snippets I created here are written in the Visual Basic for Applications, or VBA, programming language included supported by all Microsoft Office applications. In this latest revision (as of February 2003), I updated the routines to include importing of certain Outlook objects such as appointments, contacts and notes. I have also improved the input error handling code. Next steps include more robust handling of fields containing no data. Having schemas associated with XML structured would also be good. Finally, if anyone has any ideas on how to do this reflectively, please let me know (maybe with C# in Outlook 11?).

If you are new to VBA, what you need to do first is read [this](http://www.outlookcode.com/d/vb.htm).

Basically what you need to do is hit Alt+F11 to open up the Visual Basic Editor, then you need to use Tools | References to add a reference to the Microsoft XML library. You should be able to use whichever version is the latest.

All you do then is go down the tree to the left, and double click the &#8220;ThisOutlookSession&#8221;. Once this is complete, hopefully you should be able to simply hit Alt+F8 and choose the ExportEmailToXml.

Once this is complete, simply open the xml file into excel, and save as a CVS file, MySQL will easily be able to import CVS files.