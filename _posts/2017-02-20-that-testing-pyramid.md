---
layout: post
title:  "That Testing Pyramid"
date:   2017-02-20 09:00:00 +0000
author: James Wade
categories: Development
image: http://i.imgur.com/BZM8Yam.png
tags:
    - testing
    - webdev
---

Today I want to talk about that "Testing Pyramid", you know the one, that one, [Martin Fowler](https://martinfowler.com/) calls it a "Test Pyramid".

It's the one that has UI at the top, Service in the middle and Unit at the bottom.

This "test pyramid" was a concept developed by [Mike Cohn, Mountain Goat Software](https://www.mountaingoatsoftware.com/), described in his book Succeeding with Agile.

As Martin puts it:
    
    "Its essential point is that you should have many more low-level unit tests than high level end-to-end tests running through a GUI."

So what's the problem?

<!--more-->

This is the problem, as Martin has explained from the start;

    "A common problem is that teams conflate the concepts of end-to-end tests, UI tests, and customer facing tests"

Every time you read about or discuss this thing, it seems to fuel more confusion, not less.

For example...

- Is the middle layer service or integration?
- What methodologies do you use at each later?
- What tools do you use at each layer?
- What type of testing do you do at each layer?
- What do you call the middle layer?
- Where do manual tests fit in?
- What is a UI test?
- What is an E2E test?
- Is a GUI test and a UI test the same thing?
- Where do you test your business logic?
- What about dissecting the middle layer to show what actually happens in the middle?
- How does manual testing fit into this pyramid?
- Which layers are automated?
- What does each layer mean?
- What about canary releasing?
- What about acceptance tests?
- How many tests do you run at each layer?
- What about performance tests?
- What about exploratory testing?
- What about regression testing?
- What are unit, service and UI types of?
- Are unit, integration and e2e all the same classification?

[Sam Newman, Developer at Thoughtworks](https://www.oreilly.com/learning/building-microservices-testing) on Building Microservices explains that we're all having problems with the "Service" layer;
    
    "The problem with this model is that all these terms mean different things to different people. "Service" is especially overloaded, and there are many definitions of a unit test out there"

It means different things to different people.

[Seb Rose at Cucumber](http://claysnow.co.uk/architectural-alignment-and-test-induced-design-damage-fallacy/) on The Consistency of message explains;
    
    "The testing pyramid was never a pyramid – it was always a triangle. It was always an approximation of the world. The words inside the triangle have always been problematic and I don't use them any more."

If you look at the pyramid  on Martin Fowler's website today, even he has tried to make it simpler by adding some axis.

On the left you will see it's fast (unit) to slow (UI), on the right you will see it's cheap (unit) to expensive (UI).

I think this demonstrates the "point" Mike Cohn was trying to make, much better:

    "Its essential point is that you should have many more low-level unit tests than high level end-to-end tests running through a GUI"

It was never the point of the pyramid to provide a testing strategy, just a warning there is a cost/speed trade-off when automating tests.

I like the idea of scales. It demonstrates that there's a balance between cost and speed, or for example risk.

It's useful to help make decisions, but it doesn't tell us what to test, when to test or how to test.

Terminology in the testing world is incredibly overwhelming, for example:

- Unit testing
- Service testing
- Integration testing
- Application testing
- Acceptance testing
- UI testing
- End-to-end testing
- Performance testing
- Exploratory testing
- Regression testing
- Manual testing

So, what does it all mean? All this jargon?
 
Many of these mean the same thing, many of them are exactly the same thing.
 
We're all talking about the same thing, just in different ways.
 
Let's abstract away from the jargon.

We just want to know... What to test? When to test? How to test?

So, terrible metaphors aside for a second, what are we actually trying to achieve?

We're evolving. The ["DevOps movement"](https://saucelabs.com/blog/from-engineering-to-devops-the-sauce-journey) is taking us on a journey towards "Continuous Operations".

The first step towards that is continuous integration, which is why you're looking at the testing pyramid, because it's all about test automation.

What we're trying to achieve is Continuous Integration, as [Martin Fowler](https://www.martinfowler.com/articles/continuousIntegration.html) explains:

    "A software development practice where members of a team integrate their work frequently, usually each person integrates at least daily - leading to multiple integrations per day. Each integration is verified by an automated build (including test) to detect integration errors as quickly as possible"

It's about:
- Daily integrations
- Automated builds and tests
- Error reporting
- Quick feedback

So where does testing fit into the process?

[Dan North](https://dannorth.net/2016/04/20/awa-interview/), who developed the BDD methodology, explains where testing fits into the process;

    "A common approach I see, and one advocated by many agile methods, is a “testing pyramid”, with lots of unit tests at the bottom, a smaller number of acceptance tests as the middle layer, and a small amount of manual testing to top off the pyramid"

That's:

- Lots of unit tests, then
- A smaller number of acceptance tests, then
- A small amount of manual testing

The tests are just part of a process.

So what does that process actually look like?

Well, it does not look like a pyramid.

Pyramids a terrible metaphor for the testing process.

We need to stop talking in terms of testing as a pyramid, because it's not helping.

Pyramid charts are used for organising hierarchy (such as the food group chart).

Don't use pyramid charts for processes.

Please STOP trying to build testing pyramids.

If you really need a metaphor, then, instead, try to think of testing as a fluid process.

![Testing funnel](http://i.imgur.com/BZM8Yam.png)

It should flow. Testing is much more like a funnel in our delivery pipeline. The code goes in and a working product comes out.

Consider it being analysed and filtered at each stage.

So what would that process actually look like?

Think about a delivery pipeline with code coming in from the left, and production on the right, testing in the middle.

[Kenny Cruden QA Consultant, Thoughtworks](https://www.thoughtworks.com/insights/blog/qa-role-what-it-really) explains that each environment provides an opportunity for validation:
    
    "Each environment provides the platform for unique validations to be made, each providing a different benefit and focus on the product"

By looking at the environments, you can see a clear flow of code coming in and a production build at the end, it tells us;

- What testing is done
- When testing is done
- How testing is done

By looking at testing as part of our delivery pipeline, and using the environments to show a flow, we can apply what we know to that process.

[Michael Hackett, Vice President at LogiGear Corporation](http://www.logigear.com/magazine/exploratory-testing/continuous-testing-part-2-strategy-and-automation-goals-for-test-teams/), talks about continuous testing strategy and automation: 

    "You need to think of what and why we test on different environments"
    
Much like the scale metaphor, we need to make decisions at each environment.

A decision matrix that shows the who, what and why at each environment is a testing strategy.

Think about what the tests do at each environment.

- What methodology and technology are you planning to use?
- What will it cover?
- What is the scope?
- How often do you expect them to run?
- How long do you expect them to take to run?
- How are they triggered to run in the workflow?

A good strategy requires an understanding of the workflow, processes, planning, decisions and the right tools for the job.

A decision matrix may not be as elegant as the pyramid, but it's the right tool for the job.

<blockquote class="twitter-tweet" data-lang="en"><p lang="en" dir="ltr">Please can we stop using the &quot;test pyramid&quot; paradigm? It&#39;s a terrible metaphor for a testing strategy. <a href="https://twitter.com/martinfowler">@martinfowler</a> <a href="https://twitter.com/mikewcohn">@mikewcohn</a> <a href="https://twitter.com/tastapod">@tastapod</a></p>&mdash; James Wade (@jpswade) <a href="https://twitter.com/jpswade/status/833332335588364290">February 19, 2017</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>