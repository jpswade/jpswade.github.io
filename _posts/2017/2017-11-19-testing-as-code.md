---
title: Testing as code
author: James Wade
date: 2017-11-19
categories:
  - Development
tags:
    - testing
    - quality
    - bdd
    - gherkin
image: https://i.imgur.com/TQ1dGd8.png
---

In a time where DevOps culture demands "everything as code", from infrastructure to monitoring, its about time we took "testing as code" seriously.

First of all, I'm a big fan of test-driven design (TDD) and unit testing, but I'm not just talking about unit testing here. We already know unit testing should always done by a unit testing software framework, (usually) written before the code, and is always written in code.

Beyond this type of functional testing, you venture into feature testing. Testing the integration layers, and end to end testing, probably manually. With automation as the goal, you really want to focus on how you approach testing and give some consistency across it all.

There's a number of principles and practices that lend support to the idea of this "testing as code" approach, including continuous integration, automation over documentation, automated testing, version control and infrastructure as code. Ultimately, it's about making testing less painful.

<!--more-->

## Behaviour-Driven Testing

Behaviour-driven testing (BDD) is described by its creator, Dan North, as a second-generation, outside-in, pull-based, multiple-stakeholder, multiple-scale, high-automation, agile methodology. It describes a cycle of interactions with well-defined outputs, resulting in the delivery of working, tested software that matters. Whatever that means…

If you're already doing BDD, then you are likely already using something like behat or cucumber which reads the gherkin language.

Gherkin is the business readable, domain specific language used in BDD for writing software requirements, which results in "feature files".

Naming things is hard. To keep it simple, a principle adopted from Domain-driven Design, is ubiquitous language. By using the same language as the business, naming becomes simpler.

The Given-When-Then (GWT) format is used to define the features. The feature files are made up of a feature title, narrative, background, scenario, steps, tags, example tables and doc strings.

- The given part describes the state of the world before you begin the behavior you're specifying in this scenario. You can think of it as the pre-conditions to the test.
- The when section is that behavior that you're specifying.
- Finally the then section describes the changes you expect due to the specified behavior.

Keeping your tests in with the code is better than using a separate testing management tool. You can use the gherkin for manual as well as automated. Using one discipline for all testing will help to keep consistency. Keep all your tests with your code. Just like all code, use version control.

You can use tags to shape the testing. If it's an manual test, tag it. If it's a story acceptance test, tag it. If it should run nightly, tag it. If it should run as part of the sanity checks, tag it.

By its very nature the gherkin language defines the behaviour in the application. You won't need extra documentation to explain how your application works. Like any code, you should treat testing as a living document and it should grow as the application grows.

If you're on the DevOps journey, then having your testing in gherkin is important to you as automation over documentation will help you to reach your goals.

Testing as code is not so much about automated testing, but test automation. Test automation refers to automating the process of tracking and managing the different tests.

> "I get paid for code that works, not for tests, so my philosophy is to test as little as possible to reach a given level of confidence" - Kent Beck

It's really tempting to avoid tests. We know that TDD means we should do unit tests before we start coding, yet we often end up leaving them until the end which often ends up being a costly mistake.

