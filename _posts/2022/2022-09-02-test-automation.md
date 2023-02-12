---
title: Guidelines for Test Automation
published: true
description: How I think of test automation in modern applications
tags: testing, automation, development, programming, code
cover_image: 
---

We can think of test automation as the process of tracking and managing the different tests.

These are guidelines, they will make a good starting point for us to learn the basics of the different types of testing.
It's worth remembering that any test is better than no test at all.

## The problem

The problem we're trying to solve is that the testing landscape is confusing, it's not well understood, and it's
difficult to find the right information. There's no one single authority on testing, and it's clouded by lots of
opposing opinions.

> "A common problem is that teams conflate the concepts of end-to-end tests, UI tests, and customer facing tests" - Martin Fowler

However, with the advent of agile, CI/CD and the DevOps movement, some agreement is starting to emerge amongst the
community in terms of how we approach testing.

These guidelines have been written as a way to demystify the different types of testing and bring some alignment towards
how testing is approached, in order to alleviate confusion and instead help us to continuously improve our testing
strategy, allowing for a faster and easier to maintain testing framework.

## Different types of tests

There's lots of types of testing. You have manual or automated tests, business facing or technology facing, tests that
support the development team while others critique the product.

These guidelines will cover just those that are automated and support the development team, they are: unit tests,
database tests, service tests, feature tests and browser tests.

## Unit Tests

> "Unit tests are tests that focus on a very small, isolated portion of your code. In fact, most unit tests probably focus on a single method" - Laravel documentation

Characteristics of a good unit test:

- Written in the same language
- Uses familiar tools (eg: phpunit)
- Tests written here will contribute to the code coverage metrics
- Covers one thing well (also see: Unix philosophy)
- You should be able to cover all execution paths using unit testing
- Written by the developers who wrote the code
- Easy to maintain
- Small and fast
- Run often

You know it's NOT a unit test when:

- It connects to the database
- It communicates across the network
- It touches the file system
- It can't be run at the same time as other tests
- You have to set up the environment in a particular way

Sticking to these "rules" will allow you to write very fast tests that can be run in parallel, and give a very high
confidence level, which is especially important around fragile or complex bits of business logic.

Ideally, you would set up phpunit with a Test Case class that does not have access to anything it does not need.

Note: the test is more important than the unit. It's worth trying to understand and stick to these rules where you can
most of the time, but there will be exceptions, and sometimes it will be better to have any test, than no test at all.

## Database Tests

Keeping database testing separate from unit testing has a number of positive side effects:

- It's easier to work with and optimise for when you have separated tests out that might impact the database
- It helps to make you think about separating your business logic from your database logic, so you can test them
  separately
- You may find that you won't need as many tests, because the query is so simple or is covered by another test

Database testing as per the Laravel documentation:

> Laravel provides a variety of helpful tools to make it easier to test your database driven applications. First, you may use the assertDatabaseHas helper to assert that data exists in the database matching a given set of criteria.
>
> You can also use the assertDatabaseMissing helper to assert that data does not exist in the database.
>
> The assertDatabaseHas method and other helpers like it are for convenience. You are free to use any of PHPUnit's built-in assertion methods to supplement your feature tests.

For database testing in Laravel, it is highly recommend using the "RefreshDatabase" trait as this should take the most
optimal approach to migrating your test database depending on if you are using an in-memory database or a traditional
database.

Ideally, you would set up a Test Case that does use the RefreshDatabase trait and always extend off that for all the
database tests.

## Service Tests

Tests at the integration level are generally called "service tests". You can think of this layer of testing as the point
where you would test any third party integrations, including, components, packages, libraries or APIs.

When possible, you would "mock" the third party services for testing purposes, either at application level or higher up
using a "mocked" version of the service, allowing for tests to run as quickly as possible without any third party
dependencies that might cause the test to unexpectedly fail.

From the Laravel Documentation:
> When testing Laravel applications, you may wish to "mock" certain aspects of your application so they are not actually executed during a given test. For example, when testing a controller that dispatches an event, you may wish to mock the event listeners so they are not actually executed during the test. This allows you to only test the controller's HTTP response without worrying about the execution of the event listeners, since the event listeners can be tested in their own test case.
>
> Laravel provides helpers for mocking events, jobs, and facades out of the box. These helpers primarily provide a convenience layer over Mockery so you do not have to manually make complicated Mockery method calls. You can also use Mockery or PHPUnit to create your own mocks or spies.

