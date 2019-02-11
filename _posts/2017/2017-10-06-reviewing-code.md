---
title: What's involved in a code review?
author: James Wade
date: 2017-10-06
categories:
  - Development
tags:
    - webdev
    - process
    - code
    - standards
image: https://i.imgur.com/ISM8E1F.png
---

We now live in a time of version control, git and github. If you work in software development you should be familiar with "pull requests".

A pull request is a way for people to contribute to your code repository.

But that's not all, it's also an opportunity to [review your peers code](https://en.wikipedia.org/wiki/Code_review).

> Peer review – an activity in which people other than the author of a software deliverable examine it for defects and improvement opportunities – is one of the most powerful software quality tools available. Peer review methods include inspections, walkthroughs, peer deskchecks, and other similar activities. After experiencing the benefits of peer reviews for nearly fifteen years, I would never work in a team that did not perform them.
> - [Karl Wiegers](http://www.processimpact.com/articles/humanizing_reviews.html)

Code reviews are [really important and will actually help make your team more efficient](https://www.atlassian.com/agile/code-reviews).

> Peer code reviews are the single biggest thing you can do to improve your code - [Jeff Atwood](https://blog.codinghorror.com/code-reviews-just-do-it/) 

There's a few tools you'll want under your belt if you're going to review other people's code.

<!--more-->

### Best practices:

1. Don't be afraid to make things better.
1. Ask, don't tell.
1. Keep them light and short, smaller [than 400 lines of code](https://smartbear.com/resources/case-studies/cisco-systems-collaborator/)
1. Review the right things, let the tools do the repetitive work.
1. Review and approve your own code before you ask others to review it.
1. Well written code should be self explanatory, there's no need for lots of annotation if it's well written.
1. Define and follow a process.
1. Review often and [for a short period of time](https://news.illinois.edu/blog/view/6367/205427), stick to less than an hour
1. Well written code should look like it's written by one person.
1. Negotiate. It's OK to have healthy debate, it makes us better at what we do. Be open minded.

### Things to look out for:

- Inconsistencies (better: standards)
- Complexity (better: simplify)
- Size (better: less)
- Commenting (better: self explanatory code)
- Duplication (better: 1,2, refactor)
- Risk (better: test coverage)
- Mess (better: no unused code)

### You should be asking questions like:

- Does this code look like it’s written by one person?
- Will you understand that code in 6 months time?
- Can you explain to me how this code works?
- Does it have test coverage or have we mitigated risk?
- How did you come to that decision?
- Is it me or is that a fork bomb?
- Why aren’t you sanitising that input from user land?
- Does all of this need to be peer reviewed or can any of it go straight into master?
- There’s a build in function for that, have you considered using that instead here?
- I’m not sure I understand this code, please can you explain it to me?
- Could this repeated string be a constant?
- Why is that code commented out, can it be removed?
- Why have you removed that code? What is the test scenario that covers that behaviour?
- Woah! That's one big function, have you considered breaking this out?
- Why is that code repeated? What about breaking this out into reusable code?
- Have you run the tests? What were the results? Could you provide me with a screenshot?
- Is there a better way to do this?
- Could this be clearer?

Ultimately, it should be obvious to anyone what the code does so don’t be afraid to ask if you don’t understand how it works. I’m sure your peers will be more than happy to talk you through it.

> Code reviews are not about catching bugs. Modern code reviews are about socialization, learning, and teaching. - [Derek Prior, Thoughtbot](https://www.youtube.com/watch?v=PJjmw9TRB7s)

If you see the same issue more than 3 times, this suggests that we need to address the issue in one of three ways, consider:

- Setting a standard
- Knowledge sharing
- Tooling up

![Page Approved](https://i.imgur.com/ISM8E1F.png")

> "Be pragmatic, but also have a sense of humour"

It's important to get the job done and have fun doing it. The goal is to make things easier, not harder. Respect each other. Always view a review as an opportunity to improve or help others to improve.

Be bold in your proposals, be clear and concise in your argument. Be prepared to accept that you may be wrong or at least, mistaken. That's OK.

If after you've responded 3 times, and you haven’t been able to reach a conclusion, take it offline. Find other means of resolution. Consider consulting an expert or raising it to a wider forum.

If you don’t agree with a standard, that’s OK. If it’s non-blocking, stick to the standard then flag it as an issue with whoever sets the standard or your team lead. If it’s a blocking issue, hold a 15 minute huddle to come to an agreement. If you can’t reach a resolution within 15 minutes, then you should escalate to your team lead.

## Setting a standard

If there isn't already a standard set within your team or product, then you should consider setting one.

Find an existing standard that you think will make a good base and start with that.

Beyond that, setting more specific standards can be achieved once you've experienced the same issue 3 or more times.

Often it doesn't matter which standard you pick, so long as you can all agree to it. The goal is to make the code look like it's written by one person.

> "The sign of a good code base is it looks like it's written by one person rather than a team with differing opinions" -- Probably someone much smarter than me.

Once you've decided on a standard, agree on the severity. Is it a "nice to have" (a warning) or is this an absolute no go (strict)? Really think about whether you want to potentially hold back a release over something that is potentially quite trivial.

Prepare for standards to be challenged from time to time. They may be wrong, you may have made a mistake. However, changes to standards shouldn't be done on a whim as they may impact the entire codebase, which is a costly excercise. Ensure that there is a good solid argument for a change to standards. Changes should be well considered.

## Knowledge sharing

In many organisations, the articles will state something along the lines of "notice will be deemed served by advertising the meeting in at least three public places" for when a meeting is called.

There's a reason why and it's to do with being fair and reasonable, civil. It's also to do with threes. There's something about threes that make something stick. If you see or hear the same thing three times, then it must be important right?

So if it's good enough for civil law, then it's good enough to use at work.

When you have a message you want to get across, you need to consider the ways you can communicate it, including, but not limited to:

- Email
- In person
- In writing
- Workshop
- Presentation
- Infographic
- Online documentation
- Online chat/discussion
- As code

Which method you use really depends on the people you're communicating to, though my view is, so long as they acknowledge the information, it really won't matter too much in the end.

It's always a good idea to get sponsorship and consult with your peers before you set standards and share them. Make sure you have people to support you in what you're trying to do.

If you don't now where to start, start by just talking about your idea with your peers. Then could write an objective article which outlines all the information you've gathered.

## Tooling up

Once we've set a standard and shared the knowledge, the best way forward is to tool up.

The ideal is to choose the right tool for the job. Start with code sniffer or linting tools that allow you to set the standards that you've already defined.

Next, you'll want to think about mess detection, duplicate code detection and any other standards that you can think of that you could get written as code and put into tooling.

The benefit of this is not only can you get this working in your local development environment (and IDE), but you can also plug them into your continuous integration (CI) pipeline.

Of course, you can use an online tool like Scrutinizer or Travis CI which should take much of the pain out of your CI process.

Don't rely on just the online tools though. You'll find that it's often useful to have the command line tools at your finger tips.

Tooling up is about being able to measure success. Not only the measurment of the success of your code, but the success of your code reviews. You'll want you and your team to decide how to measure the effectiveness of a code review, you can then begin to improve those metrics by setting [SMART criteria](https://en.wikipedia.org/wiki/SMART_criteria).

There's lots of metrics to think about, such as measuring how long a peer review is open for, how many comments are added, what the volume of change is, to name a few. It's important to use metrics that are easily and consistently repeatable, so measure processes that are automated or tightly controlled.

## Wrapping up

Once you've set a standard, shared the knowledge and tooled up, there's really no excuse for long, drawn out peer reviews.

If you're still tripping up on reviewing code, then simply rinse and repeat until all angles have been covered.

There's lots more you can do to improve code reviews, so this should be enough to get you started.

What would you do to make reviewing code better?
