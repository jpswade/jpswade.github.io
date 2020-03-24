---
title: Exceptions are meant to be exceptional
published: true
description: Exceptions come at a cost, and they are expensive. They have a performance impact on the software and a maintenance overhead.
tags: software, webdev, programming, development
cover_image: https://images.unsplash.com/photo-1551621490-5cb8cbc4437b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80
---

Now and again I come across patterns that I see in codebases and pull requests, especially when the project or team is maturing. This covers one of them.

I've found that developers that have picked up more advanced patterns and become familiar with a codebase that is full of compromises made during it’s organic growth, they begin to apply those same patterns to solve the problem with a broad stroke, sometimes at the risk of not fixing the underlying issue.

One such pattern is try-catch. Once the power of a try-catch is learned, it starts being used everywhere. I’ve seen the whole contents of a method wrapped in a try-catch, catching anything it can. When all you have is a hammer, everything looks like a nail.

<!--more-->

When you ask why they have used the try-catch, the answer is usually that they are trying to avoid the application producing unexpected errors. You might ask, "Why don't you wrap the whole application in a try-catch?", though it could be mistaken as flippant, it does promote the right thinking.

Uncle Bob explains that if you’re having to write in exception handling in your method, then you’re probably doing it wrong. Exceptions are meant to be exceptional.

<blockquote class="twitter-tweet"><p lang="en" dir="ltr">Error handling is “one thing”.</p>&mdash; Uncle Bob Martin (@unclebobmartin) <a href="https://twitter.com/unclebobmartin/status/1008802898044649473?ref_src=twsrc%5Etfw">June 18, 2018</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>

Similarly, catching an exception to then just report it back to the user isn’t great because you’re treating it as if it’s expected behaviour, when it isn’t. Exceptions should be exceptional.

Catching an exception only to report it is a sure overkill. Simply because uncaught exception is a fatal error already, and it will be reported by itself. Without that blunt try/catch/die sequence, making your code much cleaner.

> Sadly, the PHP manual is especially bad at it, showing such examples all over the place. On the one hand, it is understandable as such an example is guaranteed to output an error message, regardless of the user settings. On the other hand, this when this approach gets mindlessly copy-pasted into the live code, it turns out to be superfluous, user-unfriendly and harmful.
> [https://phpdelusions.net/top#try_catch](Try-Catch at phpdelusions.net)

Catching all “exceptions” or “throwables” makes it really hard to debug what’s going wrong. Avoid catching all “exceptions” or “throwables”, instead use exception handlers. This will maintain that exceptions are exceptional and handled exceptionally, and makes the application easier to understand and debug in the event of an issue.

If you’re validating some data, you usually shouldn’t be using exceptions to signal validation failures, if you’re expecting the failure, then perhaps it’s not an exception. Exceptions are exceptional.

> “if a failure is expected behavior, then you shouldn't be using exceptions”
> [Martin Fowler](https://www.martinfowler.com/articles/replaceThrowWithNotification.html)

You shouldn’t need to catch all exceptions. You’d have to have an exceptional reason to catch an exception, so use try-catch sparingly. Next time you see a try-catch, think, how can I refactor this so that the try-catch becomes redundant. Remember, exceptions are meant to be exceptional.

Exceptions come at a cost, and they are expensive. They have a performance impact on the software and a maintenance overhead.
