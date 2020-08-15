---
title: Rule of three
published: true
description: The “rule of three” is code refactoring rule of thumb to decide when a replicated piece of code should be replaced by a new procedure
tags:
    - software
    - development
    - programming
cover_image: https://images.unsplash.com/photo-1550985543-49bee3167284?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1334&q=80
---

Sometimes called “1, 2, refactor”, the “rule of three” is code refactoring rule of thumb to decide when a replicated piece of code should be replaced by a new procedure. It states that the code can be copied once, but that when the same code is used three times, it should be extracted into a new procedure. 

> “Refactoring is a disciplined technique for restructuring an existing body of code, altering its internal structure without changing its external behavior”
> ― Martin Fowler

This is a rule that has really served me well in recent years when I’ve come up against challenges on when something should be refactored.

<!--more-->

As developers it’s all too easy to spend too much time trying to engineer perfection, when really, all we needed to do was what was asked of us.

We also have to recognise that we can’t always plan for the future and by refactoring or abstracting code too early, you may find that you back yourself into a corner which results in, you guessed it, two versions of the code, each with slight differences to accommodate the tight coupling.

It really only makes sense to defer the decision to refactor once you know a bit more about what it is you’re trying to do.

After all, you can’t plan for what you don’t know. You can only deal with the information that you have right now, so we should programme for that.

> “Whenever I have to think to understand what the code is doing, I ask myself if I can refactor the code to make that understanding more immediately apparent.” 
> ― Martin Fowler

This is, being a rule of thumb means that there are exceptions to this rule, there are good times to refactor as well as bad. This rule prevents you refactoring before you have enough information.

If you find yourself in a situation where you’re asking whether it’s too early to refactor, it probably makes sense to apply this rule.