Best practices:

- As mocked third party services will likely add more complexity, which is harder to maintain
- There is a potential performance hit for these tests, so we should use them sparingly
- Avoid writing lots of tests to cover all variants at this level, this should be covered much lower down by the service
  itself and its own unit tests
- Each service test should only cover one individual service.

Ideally, you would set up a Test Case that would use Mockery and allow mocked instances of service objects, keeping your
service layer as clean and fast as possible.

## Feature tests

> "Feature tests may test a larger portion of your code, including how several objects interact with each other or even a full HTTP request to a JSON endpoint" - Laravel documentation

You can consider a feature test, slightly lower level than browser level testing, still using familiar testing tools,
but hooking into the application as high up as possible without leaving the application boundaries, such as going
through the web server, but instead hooking directly into the http or console layer of the application to make the
calls.

Feature tests usually execute by hitting the application's http layer, executing methods such as a GET or POST requests,
going through the routing layer, before finally hitting our controllers, to perform its execution.

- Like an end-to-end test, it would not natively contribute to code coverage, because it's difficult to follow the
  execution path through the http layer of the application to specific lines of code.
- Similar to a service test, feature tests can connect to third party services, the difference is that it will not just
  factor in one service, but as many services are needed to test that feature.
- Each feature test should be designed in a way that covers one feature.
- Feature tests are great for testing all the pieces together, ensuring that routes work as expected, ensuring that we
  get the expected response from the application.
- Feature tests are great for testing happy paths, and expected sad paths, but I would use them sparingly for testing
  many variations, as they will be much slower than the other tests.
- Feature tests will usually require access to the database, but I would avoid peering into the database at this level.
  That should be done lower down at the database level. At this level, you are interested in the request and the
  response, more end to end. Avoid attempting to get in the middle of this at this level, as this will result in slow,
  hard to maintain tests.
- It's OK to fake things that the browser might do with requests, such as sending dummy cookies or file uploads.
- Although these feature tests are often written using phpunit, they wouldn't be considered unit tests, as they are
  testing whole features, not units of code.

Here, the Test Case would be set up to instantiate an instance of the application that you would use to run your test
against. This would then be used to extend off for all of your feature tests.

Use feature tests sparingly, they will be slower than service or unit tests.

## Browser tests

You can think of "browser tests" as a way to achieve browser automation, that would otherwise be done by manual testing.
This is often called UI testing, because you're testing through the user interface, as a user would see the application.

They are often called "end to end tests" or "black box testing" because they do not care about the "blackbox" that
happens in the middle, you're more interested in the end result, what the user sees, not what's happened in the middle.

For example, if you want to know if a particular action has changed something in the database, don't be tempted to peer
into the database directly, instead, you should be looking for something on the UI that you can use to assert the change
has occurred. Like a user would do.

Confusingly, you can have browser tests that are feature tests. The difference is that here, we're using a different
approach and technology stack.

At this stage, you're testing things that you can only test using a real browser, such as the behaviour of the user
interface that requires javascript.

- Business facing. The purpose of these tests is to outline that the application behaves according to the acceptance
  criteria.
- These tests tend to be written in a way that's easier for a non-technical audience to digest, using domain specific
  language.
- Automate manual tests. These tests tend to use actual browsers such as Chrome and require special software and drivers
  installed to make it run, as such these tests are slow and should be used sparingly to cover only the key journeys.
- Quite often, providing there is enough coverage at the lower layers, it would be sufficient to run these tests less
  frequently, perhaps only as a "smoke test" when you do major updates to ensure everything is still working as
  expected.
- You wouldn't want browser tests to cover all the possible variants and execution paths, as they would be incredibly
  slow and would become difficult to maintain.
- Browser tests should be used sparingly, as they require a lot of resources to run and are quite cumbersome to maintain
  if you end up with lots of them in the long term.
- These tests don't need to run each time you check in new code. You may wish to batch them up. You can decide which of
  these tests you want to run on each batch, while you may have other tests that you only want to run as part of the
  nightly pack. Normally, you'd expect these test suites to run about 7-10 times per day.
- These type of high-level tests are there as a second line of test defense, it's an indication that's there's not just
  a bug in your functional code, you also have a missing or incorrect unit test
