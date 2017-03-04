---
id: 193
title: How to bulk convert WMA to MP3
date: 2008-05-12T21:15:30+00:00
author: admin
layout: post
guid: http://wade.be/?p=193
permalink: /how-to-bulk-convert-wma-to-mp3/
sandpaper:
  - 1
---
<p class="lead">
  So you just downloaded an entire album, and it's in .wma (windows media audio) format, and you, of course, like any normal person want it in the .mp3 format.
</p>

What do you do?

<!--more-->

There's plenty of software solutions out there&#8230;

  * [SUPER](http://super.free.free.fr/) &#8211; Free, converts anything, a bit dodgy.
  * [Various FFmpeg based projects](http://ffmpeg.mplayerhq.hu/projects.html) &#8211; Free
  * [dBpoweramp Music Converter](http://www.dbpoweramp.com/dmc.htm) &#8211; 30 days free trial
  * [Daniusoft MP3 WAV Converter](http://www.freedownloadmanager.org/downloads/Daniusoft_MP3_WAV_Converter_53248_p/free.htm) &#8211; Free
  * [Audio MP3 WAV WMA OGG Converter](http://www.audio-converter.com/index.html) &#8211; Shareware
  * [All To MP3 Converter](http://www.wma-mp3.com/) &#8211; Shareware
  * [WinFF](http://www.winff.org/index.php?option=com_content&view=category&layout=blog&id=34&Itemid=60) &#8211; Free, Open source.

&#8230; but none of these really did what I wanted.

I decided to make my own tool.

My premiss was to make a bulk wma to mp3 converter for windows, that appears on context menus.

I figured that I could probably get away with using the [&#8220;Send To&#8221; context menus](http://support.microsoft.com/kb/310270) instead.

I also figured that I could use the [windows release of ffmpeg](http://ffdshow.faireal.net/mirror/ffmpeg/) (windows binary contained within the 7zip files which open with WinRAR) at the core to do the actual conversion.

My advice would be to extract ffmpeg.exe to your &#8220;system32&#8221; directory so we can call it from anywhere.

I figured out by using WinFF, that the command is as follows:

> ffmpeg -i &#8220;in.wma&#8221; -acodec libmp3lame -ab 160k -ac 2 -ar 44100 &#8220;out.mp3&#8221;
  
> _Note: WinFF uses &#8220;mp3&#8221; instead of &#8220;libmp3lame&#8221; due to the way it's compiled_

The next step was to figure out how to pass the arguments to ffmpeg.exe so it knew the input and output file.

In the end I settled on VBscript, thanks to a very handy documentation entitled &#8220;[Introduction to VBScript](http://www.mhuffman.com/notes/language/vbs_intro.htm)&#8220;.

What I needed to do in psudo terms is as follows:

> Get <arguments> as <input>
  
> For Each <input> as <item>
  
> Check <item> is a &#8220;.wma&#8221; file
  
> Replace .wma with .mp3 on end of <item>
  
> Run ffmpeg
  
> Tell us when it's all done

In VBS, you are unable to &#8220;replace&#8221;, so instead I simply trimmed the last 3 chrs (wma) and added &#8220;mp3&#8221;.

Also to insert quotes (since there's no escaping) you simply use chr(34).

Another article worth mentioning is entitled &#8220;[Running Programs From WSH Scripts](http://www.microsoft.com/technet/scriptcenter/resources/tales/sg1002.mspx)&#8220;. It helps explain the difference between Run and Exec, and the ways in which to use them.

Here's the script I ended up with:

> Set objS = WScript.Arguments
  
> i = 0
  
> For Each objIN in objS
  
> objINext=Right(objIN,3)
  
> If objINext = &#8220;wma&#8221; Then
  
> objINCount=len(objIN)
  
> objINCount=objINCount-3
  
> objOUT=Left(objIN,objINCount)&&#8221;mp3&#8243;
  
> objExec=&#8221;ffmpeg.exe -i &#8220;&chr(34)&objIN&chr(34)&&#8221; -acodec libmp3lame -ab 160k -ac 2 -ar 44100 &#8220;&chr(34)&objOUT&chr(34)
  
> Set objShell = CreateObject(&#8220;WScript.Shell&#8221;)
  
> objShell.Run(objExec), 1, true
  
> End If
  
> i = i + 1
  
> Next
  
> WScript.Echo &#8220;Done!&#8221;

Go to Start -> Run, enter: &#8220;sendto&#8221;, click OK or press Enter.

Create a New Text Document in there, open it, and paste in the above script, then rename it to &#8220;wma-to-mp3.vbs&#8221;.

That's it, all done!

Now when you right click on a WMA file, and go to the &#8220;Send To&#8221; menu, you will see an option called &#8220;wma-to-mp3.vbs&#8221;, click on that, and the process will begin.

_Note: I am aware that there are limits to this script, but it does the job. Let me know of any improvements you make, and enjoy!_