---
id: 202
title: Microsoft Excel will not open two documents with the same name
date: 2010-07-26T17:44:43+00:00
author: admin
layout: post
guid: http://www.devotedit.com/?p=202
permalink: /2010/07/26/microsoft-excel-will-not-open-two-documents-with-the-same-name/
categories:
  - Software
tags:
  - error
  - excel
  - microsoft excel
  - spreadsheet
---
Microsoft Excel will not open two documents with the same name and instead will display the following error:

> [<img class="alignright" title="ui_excel_filename_collision" src="/wp-content/uploads/2010/07/ui_excel_filename_collision-150x108.png" alt="" width="150" height="108" />](/wp-content/uploads/2010/07/ui_excel_filename_collision.png)A document with the name &#8216;%s&#8217; is already open. You cannot open two documents with the same name, even if the documents are in different folders. To open the second document, either close the document that is currently open, or rename one of the documents.

[<!--more-->The reason is](http://blogs.msdn.com/b/excel/archive/2009/01/07/why-can-t-i-open-two-files-with-the-same-name.aspx) for calculation ambiguity with linked cells. If you had a cell ='[Book1.xlsx]Sheet1&#8242;!$G$33 and you had two books named &#8220;Book1&#8221; open, there&#8217;s no way to tell which one you mean.

Thanks Zeeshan.