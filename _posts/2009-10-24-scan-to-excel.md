---
id: 546
title: Scan to Excel
date: 2009-10-24T12:11:04+00:00
author: admin
layout: post
guid: http://wade.be/?p=546
permalink: /scan-to-excel/
aktt_notify_twitter:
  - yes
aktt_tweeted:
  - 1
categories:
  - Software
tags:
  - accountancy
  - convert
  - document scanner
  - excel
  - ocr
  - pdf
  - scan
  - software
  - tif
  - tiff
---
<p class="lead">
  This week I&#8217;ve mostly been trying to figure out a way to digitalise some of my bank statements to make accountancy and archiving easier.
</p>

I figured there must be a way to scan them in using a document scanner, then use OCR software to render the data into Excel.

Of course, nothing does this natively, but there are ways to do it.

<!--more-->

There are three parts to this process&#8230;

  1. Document scanning
  2. Data format conversion
  3. Optical character recognition (OCR)

For the scanning part I used a Ricoh Aficio MP C4500, which not only acts as a Photocopier, but as a fax machine, network printer and network scanner.

The main part is it&#8217;s ability to scan with [document processing](http://en.wikipedia.org/wiki/Image_scanner#Document_processing). This means (once configured) that it would only take a few minutes to scan a few hundred pages, rather than a few hours using a conventional scanner.

This device has the ability to save scanned documents as PDF or TIF. I decided to use the more versatile TIF image format.

I figured it would be easier to convert a standard image format than the proprietary PDF format. I very quickly discovered that it wasn&#8217;t that simple.

To begin with I had heard good things about two leading OCR software packages&#8230;

  * ABBYY FineReader 9.0
  * Able2Extract Pro 5.0

I found that neither of these software packages would accept TIF files, so I converted each directory of TIF files into a single PDF file using the [DreamSys Tiff to PDF Converter](http://www.dreamsyssoft.com/tiff-to-pdf/), which was a very quick and effective command-line tool for doing the task.

I started trying out Able2Extract as I&#8217;d not used it before and I had read good things about it&#8217;s PDF to Excel conversion. The problem was it kept throwing up a &#8220;Fatal Internal Error #24&#8221; error which I was unable to work around.

I had used ABBYY in the past and it turned out to be very good OCR software for converting to Word at least, however trying to configure it to scan the areas I wanted into Excel seemed almost impossible and took forever.

I decided to go back to the drawing board&#8230;

I quickly realised that there were a few &#8220;web 2.0&#8221; software as a service tools out there that could assist me&#8230;

  * [ABBYY FineReader Online](http://www.finereaderonline.com/) (10 pages a day for free)
  * NitroPDF [PDF to Excel](http://www.pdftoexcelonline.com/) (free)

There&#8217;s many universal &#8220;online document converters&#8221;, a few include&#8230;

  * [Zamzar](http://www.zamzar.com/)
  * [cometdocs](http://www.cometdocs.com/)

My issue with most of these is that they would recognise the PDF, but not the images inside the PDF and use OCR to render them. They are only designed to take the text found in a PDF file and extract that to Excel.

I also came across a few other software packages that will also convert from PDF files to Excel&#8230;

  * deskUNPDF Professional by docudesk
  * PDF2XL Enterprise by cogniview
  * ExpressConversion Server by adlibsoftware
  * PDF To XLS by verypdf
  * Solid Converter PDF by soliddocuments
  * TotalPDFConverter by coolutils

With all this available proprietary software for converting from PDF to Excel (XLS or CSV) its obvious that it&#8217;s a service definitely in demand.

So far I&#8217;m waiting on the following:

  * Zamzar and others to email me their conversion of the PDF file I uploaded to them.
  * Able2Extract&#8217;s support team to get back to me with regards to the error.
  * For Cogniview PDF2XL Enterprise to download.

Let&#8217;s see what gets the job done best, first, if any&#8230;

Zamzar is unable to convert from PDF to XLS, directly or indirectly. While finereaderonline will only accept images, not PDF files, which is OK, but may take some time, especially at only 10 pages per day.

Able2Extract were unable to help me with the error unless I sent them the PDF, which I can&#8217;t do due to it&#8217;s content.

I sent DreamSys an email asking them to send these guys a sample output PDF instead, but I&#8217;ve heard nothing back as of yet.

Able2Extract recommended I use their Sonic PDF Creator product to convert the original scanned TIFF files to a PDF which they claim their Able2Extract product will be able to read.

I had a play with Sonic PDF Creator and appeared to be unable to import a directory of TIF files, just each TIF file individually. This seemed like a painstaking process.

I needed to merge the TIF files together into 1 file to make it easier. PTGui Pro is able to stitch TIF files together, however it gave me an error saying:

Error loading TIFF file: Unsupported number of bits per sample (only 8, 16 or 32 are supported) or unsupported sample format. Useless.

Back to square one.

I decided to try my luck with PDF2XL, which after a little teething problem getting a working copy to begin with seemed to be quite a neat package.

PDF2XL was able to detect that the PDF I had given it (the one I created using Tiff 2 PDF) was a scanned document and began performing OCR on the file.

The results were almost prefect, VERY impressive. It seems that PDF2XL is able to do what nothing else could, not even Able2Extract. Don&#8217;t waste your time with anything else. It seems that [PDF2XL](http://www.cogniview.com/pdf2xl.php) is all you need.

The only thing I will say is I had to tweak the OCR settings a little bit to get it to render the page correctly.

Just when I thought everything was going great, I discovered another issue I had completely overlooked. The output was not in the correct order. I took a look at the original PDF and soon discovered that the images in the PDF were not in the correct order either.

First off, I decided that I should rename all the images based on the sheet number, that way I could be sure that they were correctly ordered. I created a batch file to preview and rename the images, called &#8220;[imgrename.bat](http://hm2k.googlecode.com/svn/trunk/code/batch/imgrename.bat)&#8220;. I was also able to use this to rename an entire directory at a time.

I tried rebuilding the PDF using _DreamSys Tiff to PDF Converter_ which I had used to create the PDF file in the first place, only to find that it was still out of order and I couldn&#8217;t influence the sorting. I had to find something else to do the job&#8230;

Enter [libtiff](http://www.remotesensing.org/libtiff/) and it&#8217;s windows counterpart [Tiff for Windows by GnuWin32](http://gnuwin32.sourceforge.net/packages/tiff.htm). Once I had a copy of this I was able to write another batch file that would not only combine the TIFF files (with pages) into a single TIFF file (using tiffcp.exe) but I was able to convert that into a PDF using (tiff2pdf.exe). I called this script &#8220;[tiff2pdf.bat](http://hm2k.googlecode.com/svn/trunk/code/batch/tiff2pdf.bat)&#8220;.

Bingo!

All was successful&#8230;

The next task is to firstly, cleanup anything bad in the CSV file left by OCR (cleancsv.bat) then to &#8220;normalise&#8221; the data&#8230;

But that&#8217;s another story for another time. We&#8217;ve done what we set out to do which was to scan to excel and all is well on that front.

Hope you find this useful. Enjoy!

<div id="_mcePaste" style="overflow: hidden; position: absolute; left: -10000px; top: 880px; width: 1px; height: 1px;">
  <a class="NoDecorationRed" href="http://www.cogniview.com/pdf2xl-enterprise.php">PDF2XL Enterprise</a>
</div>