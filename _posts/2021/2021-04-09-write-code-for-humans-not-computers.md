---
title: Don't write code for computers
published: true
description: Why it's important to write code for humans, not computers
tags: code, development, programming
cover_image: https://images.unsplash.com/photo-1569012871812-f38ee64cd54c?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80
---

When trying to keep code simple, you may find yourself torn as to what is more simple, less code or more verbose code?

> “Any fool can write code that a computer can understand. Good programmers write code that humans can understand” - Martin Fowler

## The problem

Often we attempt to be explicit by adding more documentation or comments, however this doesn’t always end up the way we hope. The comments end up implying what the code will do, rather than the code being self documenting and explicit.

> “Redundant comments are just places to collect lies and misinformation.” ― Robert C. Martin, Clean Code: A Handbook of Agile Software Craftsmanship

Comments become redundant because they often differ from the code itself, especially over time. The more complex the code, often the more comments there are and the more it is likely to differ over time.

You have to put yourself in the shoes of the next person to read your code. They are unlikely to read your comment, less understand it, so will simply read what the code is doing instead and then change the code to whatever they need it to do, without updating the comments.

Docblocks are different to comments and often a place to put annotations, but even those where possible are favourable to put into the actual language, than in the docblock. Although docblocks can be used to describe methods, they shouldn’t describe the logic itself, the code should do that.

## The solution

Rather than writing comments, see if you can refactor the code to make it more obvious. Break out complex logic into a new method. Use variable names to give context to its value. Avoid magic numbers and strings, instead use well defined constants.

It may not feel like writing mode code is the most pragmatic approach as you will write more code, however it will save you time in the long run and you won't need to refactor as much.

When you're explicit upfront, you'll find it much easier to write tests, debug and ultimately maintain rather than an implicit approach which leads to ambiguity and uncertainty.

> “When you feel the need to write a comment, first try to refactor the code so that any comment becomes superfluous” - Martin Fowler

If you find yourself in a situation where you can choose whether to go with strict typing, you should because it means you can be explicit.

In 1974, Liskov and Zilles defined a strongly-typed language as one in which "whenever an object is passed from a calling function to a called function, its type must be compatible with the type declared in the called function."

Being explicit also puts less burden on the resources as it doesn't have to guess what you mean.

Similarly to keeping it simple, when you're thinking “clever” or “smart” by using implicit methods, see if you can opt for idiot proof and explicit method instead.

> First, if the code is clear, and uses good type names and variable names, it should explain itself.  Second, comments aren't checked by the compiler, so there is no guarantee they're right, especially after the code is modified.  A misleading comment can be very confusing.  Third, the issue of typography: comments clutter code. - Rob Pike, February 21, 1989

It's good to be explicit when it comes to standards too. Having implicit standards will soon get lost as new people begin to put their own spin on the code. That's why it's best to choose and define the coding standards and stick to that. It will save a lot of time.

Have you had experience with comments vs code? Do you have any examples? I'd love to hear about them in the comments.
