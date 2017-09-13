---
title: Reviewing Code
---

We now live in a time of version control, git and github. If you work in software development you should be familiar with "pull requests".

A pull request is a way for people to contribute to your code repository.

But that's not all, it's also an opportunity to review your peers code.

Things to look out for:
- Inconsistencies (better: coding standards)
- Complexity (better: simplify)
- Size (better: smaller)
- Commenting (better: self explanatory code)
- Duplication (better: 1,2, refactor)
- Risk (better: test coverage)
- Mess (better: no unused code)

You should be asking questions like:
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

Ultimately, it should be obvious to anyone what the code does so don’t be afraid to ask if you don’t understand how it works. I’m sure your peers will be more than happy to talk you through it.

If you see the same issue more than 3 times, this suggests that we need to address the issue in one of three ways, consider:
- Setting a standard
- Knowledge sharing
- Tooling up

Be pracmatic, but also have a sense of humour. Get the job done and have fun doing it. The goal is to make things easier, not harder. Please respect each other. View it as an opportunity to improve or help others to improve.

Be bold in your proposals, be clear and concise in your argument. Be prepared to accept that you may be wrong or at least, mistaken. That's OK.

If after you've responded 3 times, and you haven’t been able to reach a conclusion, take it offline. Find other means of resolution. Consider consulting an expert or raising it to a wider forum.

If you don’t agree with a standard, that’s OK. If it’s non-blocking, stick to the standard then flag it as an issue with whoever sets the standard or your team lead. If it’s a blocking issue, hold a 15 minute huddle to come to an agreement. If you can’t reach a resolution within 15 minutes, then you should escalate to your team lead.

## Setting a standard

If there isn't already a standard set within your team or product, then you should consider setting one.

Find an existing standard that you think will make a good base and start with that.

Beyond that, setting more specific standards can be achieved once you've experienced the same issue 3 or more times.

Often it doesn't matter which standard you pick, so long as you can all agree to it.

> "The sign of a good code base is it looks like it's written by one person rather than a team with differing opinions" -- Probably someone much smarter than me.

Once you've decided on a standard, agree on the severity. Is it a "nice to have" (a warning) or is this an absolute no go (strict). Really think about whether you want to potentially hold back a release over something that is potentially quite trivial.

Prepare for standards to be challenged from time to time. They may be wrong, you may have made a mistake. However, changes to standards shouldn't be done on a whim as they may impact the entire codebase, which is a costly excercise. Ensure that there is a good solid argument for a change to standards. Changes should be well considered.

## Knowledge sharing

In many organisations, the constituion will state something along the lines of "notice will be deemed served by advertising the meeting in at least three public places" for when a meeting is called.

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

Which method you use really depends on the people you're communicating to, though my view is, so long as they achknowledge the information, it really won't matter too much in the end.

It's always a good idea to get sponsorship and consult with your peers before you set standards and share them. Make sure you have people to support you in what you're trying to do.

## Tooling up

Once we've set a standard and shared the knowledge, the best way forward is to tool up.

The ideal is to choose the right tool for the job. Start with code sniffer or linting tools that allow you to set the standards that you've already defined.

Next, you'll want to think about mess detection, duplicate code detection and any other standards that you can think of that you could get written as code and put into tooling.

The benefit of this is not only can you get this working in your local development environment (and IDE), but you can also plug them into your continuous integration (CI) pipeline.
