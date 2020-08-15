---
title: Is naming things really that hard?
date: 2017-03-03
author: James Wade

image: http://i.imgur.com/5zWamny.png
redirect_from: /development/2017/03/03/whats-in-a-name.html

categories:
  - Development
tags:
  - naming
  - language
  - agile
  - ddd
---

> There are only two hard things in Computer Science: cache invalidation and naming things.
>
> -- Phil Karlton

Naming is a topic that I've covered before, in a post on my blog. My previous post was about [creating a unique company name](/create-a-unique-company-name/) and it was pretty popular. It is probably the most commented on post on my blog, at least it was until I got outranked on search engines by arguably better articles and applications.

Naming a company, a team, a project and that kind of thing is really about choosing a nickname or a code name. It's akin to naming a pet or even in some cases your kin (see [Apple Lisa](https://en.wikipedia.org/wiki/Apple_Lisa)).

Probably my favourite story in naming is the one that describes that bird we call a [Turkey](https://i.imgur.com/LIRanZh.png). However, that kind of naming is different to the naming I wanted cover here, which is a much more pressing subject:

> "Functional naming"

<!--more-->

What do I mean by functional naming? Well this could mean a number of things, such as:

- Naming a function or subroutine
- Naming a class or an object
- Giving a codebase a namespace
- Giving a codebase a functional name, rather than a code name

But naming is hard. Does it matter?

> "Programs are meant to be read by humans and only incidentally for computers to execute."
>
> -- Donald Knuth

It matters because although naming is hard, it's an important part of communication. If you get it right, it makes communication much easier going forward. I've always been a big fan of keeping things simple ([KISS](https://en.wikipedia.org/wiki/KISS_principle)), as such when it comes to naming, I prefer to use the same language as the people who will be using the function.

![ubiquitous language](http://i.imgur.com/5zWamny.png)

Later, I learned that in [Domain-driven Design](https://en.wikipedia.org/wiki/Domain-driven_design), that this is called
 [ubiquitous language](https://www.martinfowler.com/bliki/UbiquitousLanguage.html). Ironic, as it's probably not the phrase I would have used to describe it, but then I'm not a language expert, language is not my domain.

Ubiquitous language is just a fancy way of saying that the language spoken by both software people and business people is the same. The result is that you don't need a jargon buster, because there is no translating to do between the business and your implementation. That's assuming that your business names things correctly in the first place. As we know, naming is hard.

> Domain experts should object to terms or structures that are awkward or inadequate to convey domain understanding; developers should watch for ambiguity or inconsistency that will trip up design.
>
> -- Eric Evans

In software, a function is described as inputs, behaviours and an outputs. For that reason it's pretty easy to see functions are doing something, they are actions, so you would name them using verbs. That's fine, until you need to describe the things or entities that they interact with. They are objects.

An object is different. An object is not an action, it is a thing, usually an entity. If it were to exist outside of an application, you might think of it as a physical entity that you could identify with a word. That word is a noun.

An object should be objectively named. It should not be influenced by personal feelings or opinions. It should only represent the facts. That's assuming that all nouns are objects and that's not the case.

For example, a transaction is a noun, but it probably wouldn't be very useful to describe an entity. Of course, not all objects are entities, you can have ["value objects"](https://martinfowler.com/bliki/EvansClassification.html) which, to me, are really just a way to bundle together properties of an entity property.

For example, a name, an address or a transaction. These would be properties of an entity. An entity will have a ["bounded context"](https://martinfowler.com/bliki/BoundedContext.html). So how do you know for sure when something is an entity or a property?

If you thought naming was hard, we're now moving into taxonomy, a subject that even science struggles with. The key deciding factor when deciding if something is an entity or not is when I speak to a domain expert (stakeholder) and ask them what is this part of, they either tell me a system process or an entity. If it's a system process, it's probably already an entity. Otherwise, they will usually tell you a proper noun. This is your entity.

Sometimes even the business people get it wrong because naming is hard. Naming is hard because, especially in businesses that have been around for a while because they are told what an object is by someone and that usually sticks. That is until you start to mix in new people from other businesses, who then have to be educated in that jargon each time.

As a rule, it's best to stick with a name that makes sense to everyone, everywhere. That's why most things on computers are named after objects found in and around a 1970s office. That's why we have files and folders, and of course, a desktop. This is called the [desktop metaphor](https://en.wikipedia.org/wiki/Desktop_metaphor).

This worked for the majority of people at its inception because they were aiming at business people, in offices. It then continued working because people using computers were either familiar with what they were using or in office type settings where similar things already existed. Even then, the metaphor isn't an exact science. You can only get so far before you fall off the desk into a "file cabinet" before finally reaching a "dashboard" that belongs to a car.

> The desktop metaphor was invented because one, you were a stand-alone device, and two, you had to manage your own storage. That's a very big thing in a desktop world. And that may go away. You may not have to manage your own storage. You may not store much before too long.
> -- Steve Jobs

So if we can't rely on the desktop metaphor, what are the rules? Naming is hard. One of the most difficult things in naming then, is naming something that both the business has already named wrong and
is not usually found on the desk of a 1970s office.

> How many classes do you come across named SomethingManager? Any decent sized commercial system seems to have plenty – SessionManager, ConnectionManager, PolicyManager, QueueManager, UrlManager, ConfigurationManager, or even, sadly, EJBManager.
> A quick look at the dictionary entry for "manager" and "manage" gives at least ten different meanings - from "to make and keep compliant" through to "to achieve one's purpose". I remember one day when the receptionist briefly retitled herself as Switchboard Manager. The common semantic to all these definitions seem to be a vague "looks after stuff".
> 
> This imprecision makes Manager a bad word to use in naming classes. For instance, take a class named UrlManager – you cannot tell whether it pool URLs, manipulates URLs or audits the use of them. All the name tells you is that this class does something with URLs. On the other hand, the name UrlBuilder provides a much clearer picture of what the class does.
> 
> In the Java world, the Manager suffix is thrown around a lot. Almost anywhere you have a class that is responsible in any way for other objects, it automatically earns the Manager label.
> 
> -- Alan Green

In the early days of technology, computers existed, not as they do today as a marketing or sales tool, but as an accountancy tool. When building software for an internal system it becomes that much more difficult to name. This is where the "[system metaphor](http://xp123.com/articles/the-system-metaphor/)" comes in.

The system metaphor is way of describing a set of processes that a business uses in it's operations.

> "The system metaphor is a story that everyone – customers, programmers, and managers can tell about how the system works."
>
> -- Kent Beck, Extreme Programming Explained, p. 179.

It's an overlapping topic with "Ubiquitous Language", basically each layer of a project, from the end users through the view to the back-end and the database, should use the same names for the same things.

> Chrysler is a manufacturing company; we make cars. Using a manufacturing metaphor to define the project was an important first step in getting the team (and management) on a level playing field. The concepts of lines, parts, bins, jobs, and stations are metaphors understood throughout the company.
> 
> -- Ron Jeffries

In the manufacturing paradigm, you use a control panel to control the system, so that's what people end up calling interfaces with buttons on that performs actions. In the office, that's a desktop. In a workshop, that's a [workbench](https://en.wikipedia.org/wiki/Workbench_(AmigaOS)). In a car, that's a [dashboard](https://en.wikibooks.org/wiki/Software_Engineering_with_an_Agile_Development_Framework/Iteration_One/System_metaphor#example:_dashboard). In a house, that's windows. An accountant or lawyer would use an administrator. In a sales business system, you have front office staff (sales and customer-facing) and back office staff (administration), which means you get a back office system.

Unfortunately as software uses the same paradigm, this can lead to confusion, as it also refers to the separation of concerns between the presentation layer (front end), and the data access layer (back end). So if using a [proven system metaphor](http://wiki.c2.com/?ProvenSystemMetaphors) leads to confusion, you need to think of a different paradigm such as devices everyone already uses. For example, when you're using a device like a TV or radio, that's a remote control or a control panel.

This is because these are manufactured and so devices will usually follow the manufacturing metaphor. That's why in Windows Microsoft called the thing for controlling audio volume a "Volume Control", for example. That's why when you're building an internal system that allows you to make changes to the business operations, it's probably wise to think about the business system and find that word that is a theme throughout, that describes its purpose.

So yes, naming things is hard, it's a puzzle to solve, it's a game to play. Like any game, it can be fun and you need to know the rules to play.