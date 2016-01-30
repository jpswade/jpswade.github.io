---
id: 2907
title: Converting your logo to ASCII art
date: 2011-05-25T12:11:25+00:00
author: admin
layout:
  - default
guid: http://jpswade.github.io/?p=2907
permalink: /converting-your-logo-to-ascii-art/
aktt_notify_twitter:
  - yes
aktt_tweeted:
  - 1
categories:
  - Development
  - Internet
tags:
  - ascii
  - ascii art
  - figlet
  - irc
  - jpg
  - logo
  - pablodraw
  - putty
  - shell
---
<p class="lead">
  If you&#8217;re a geek like me or you&#8217;ve just  seen <a href="http://paolo.wordpress.com/2010/05/07/iron-man-2-etcmotd/">Iron Man 2</a> you&#8217;ll probably like the idea of having a custom <a href="http://en.wikipedia.org/wiki/Motd_(unix)">motd</a> display something cool when you login to your shell or terminal server.
</p>

Sure, you can use [figlet](http://en.wikipedia.org/wiki/FIGlet) to create a text banner, but how cool would it be if you could display your own logo instead. Right?

Can an image be converted into [ASCII art](http://en.wikipedia.org/wiki/ASCII_art)?

Challenge accepted.

<!--more-->First of all, let&#8217;s get our logo image. We&#8217;re going to use the 

[Gallush logo](http://www.flickr.com/photos/38114693@N04/5632552278/in/photostream) and to make it easier we&#8217;ll rehost the [original image](http://i.imgur.com/UQV1n.jpg). Let&#8217;s go&#8230;

I started off by trying some online converts:

  * [GlassGiant ASCII Art Generator](http://www.glassgiant.com/ascii/) 
      * [Normal output](http://pastie.org/pastes/1968509/text)
  * [mastervb.net ASCII Art](http://ascii.mastervb.net/) 
      * [Highest quality output](http://pastie.org/pastes/1968539/text)
  * [picascii](http://picascii.com/) 
      * [Default output](http://pastie.org/pastes/1968559/text)
  * [DeGraeve.com IMG2TXT](http://www.degraeve.com/img2txt.php) 
      * [Default output](http://pastie.org/pastes/1968565/text)
  * [lunatic.no Image to HTML/ASCII](http://lunatic.no/ol/img2aschtml.php) 
      * [Output](http://pastie.org/pastes/1968719/text)
  * [jennana.com JPG2ASCII](http://www.jennana.com/projects/ascii.php) 
      * [Result](http://www.jennana.com/projects/ascii.php?image=http%3A%2F%2Fi.imgur.com%2FUQV1n.jpg&method=Best)
      * [Output](http://pastie.org/pastes/1968773/text)
  * [ConvertHub.com](http://www.converthub.com/) (as text/html) 
      * [Output](http://pastie.org/pastes/1968604/text)

There&#8217;s a lot out there, which got me thinking&#8230;

What about software? Here&#8217;s the [ASCII art converters](http://en.wikipedia.org/wiki/ASCII_art_converters) I found:

  * [aalib](http://aa-project.sourceforge.net/aalib/) &#8211; outdated
  * [jpeg2ascii](https://sourceforge.net/projects/jpeg2ascii/) &#8211; unfinished
  * [jp2a](http://csl.sublevel3.org/jp2a/) &#8211; easy to install on FreeBSD 
      * [Output](http://pastie.org/pastes/1968666/text)
  * [libcaca](http://caca.zoy.org/)

What about scripts? There must be a PHP, Perl or Python script out there&#8230;

  * [JPG to ASCII Converter PHP snippet](http://phpsnips.com/snippet.php?id=29)
  * [Image2Char PHP Class](http://www.phpclasses.org/package/3907-PHP-Convert-image-to-HTML-with-ASCII-art-characters.html)
  * [generating ASCII art from photographs in Python](http://stevendkay.wordpress.com/2009/09/08/generating-ascii-art-from-photographs-in-python/)
  * [pyascii](http://tommih.blogspot.com/2009/01/image-to-ascii-art-with-python.html)
  * [ppmascii (perl)](http://www.floodgap.com/software/ppmascii/)
  * [png2ascii.pl](http://people.baicom.com/~agramajo/projects/png2ascii/)
  * [Term::Caca &#8211; perl interface for libcaca (Colour AsCii Art library)](http://search.cpan.org/~yanick/Term-Caca-0.97/lib/Term/Caca.pm)
  * [aalib-perl project](https://sourceforge.net/projects/aalib-perl/)

Then a brainwave, I want the image to fit a standard terminal screen (80 columns by 24 rows, according to putty&#8217;s default settings).

Since 1 pixel (usually) equates ASCII character, to make the ASCII art fit the screen I should resize the image from 128x128px to 24x24px.

Unfortunately at that size (24&#215;24) it makes it almost impossible to work out what it&#8217;s meant to be, while at double the size (48&#215;48) you can still make out all the defining features of the image. This is [the resized image](http://i.imgur.com/zJEjp.jpg).

After doing this, my favourite so far was from &#8220;converthub.com&#8221;, which results in something a little like [this](http://pastie.org/pastes/1970718/text) which is exactly 24 lines so should fit your standard console screen.

So here it is:

[<img class="aligncenter size-medium wp-image-2911" title="gallush-logo-putty" src="http://jpswade.github.io/upload/gallush-logo-putty-300x203.png" alt="" width="300" height="203" />](http://jpswade.github.io/upload/gallush-logo-putty.png)So as you can see, you can make out the logo pretty clearly and it fits on the screen! Pretty cool huh?

Just need to render some text in figlet and use [PabloDraw](http://picoe.ca/products/pablodraw/) to combine the two, and you should end up with something like this:

[<img class="aligncenter size-medium wp-image-2912" title="gallush-pablodraw" src="http://jpswade.github.io/upload/gallush-pablodraw-300x184.png" alt="" width="300" height="184" srcset="http://jpswade.github.io/upload/gallush-pablodraw-300x184.png 300w, http://jpswade.github.io/upload/gallush-pablodraw.png 929w" sizes="(max-width: 300px) 100vw, 300px" />](http://jpswade.github.io/upload/gallush-pablodraw.png)_Note: I used the &#8220;Rounded&#8221; font on the [patorjk.com Text Ascii Art Generator](http://patorjk.com/software/taag/)._

Here&#8217;s what that looks like over PuTTY:

[<img class="aligncenter size-medium wp-image-2916" title="gallush-logo-putty-final" src="http://jpswade.github.io/upload/gallush-logo-putty-final-300x203.png" alt="" width="300" height="203" />](http://jpswade.github.io/upload/gallush-logo-putty-final.png)Kinda cool huh?