---
id: 570
title: Gmail needs an API
date: 2009-11-13T16:05:06+00:00
author: admin

guid: http://wade.be/?p=570
permalink: /gmail-needs-an-api/
aktt_notify_twitter:
  - yes
aktt_tweeted:
  - 1
categories:
  - Development
  - Internet
tags:
  - api
  - gmail
  - google mail
  - wave
---
<p class="lead">
  Yesterday I spent some time investigating Google Wave. A very interesting new product from Google. Not only that but an interesting protocol.
</p>

If you think about it, Google has mostly only used other protocols for communication in the past, now it's creating it's own. They clearly want to create a completely new protocol that will effectively be the future of these old primitive protocols.

For this to catch on, it will either have to run directly along side smtp and xmmp or layer on top of them.

We're going to need a way to pass requests over http to smtp or pop3/imap, and what better way to do it than with gmail?

Sure, but there's no API&#8230;

<!--more-->

It's argued that all you need to do is roll your own &#8220;api&#8221; or library class to use smtp and imap server provided by Google Mail (gmail) to send and receive emails.

The problem with this is that you're forced to hand the app your username and password. Naturally this raises security concerns.

Of course this isn't a big problem if you only use your own username and password and manage to store it on your server security.

The problem comes when others want to use their gmail accounts with your web app. They have not choice but to hand over their username and password. What can possibly go wrong?

  * Their username and password gives you FULL access to their account, including account actions such as changing passwords.

My proposal would be for an API that allowed you to interface with gmail, in particular to send emails (which has the biggest scope here).

To access the API you could generate an API Key from within gmail that would allow you to interface with gmail, but limited to mailing functions, rather than account settings.

An alternative to this is similar to the &#8220;GoogleCode.com Password&#8221;, used by project members when checking out or committing source code changes, or when using command-line tools to upload files to the project &#8220;Downloads&#8221; tab.

If you could set a &#8220;Google Mail SMTP Password&#8221; or similar, which would only permit you to access the gmail SMTP server, but not gmail itself, this would also allow you to overcome the security issues mentioned above.

However, this alternative wouldn't help towards integration with Google Wave as much as an api would.

In summary, to resolve the security issue an API is an option, but for Google Wave integration too, it's essentially a must.

I hope someone at Google reads this and agrees with me, for that matter, I hope you or anyone reading this agrees with me.