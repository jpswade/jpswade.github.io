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

Ultimately, it should be obvious to anyone what the code does so don’t be afraid to ask if you don’t understand how it work. I’m sure your peers will be more than happy to talk you through it.

If you see the same issue more than 3 times, this suggests that we need to address the issue by:
- Setting a standard
- Knowledge sharing
- Tooling up

Please respect each other. The goal is to improve or help others to improve.

If after 3 levels of conversation you haven’t reached a conclusion, take it offline.

If you don’t agree with a standard, that’s OK. If it’s non-blocking, stick to the standard then flag it as an issue with whoever sets the standard or your team lead. If it’s a blocking issue, hold a 15 minute huddle to come to an agreement. If you can’t reach a resolution within 15 minutes, then you should escalate to your team lead.