![Imgur](https://i.imgur.com/TQ1dGd8.png)

## Executable Acceptance Criteria

Originally, when I picked up BDD, I was nervous about using it for acceptance criteria. However, as time goes on, I see that in order to understand and appreciate the story and acceptance criteria I need to have a form grasp of the expected behaviours.

Writing tests like this serves a number of purposes. First of all, it gives us a standard to work to. It means everyone knows how to write a specification for a story. It means examples can be written by anyone. It also means that people have a source of truth for behaviour. A single source of truth for the expected behaviour of the application. Ideally, these specifications are executable too, but that is really of secondary concern. The important thing here is that we have a shared understanding.

If for example, we take books, which may fit into multiple categories. Managing book data itself might seem relatively straightforward, however it's not until you unbundle the fact that we need the ability to search by category that it becomes a problem. You are now dealing with two data types, books and categories, rather than one (just books). If you did the testing up front then you already know the expected behaviour. The alternative is to understand the story from one perspective without defining the behaviour, which is dangerous territory.

You need to know up front what the expectations are, what the behaviour is, what data models you're working with, what the code flow is likely to be. Without this information, you're making assumptions, rather than assertions.

My view is that the more assertions we can make about a story up front as code, the better our end result will be. We know that the end result is what is important. We know that the feedback from users is what is important. We know that quality is based on what we deliver compared to what else is available on the market. So if we are to pick up a feature, we need to be confident that the behaviour is defined as logically as can be, so that we can translate that logic into the elegant code that we write.

> "Any fool can write code that a computer can understand. Good programmers write code that humans can understand." - Martin Fowler

We need to ensure that if we are to write code, that we know what we're writing is not only making sense to the computer, but making sense to programmers reading it and the logic is as expected by the user that uses it.

Behaviour tests give us that. If we write our acceptance criteria as behaviour tests, in the given-when-then format and specify by example, to ensure that as developers we have understood that logic correctly, then there is no room for assumptions, which invariable lead to either more testing or compromise.

## Quality Built-in

If quality is a top priority then compromise is not an option. We must put our efforts in to understand the behaviours that is expected by the end user, rather than making assumptions that could be wrong, or worse, take longer to test and agreed upon. If the criteria is specified up front then there is no disappointment, there's no revisiting time and time again, there's no doubt that what you are delivering is as expected. Leaving you to focus on more important things in quality, like user feedback.

Unless you literally write the behaviours down, the tests that are used to reach acceptance, you will never be able to wholeheartedly say that you are meeting the acceptance criteria, because the acceptance criteria is subject to interpretation, unless it is written as an acceptance test.

Agile does not mean bending over backwards, it means being able to accept change and deal with it at the last possible moment. That doesn't mean in real time, it means weeks or days, rather than months or years. It means saying no, it means being tough when the acceptance criteria might change.

That doesn't mean that an acceptance criteria can never change, everything is a compromise, but what it does mean is that only the team should accept the changes, rather than the alternative which is to just accept any change on a whim.

> "What they [acceptance criteria] should be is specific, narrow and falsifiable, so I know when to stop coding. And in the language of the business domain" - Dan North of BDD

If the aim is quality built in, we believe testing isn't something that you just tack on the end, and you improve quality by shifting testing left and we believe in using specification by example and that acceptance criteria should be executable, then using the gherkin language for the acceptance criteria seems like the obvious way to go.

Acceptance criteria is often implicit, rather than explicit, too open to interpretation, because humans aren't deterministic. A dangerous combination. Sure acceptance criteria needs to be focused on what is required rather than what is obvious, but does it need to be clear enough that we know when to stop coding.

That doesn't mean that you need to be explicit about the non-functional requirements of a user/feature story, such as unit test code coverage, code linting and that kind of thing, that is defined in other ways, such as standards and processes. It means that the behaviour of the software is explicitly defined and it works as expected.

By using specification by example, writing behaviour-driven tests, writing executable acceptance criteria and ultimately writing testing as code, you'll solve many of these problems and you'll naturally edge closer to quality built in.

## Artificial Intelligence

A running theme in software development is to automate everything, to automate yourself out of a job, to make yourself redundant. We know that artificial intelligence is the future and the way machine learning works is that you need to program in the boundaries and provide the inputs.

By writing the behaviours and specification up front as acceptance criteria, we are effectively writing providing the boundaries and giving examples of inputs. The development is covered by further boundaries called standards and guidelines. Done right, testing is covered by the same thing, our automated tests. Deployment again, our deployment pipelines. Allowing us to close the loop and focus on feedback and how we automate that.

Learn to program behaviours and write specifications now and it will be a helpful tool in the near future when we remove humans out of the business of writing code.