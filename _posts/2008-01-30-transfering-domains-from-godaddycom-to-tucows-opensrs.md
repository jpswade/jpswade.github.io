---
id: 137
title: Transfering domains from Godaddy.com to TuCows OpenSRS
date: 2008-01-30T16:49:58+00:00
author: admin
layout: post
guid: http://wade.be/posts/transfering-domains-from-godaddycom-to-tucows-opensrs
permalink: /transfering-domains-from-godaddycom-to-tucows-opensrs/
dsq_thread_id:
  - 4536304931
categories:
  - Development
  - Sysadmin
---
<p class="lead">
  I need to transfer a bunch of domains from Godaddy (aka <a href="http://nodaddy.com/">Godamnannoying</a>) to TuCows (aka <a href="http://resellers.tucows.com/opensrs/">OpenSRS</a>), surly it can&#8217;t be that difficult? Right?
</p>

I found that there were lots of articles on how to transfer _to_ Godaddy, but not how to get out. This is a short guide on how to transfer _away_ from Godaddy, in this case we will be transferring to OpenSRS.

This guide is appropriate for .com, .net, .org, .name domain names.

<!--more-->

These are the steps you need to take:

  * Go to: <http://mya.godaddy.com/> and login.[<p class="lead">
  I need to transfer a bunch of domains from Godaddy (aka <a href="http://nodaddy.com/">Godamnannoying</a>) to TuCows (aka <a href="http://resellers.tucows.com/opensrs/">OpenSRS</a>), surly it can&#8217;t be that difficult? Right?
</p>

I found that there were lots of articles on how to transfer _to_ Godaddy, but not how to get out. This is a short guide on how to transfer _away_ from Godaddy, in this case we will be transferring to OpenSRS.

This guide is appropriate for .com, .net, .org, .name domain names.

<!--more-->

These are the steps you need to take:

  * Go to: <http://mya.godaddy.com/> and login.](http://mya.godaddy.com/) 
  * On the menu at the top, go to &#8220;Domains&#8221;, and on the drop-down menu click on &#8220;My Domain Names&#8221;.
  * When the &#8220;[Domain Control Center](https://dcc.godaddy.com/default.aspx?sa=)&#8221; loads, simply select the domain(s) you wish to transfer.
  * Click on the lock button entitled &#8220;Locking&#8221;.
  * When the &#8220;Locking&#8221; page loads, change the radio button from &#8220;Lock&#8221; to &#8220;Unlock&#8221; and press OK.
  * You must then click on each domain, and where it says &#8220;Authorization Code:&#8221;, click on &#8220;Send by Email&#8221; (Note: It will send to the email address that Godaddy has on file for that domain, so ensure it is one you own and is working BEFORE you send out the request).
  * Press OK on that page, this will send the authorization code email message to the administrative contact for the selected domain.

The email from Godaddy comes fairly quickly and should look like this:

> The authorization information you requested is as follows:
> 
> Domain Name: EXAMPLE.COM
> 
> Authorization Info: [Authorization Code]

The next step requires you to log into your OpenSRS TuCows reseller account (however some people may wish to use their own API).

_Note: You can&#8217;t do this step unless the domain is unlocked._

  * Visit: <https://rr-n1-tor.opensrs.net/resellers/> and login.
  * Find the &#8220;Transfer a domain&#8221; box and enter the domain name there.
  * Fill out the appropriate details and submit.
  * You will receive an email with instructions, simply follow the instructions, it will ask for an auth code.

At this point if you log into OpenSRS it says: &#8220;Pending Registry Approval&#8221; and &#8220;Registry hasn&#8217;t transfered the domain yet&#8221; and if you log into Godaddy it says: &#8220;Transfer Away Accept/Decline Required&#8221;.

The email from OpenSRS Transfer [transfers@opensrs.org] will take some time to come through, be patient it does come eventually, usually within 1 hour, and it should appear something like this:

> An English version of this message is contained below.
> 
> Attention: dns@example.net
> 
> Re: Transfer of example.com
> 
> The current registrar of record for this domain name is GoDaddy.com, Inc. (R91-LROR).
> 
> Tucows has received a request from Your Name
> 
> on Wed Jan 30 09:36:35 2008 for us to become the new registrar of record.
> 
> You have received this message because you are listed as the Registered Name Holder or Administrative contact for this domain name in the WHOIS database.
  
> Please read the following important information about transferring your domain name:
> 
> * You must agree to enter into a new Registration Agreement with us. You can
  
> review the full terms and conditions of the Agreement at
  
> https://rr-n1-tor.opensrs.net/transfers/index.cgi?rid=12345&tld=.com&action=contract
> 
> * Once you have entered into the Agreement, the transfer will take place within
  
> five (5) calendar days unless the current registrar of record denies the request.
> 
> * Once a transfer takes place, you will not be able to transfer to another registrar
  
> for 60 days.
  
> If you WISH TO PROCEED with the transfer, you must respond to this message as outlined below (note: if you do not respond by Mon Feb 4 09:36:35 2008, example.com will not be transferred to us.).
> 
> Please go to our website, https://rr-n1-tor.opensrs.net/transfers/index.cgi?rid=12345 to confirm.
> 
> You will need to enter the following information to log in and accept or decline the transfer:
> 
> Domain Name : example.com
  
> Transfer Key: [Random Key]
> 
> If you DO NOT WANT the transfer to proceed, then don&#8217;t respond to this message.
> 
> If you have any questions about this process, please contact transfers@opensrs.org

_Note: When following these instructions, you will need the &#8220;Authorization code&#8221; that was sent from Godaddy._

<span style="text-decoration: line-through;">You should now receive an email with instructions telling you that now you have to accept the transfer via Godaddy.</span>

  *  <span style="text-decoration: line-through;">Go back to: <a href="http://mya.godaddy.com/">http://mya.godaddy.com/</a> and login.</span>
  * <span style="text-decoration: line-through;">Select &#8220;Pending Domain Transfers&#8221; from the list (on the right). </span>
  * <span style="text-decoration: line-through;">Select the transfers you wish to accept from the &#8220;Pending Domain Transfers&#8221; list, and click &#8220;Accept.&#8221;</span>

_Note: Apparently you don&#8217;t need to &#8220;accept&#8221; the transfer with Godaddy now, instead it is assumed that you wish to transfer, and gives you the opportunity to cancel instead, details of which are included in the email you receive from Godaddy._

**Update: Although you can just WAIT for the transfer to be actioned by Godaddy, it usually takes about 7 days, this is a long time, so here&#8217;s what to do:**

  * Go back to: <http://mya.godaddy.com/> and login.
  * Select &#8216;Domain Names&#8217; from the &#8216;My Account&#8217; menu.
  * Select &#8216;Pending Transfers&#8217; from the &#8216;Domains&#8217; tab at the top of the page.
  * Click the domain name in the list.
  * Click &#8216;Accept&#8217; to accept the transfer away of your domain.
  * After confirming your intent, the domain registration will be transfered to your new Registrar.

What a ball ache! Got there in the end though!