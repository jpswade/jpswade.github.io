---
title: Avoid using switch-case statements
author: James Wade
date: 2019-02-12
category: Development
tags:
    - php
    - programming
    - refactoring
    - patterns
    - software
    - development
image: https://i.imgur.com/AdsxQKS.jpg
published: true
---

Recently I've been asked why [switch-case statements](https://en.wikipedia.org/wiki/Switch_statement) should be avoided, it turns out to be a [pretty common question](https://www.reddit.com/r/PHP/comments/aoqjd5/switch_statement/), and although I'm pretty happy with the reasoning of switch statements being less readable and maintainable, I had forgotten the source of this wisdom so I thought it would be worth revisiting.

<!--more-->

![Avoid using switch-case statements](https://i.imgur.com/AdsxQKS.jpg)

I remember writing about avoiding using switch-case statements in my [2008 article on PHP optimisation tips](/50-php-optimisation-tips-revisited/). However, I only really talked about the fact that “if/else” statements being faster than case/switch statements. However, with the latest PHP speed improvements, this might not still be true or relevant, yet I still recognise these statements as a code smell. Why?

Let’s understand why Switch Statements are code smell.

Martin Fowler observes that Object Oriented Programming avoids them: ["Most times you see a switch statement, you should consider polymorphism. The issue is where the polymorphism should occur."](https://books.google.co.uk/books?id=UTgFCAAAQBAJ&pg=PA82&lpg=PA82&dq=%22Most+times+you+see+a+switch+statement,+you+should+consider+polymorphism.+The+issue+is+where+the+polymorphism+should+occur.%22&source=bl&ots=WhU_hw_A3i&sig=ACfU3U3ycXo-pUJsOZTXkyrhJpkXH_vwvQ&hl=en&sa=X&ved=2ahUKEwif3eDvybTgAhVLVRUIHZn3BZMQ6AEwAHoECAUQAQ#v=onepage&q=%22Most%20times%20you%20see%20a%20switch%20statement%2C%20you%20should%20consider%20polymorphism.%20The%20issue%20is%20where%20the%20polymorphism%20should%20occur.%22&f=false)

Essentially, something else is going on, more often than not. That's why it is a Code Smell. When you get the [Switch Statements Smell](http://wiki.c2.com/?SwitchStatementsSmell), it's an indication that your code isn't Object Oriented.

[Bob Martin explains](https://youtu.be/TMuno5RZNeE?t=3725) that if you follow the Open/closed principle (of SOLID principles), then when you add a new feature, you should be able to do that without changing any old code, simply by extending. Switch statements mean you can’t extend as you have to change the statement.

So there we have it, although there’s nothing inherently wrong with switch statements as such but chances are, there’s a better way.
