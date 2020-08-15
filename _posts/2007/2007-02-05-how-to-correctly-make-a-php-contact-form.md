---
id: 71
title: How to correctly make a PHP contact form
date: 2007-02-05T22:13:09+00:00
author: admin

guid: /how-to-correctly-make-a-php-contact-form
permalink: /how-to-correctly-make-a-php-contact-form/
categories:
  - Development
tags:
  - code
  - contact
  - form
---
<p class="lead">
  I use contact forms on many websites, and over the years I have discovered many problems with using them, including hijacking, mail injection, server hacks, XSS and platform issues.
</p>

The main cause of this is simply due to lack of validation and error checking.

Firstly you must fully understand how forms work with PHP. When you set the form &#8220;method&#8221; to POST, it sends the data to PHP as a super global variable called &#8220;$_POST&#8221;. In the HTML each &#8220;input&#8221; has a &#8220;name&#8221;, that is used to identify the related data.

For example, there is an input field named &#8220;message&#8221;, to retrieve this in PHP you simply use &#8220;$_POST[&#8216;message']&#8221;, we will be using this method to pass the data between the form and PHP for processing.

This is a fine example of how NOT to do it, so what is wrong with this method you may ask?

Here are some of the issues we need to overcome:

  * Data directly input into the mail() function without processing
  * Does data from input fields contain malicious code
  * Check user input is not empty
  * Validation on user inputs
  * If the email address the user entered is real
  * Whether the email successfully sent or not
  * Ensure the correct data is processed
  * Which website the form was sent from
  * The IP address of the sender
  * Display the form at appropriate times
  * Append additional fields to the end of the message

Download here: [PHP Contact Form by HM2K v1.0.1](/?dl=contact.phps)

The comments I have made within the code explains the reason what it does, and why it is included.

I hope this solves some of the problems people experience with contact forms.

_Additional Notes:_

  * phpro.com offers further details on [User Input Validation](http://phpro.org/tutorials/Validating-User-Input.html), ideal for more advanced forms.
  * In this example I have not used [tableless CSS friendly forms](http://web.archive.org/web/20090611122138/http://faq.css-standards.org:80/Forms), just keep the focus on the PHP.
  * You may also wish to add a [captcha security code](http://www.white-hat-web-design.co.uk/articles/php-captcha.php) for added anti-spam protection.