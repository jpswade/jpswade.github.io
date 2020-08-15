---
id: 93
title: How to setup Tucows OpenSRS
date: 2007-04-25T14:33:08+00:00
author: admin

guid: /how-to-setup-tucows-opensrs
permalink: /how-to-setup-tucows-opensrs/
aktt_notify_twitter:
  - yes
categories:
  - Development
---
<p class="lead">
  OpensSRS is a domain reseller system offered by Tucows to internet service providers.
</p>

Although Tucows offers a very flexible system, there's a serious lack of easy to follow documentation.

This document will explain how to get your tucows opensrs reseller account up and running with full access.

<!--more-->

  1. To begin with you will require an OpenSRS account, you can [signup here](https://signup.opensrs.com/account).
  2. You then need to review the [contract](https://opensrs.com/resources/documentation/) you want.
  3. In this case we will be reviewing the [Master TLD Contract](https://opensrs.com/resources/documentation/).
  4. Print this off, fill out the spaces on the contract, and don't forget to sign it.
  5. Fax it across to (416) 531-2516 or from the UK 1014165312516.
  6. The next thing to do is to decide how you wish to make [payments](https://opensrs.com/resources/documentation/). In my case I will be using MasterCard, so do pay anything you have to fill out the [Credit Card form](https://opensrs.com/resources/documentation/) and fax the details across to the same number.
  7. You must pay $95 for the setup fee.
  8. Don't forget to update your website/terms and conditions with the [TuCows contract terms](http://resellers.tucows.com/contracts/tld/exhibita).
  9. Once you receive your username and password via email, you need to complete the access tests, which are a pain in themselves.

At this point you will be unable to log into the &#8220;[Live System](https://rr-n1-tor.opensrs.net/resellers/)&#8220;, until you complete the full access test&#8230;

  1. Log into the &#8220;[Test System](http://resellers-test.opensrs.net/)&#8221; using your username and password provided in the welcome email.
  2. Once logged in you will see the administration page for the test system, which is an exact replica of the live system. For now, ignore this, and scroll to the bottom. You need to open the page entitled &#8220;[Full Access Test Instructions](https://horizon.opensrs.net/resellers/index?action=view&file=rite-instruct.html)&#8220;, and read the instructions, however vague they are.
  3. As it says, you need to download and install the &#8220;[OpenSRS Client Software](http://web.archive.org/web/20061229093715/http://resellers.tucows.com:80/current/RCL/opensrs-client-2.9.5.zip)&#8220;, but what you actually need is the &#8220;[OpenSRS Client Software](http://web.archive.org/web/20061229093715/http://resellers.tucows.com:80/current/RCL/opensrs-client-2.9.5.zip)&#8220;, download this.
  4. Although the RCL manual can be found on the website, its not very clear what you need to do. Take a look at it anyway.
  5. Once you have downloaded the RCL, extract it, and edit the &#8220;etc/OpenSRS.conf&#8221; file. 
      1. Get the username from the welcome email, and enter inside the quotes on line 13&#8230;
      2. my $USERNAME = &#8220;yourusername&#8221;; # XXX insert username here
      3. Log back into the &#8220;[Test System](http://resellers-test.opensrs.net/)&#8220;, scroll to the bottom and find &#8220;<a onclick="return confirm('WARNING: This will disable your client cgis until you update your configuration file with your new private key.\n\nDo you want to proceed?')" href="https://horizon.opensrs.net/resellers/?action=generate_key">Generate New Private Key</a>&#8220;, follow the on-screen instructions and enter the private key provided on line 14&#8230;
      4. my $PRIVATE\_KEY = &#8220;your\_private_key &#8220;; # XXX insert DES key here
      5. Next set your admin email address on line 16&#8230;
      6. $ADMIN_EMAIL = &#8216;admin@example.com';
      7. Next set the email address where renewals will be sent to on line 17&#8230;
      8. $RENEW_EMAIL = &#8216;domains@example.com';
      9. For now on line 22, you must keep test server as 1 (this would be set to 0 if we were live)&#8230;
     10. $TEST_SERVER = 1;
     11. On line 28, configure the full path to where you intend on installing the client&#8230;
     12. $PATH\_SOURCE = &#8220;<path\_to_source>&#8221;; # e.g., &#8220;/home/username/opensrs&#8221;
     13. On line 49 to 55, you have the remote server config settings:
     14. REMOTE_PORT => 55000,
  
        REMOTE_HOST => &#8220;horizon.opensrs.net&#8221;,
  
        REMOTE\_HTTPS\_PORT => 55443,# OSRS IDN conversion server connection settings
  
        REMOTE\_IDN\_HOST => &#8216;horizon.opensrs.net',
  
        REMOTE\_IDN\_PORT => 55044,
     15. If you are in test mode, these must remain the same, and you must make sure the server can use those external ports. If you are in live mode, the ports start with &#8220;52&#8221;, instead of &#8220;55&#8221;, and the hostname is &#8220;rr-n1-tor.opensrs.net&#8221;.
     16. On line 60, you must decide which connection type you want to use&#8230;
     17. connection_type => &#8216;CBC', # CBC, HTTPS
     18. If you use CBC you also need to set the connection type on line 61 (try Blowfish)&#8230;
     19. crypt\_type => &#8221;, # Blowfish, DES, or Blowfish\_PP (slow!). ONLY important
  6. You MUST open EACH AND EVERY SINGLE .cgi file in the &#8220;cgi&#8221; directory, and change the &#8220;_$path\_to\_config = &#8216;<path\_to\_conf_file>';_&#8221; to the correct path. You could probably get away with using &#8216;../etc' as the path.
  7. Upload all of the files to the directory you have decided on, and &#8220;chmod&#8221; all the &#8220;.cgi&#8221; files to &#8220;755&#8221; so they are able to run.
  8. If you have SSH access to your web server you can verify your install by running the &#8220;cgi/verify_install.cgi&#8221; using the perl command at console (NOT via a web browser).
  9. Next you need to visit the true URL of the &#8220;reg_system.cgi&#8221; that you uploaded, and continue to follow the &#8220;[Full Access Test Instructions](https://horizon.opensrs.net/resellers/index?action=view&file=rite-instruct.html)&#8220;.
 10. If this page appears to be blank, you need to speak to your web server admin and ask them to read the error log (sometimes located &#8220;/usr/local/apache/logs/error_log&#8221;), usually you will need to install a perl module such as Data::Structure::Util using cpan.
 11. You may also require to &#8220;cpan install Unicode::String&#8221;.
 12. If you get the &#8220;Ciphertext does not begin with a valid header for &#8216;salt' header mode&#8221; error, chances are you need to cpan update Crypt::CBC, and apply [this fix](http://discuss.tucows.com/pipermail/domains-dev/2006-June/006819.html). (Which is already already applied in the latest version)
 13. [And well this is where I stopped because I'm still getting errors, and openSRS seem unable to help me]

If you are still having problems, read the OpenSRS [FAQ](https://rrc.tucows.com/support/faq/support_faq).

So this is what I did, I contacted TuCows numerous times and they were unable to help me with this.

I was told by TuCows to downgrade my Crypt:CBC, I told them it wasn't possible for me to do this.

I contacted TuCows again and insisted they allow me to bypass the Rite Test.

With this in mind, I decided to forget about the PERL solution and take a look at [OpenSRS-PHP](http://sourceforge.net/projects/opensrs-php/).

  * I downloaded this, ensured I had the Crypt-CBC PEAR module installed and recompiled php with mcrypt.
  * I extracted the files, read the README and uploaded them to the server.
  * As I understand it, I required a private key from the [test system](http://resellers-test.opensrs.net/) and another from the [live system](http://resellers.opensrs.net/).
  * I loaded these private keys along with the username into the &#8216;openSRS.php' and began investigating the &#8216;test.php'
  * From my understanding &#8216;test.php' looks up a domain to check if its available or not. With this in mind I needed to investigate other functions further.
  * After reading the [OpenSRS API specification (PDF)](http://documentation.tucows.com/opensrs_api.pdf) I was able to utilise commands to process domain names.

**In Summary**

After reading all that you are probably thinking what I'm thinking. &#8220;What a load of @#*$&#8221;. I could not agree more. TuCows OpenSRS is bloody awful to work with if you are new to it, it seems to have a serious lack of documentation on how to achieve things.

This article should help you with 2 things, firstly at least get you an account setup so you are able to manually manage domains. Secondly, it should offer you ways to interface with OpenSRS's API.

Perhaps in the future I can provide you with some working examples, but that was not the objective of this article.

I hope this helps someone to have a less painful time with TuCows OpenSRS than me, and I invite anyone to discuss any issues I have mentioned here.