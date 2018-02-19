---
title: Getting started with Behat
author: James Wade
date: 2018-01-21
categories:
  - Development
tags:
    - testing
    - bdd
    - automation
    - behat
image: https://i.imgur.com/FlEIfMk.png
---

Behat is a test framework for behavior-driven development (BDD) written in the PHP programming language.

BDD is described by its creator, Dan North, as a second-generation, outside-in, pull-based, multiple-stakeholder, multiple-scale, high-automation, agile methodology. It describes a cycle of interactions with well-defined outputs, resulting in the delivery of working, tested software that matters. Whatever that means…

Behat is intended to aid communication between developers, clients and other stakeholders during a software development process. It allows the clear documentation of testable examples of the software's intended behaviour. Behat test scenarios are written with Gherkin, a business-readable domain-specific language following defined patterns.

Don’t think of it as a tool for testing, in the sense of removing bugs, think of it as a tool for documentation and specification.

<!--more-->

As Dan North puts it:
> “BDD started as a way to teach TDD to programmers who kept getting hung up on the idea they were writing tests. Fast-forward a decade or so and it seems BDD scenario automation tools have invaded the world of acceptance testing like Japanese knotweed. All around I see teams harming themselves writing awkward, verbose tests using slow, cumbersome tools like Cucumber and SpecFlow, and acting as though BDD is some kind of testing approach”

Testing as code is not so much about automated testing, but test automation. Test automation refers to automating the process of tracking and managing the different tests.

> “I get paid for code that works, not for tests, so my philosophy is to test as little as possible to reach a given level of confidence” - Kent Beck

It’s important that we use the test pyramid to narrow down the scope of our tests. As behat and Gherkin is used to define behaviours, it should really define the end-to-end scenario through the UI. This means that tests can be slow and costly so it’s important that we limit the number of tests to cover just the high-level scenarios that we need to cover the expected behaviour.

In short, by writing the tests as code, you end up with specification by example and by using behat, you can actually execute in a repeatable way.

Though Behat is very powerful and flexible, it isn’t always the right choice. If you need to get a little lower down into the detail, not going through the UI and instead interfacing directly with integrated services, then you may want to consider a different toolset. For example phpunit is ideal to get unit test coverage of your functional code.

# Getting started

Now we understand a bit more about behat and why we want to write behaviour scenarios, let’s get started.

## Installation

Like with everything these days, there’s a few of ways to approach this. For example, you could install it as per the instructions, or you could use something like Docker to install the image.

Either way, you need Behat installed to get started. I will include those steps, however you may decide to use another method.

Before you begin, you’ll need to ensure that you have composer installed.

    $ brew install composer
    $ composer --version
    Composer version 1.5.2 2017-09-11 16:59:25

Now we’ve got composer, we need to install it:

	$ composer require behat --dev

This will update your composer.json and add behat to the require-dev section. You will also get a “behat” command in your vendor directory.

    $ vendor/bin/behat --version
    behat 3.4.3

With testing, you would divide your /tests directory into /unit, /integration, /acceptance and namespace them.

Behat expects to a directory called /features which contains the feature files. Think of these feature files as specifications rather than tests. The content should be human-readable, describe features to be used by humans and be implementation-agnostic.

To get started with Behat in your project, you can do the following:

    $ vendor/bin/behat --init
    +d features - place your *.feature files here
    +d features/bootstrap - place your context classes here
    +f features/bootstrap/FeatureContext.php - place your definitions, transformations and hooks here

That’s really all you need to get started…

If you started to write scenarios at this point you’ll find that none of the steps are defined. Now although you can write your own steps in the FeatureContext.php file mentioned above, avoid that for now, until you have more experience and instead use the Mink Extension.

MinkExtension is an integration layer between Behat and Mink. You can use Behat to describe anything, that you can describe in business logic, such as web applications.

    $ composer require --dev behat/mink-extension

Once that’s installed, you’ll need a behat.yml file to define the configuration:

    $ wget https://raw.githubusercontent.com/Behat/MinkExtension/master/behat.yml.dist
    $ cp behat.yml.dist behat.yml

You’ll find two issues, firstly the path is incorrect, you’ll see this error:

    In Inline.php line 295:
                                                                                                                                            
    The reserved indicator "%" cannot start a plain scalar; you need to quote the scalar at line 4 (near "path: %paths.base%/features").

To solve the path issue, just replace it with nothing:

    $ sed -e "s#%paths.base%/##g" behat.yml.dist>behat.yml

You’ll also want to probably replace the URL with your correct URL:

    $ sed -e "s#http://en.wikipedia.org/#http://192.168.99.100/#g" behat.yml.dist>behat.yml

Next, you’ll get an error:

    $ vendor/bin/behat -dl

    In GoutteFactory.php line 66:
                                                           
      Install MinkGoutteDriver in order to use goutte driver.

If you get this error, you will need to install the Mink Goutte Driver:

    $ composer require behat/mink-goutte-driver --dev

Note: The Goutte driver has no concept of javascript, and is fast because of it, however you can’t do anything too complicated, you can’t do any that requires javascript functionality without using a selenium based driver.

Now you’ll want to get some definitions back:

    $ vendor/bin/behat -dl
    default | Given /^(?:|I )am on (?:|the )homepage$/
    …

Armed with the step definitions, you will be able to begin writing behaviour scenarios.

## Example

This is ideal for doing basic web application testing, including “create, read, update and delete” (CRUD) forms.

For example:

      Scenario: Filter by author, one result
        When I select "Christopher Negus" from "author"
        And I press "filter"
        Then the response status code should be 200
        And the response should contain "978-1118999875"

This will open your base url, select the author from the list, press the filter button, then check the response is correct and that it contains the expected result.

We don't need to explicitly test every scenario end-to-end, instead we just identify the most critical paths and focus on those and define multiple examples using scenario outlines.

Behat can also be used for API testing. I tend to think of an API as a separate service which requires its own end-to-end level testing through its user interface (UI) which is the API.

If you’ve read Phil Sturgeon’s work on “APIs you won’t hate”, you’ll know that you can write  your own feature contexts to make Behat support API requests. Fortunately, you don’t need to as there’s some interesting behat api extensions already available to us.

    $ composer require behat/web-api-extension --dev

Note: If this does fail, you may need to use one of the available forks, eg: ifxtech/web-api-extension.

That should be enough to get you started, in part two we’ll explore how to write a feature file for an application.
