---
title: Have a compromise strategy
author: James Wade
date: 2017-11-02
categories:
  - Development
tags:
    - webdev
    - security
image: https://i.imgur.com/cn8EkWZ.png
---

Back in February 2016, I went to PHP UK Conference. One of the points resonated with me, so I wrote down the following:

> “We need a compromise strategy - even if our strategy is to do nothing, write it down, agree on it. (see PSR-9 and PSR-10)”

PSR is PHP Standards Recommendations. PSR-9 is a draft recommendation on the subject of security advisories and PSR-10 is a draft recommendation on the security reporting process. Having a compromise strategy is in direct response to PSR-9 and PSR-10 existing.
<!--more-->
Everyone should have a compromise strategy. Whether you’re an enterprise, small business or an open source project. If you’re writing software, have one. And there’s a very good reason for having one: full disclosure advisories.

In computer security, a full disclosure is the practice of making the details of security vulnerabilities public. When a security export (or “hacker”) discovers a vulnerability in your software or computer system they will usually draft out an advisory detailing the severity and other such metrics. They will usually send this to you ahead of time for you to comment and/or resolve the issue. Your comments (or lack thereof) will be noted with the advisory and used in the public advisory.

Regretfully, I have been in this situation when I was operating an open source project. The advisory came in, I attempted to fix the problem, then having got a bit fed up with the whole thing and a bit naive, told the guy that I had really lost interest in trying to fix the bug. Not only did I not fully address the problem, but my words were documented and made public. A bit embarrassing to say the last.

These days it is marginally worse, as you may also have to make a decision, on not only want to say and what to do (in terms of patching), but also whether to offer any kind of bug bounty. The point is, I’ve been there, done that and got the T-Shirt. If you don’t have a compromise strategy, chances are you’ll get it wrong. And if you get it wrong, chances are you’ll get it really wrong.

A compromise strategy isn’t something that just developers should come up with. If you’re making software, it if something that both business and engineering should take very seriously. 

Have a plan. If you don’t, you will eventually find yourself scrabbling around for a response from management.

You’ll find that most enterprises are quite proactive and these days have a bug bounty, a deal offered by many websites and software developers by which individuals can receive recognition and compensation for reporting bugs, especially those pertaining to exploits and vulnerabilities.

Bug bounty programs have been implemented by Facebook, Yahoo!, Google, Reddit, Square, and Microsoft.

The theme across all of the bug bounty programs, is that not only do they have clear instructions on how to report bugs, but finding these them is encouraged and incentivised.

Not every organisation, however, operates at this level. In 2013, Yahoo! was severely criticized for sending out Yahoo! T-shirts as reward. As it happens, Ramses Martinez, director of Yahoo's security team was funding this out of his own pocket.

Regardless of whether you can offer a bug bounty or not, having a plan that covers things like a disclosure policy, validation and resolution or as reddit puts it:

“Find a vulnerability, Privately tell the admins, DON'T FREAKING TELL ANYONE ELSE”

It’s clear that big business take security very seriously and planning is not an afterthought. The message is clear, have a plan, have a policy and even better, if you can, offer a bug bounty.

How management might react to a bug depends on the scope and severity. That’s why it’s important for them to define what the expectations are up front.

Bug bounties exist as a nice way to reward those nice people who find bugs and report them in the correct way.

There are, however, those people who aren’t so nice and will hold you to ransom, either by threatening to exploit your vulnerability or by exposing the bug and damaging your reputation.

Bug bounties, in part, exist to eliminate that eventuality, that a vulnerability is used as leverage against the company for financial gain.

In open source projects, it’s different. They simply don’t have the means to fund bug bounties, so instead they tend to lean on their community.

For example, CodeIgniter uses the “HackerOne” bug bounty and vulnerability coordination platform, but says:

> Unfortunately, we cannot offer any financial rewards, as CodeIgniter is a community-maintained project with practically no funding. But, we hope that public credit and the feeling of having done well may be gratifying.

Symfony is one of the few projects that actually explains their resolving process. The first thing they do is acknowledge the issue to the reporter. The second thing they do is fix it. After that, everything is about disclosing the issue in a responsible way.

One of the more in depth security issue processes I could find was Moodle. Moodle is open-source software learning management system written in PHP. They have a whole documentation section dedicated to their development process, which includes the handling of security issues. Again, this is mainly centered around disclosing the issue, or in their case, doing it “as late as possible”.

Looking at everything here in reflection, It’s clear that everyone, from open source projects to enterprise takes security very seriously these days. Although approach isn’t uniform, the key takeaway message is, have a plan.

A new internet draft attempts to tackle the problem of consistency.

> When security risks in web services are discovered by independent security researchers who understand the severity of the risk, they often lack the channels to properly disclose them.  As a result, security issues may be left unreported.  Security.txt defines a standard to help organizations define the process for security researchers to securely disclose security vulnerabilities.

By making a security.txt available on your website, they suggest that it will help make things easier for companies and security researchers when trying to secure platforms.

Although to some, this is not necessary because good companies would already have a good mechanism for to find out the correct security disclosure channels, it does surface again the need for a written compromise strategy.

What does your security disclosure policy look like?