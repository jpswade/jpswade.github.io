---
title: Microservices - Managing the flow of data
author: James Wade
date: 2018-11-23
category: Development
tags:
    - microservices
    - amazon
    - cloud
    - agile
    - teams
    - development
    - software delivery
    - architecture
image: https://i.imgur.com/8aZBHvE.png
published: true
---

There’s a number of companies that have been pioneering the microservices architectural style, including Amazon, Netflix, The Guardian, the UK Government Digital Service and comparethemarket.com. But is it living up to the hype?

> "Microservices is a label and not the description" - Martin Fowler

You think think of Microservices much like Service Oriented Architecture (SOA), an architectural approach, rather than a technical implementation, like Enterprise Service Bus (ESB).

It is therefore not a silver bullet and it’s easy to get things wrong.

<!--more-->

![Data Flow](https://i.imgur.com/8aZBHvE.png)

Microservices does not mean that every service has to be the size of a function. Services that are too small can lead to lots of functions and unnecessary complexity. It’s easy to see how “Function as a Service” (or FaaS) are confused with microservices, though they aren’t the same. To be clear, FaaS are just one technique that are often put under the “microservices” label, but they are not synonymous. You can have a microservice architecture without FaaS, this includes AWS Lambda functions.

> “People try to copy Netflix, but they can only copy what they see. They copy the results, not the process” - Adrian Cockcroft, former Netflix Chief Cloud Architect

Equally, writing all the business logic into a single Enterprise Service Bus won’t solve all of the problems either. You have to choose the right approach for you. By adopting the microservice architecture it means you get to define the boundary based on the domain or organisational needs, rather than either very big (monolithic ESB) or very small (functions as a service).

Like everything, we don’t need to swing the pendulum between monoliths and FaaS, there is a middle ground. It’s no different than choosing MySQL vs NoSQL, it’s a about the right tool for the right job and there’s always a trade-off.

> “The best architectures, requirements, and designs emerge from self-organizing teams” -  Agile manifesto 2001

A “microservice architecture” doesn’t dictate how big or small your service is, just that you divide it in a sensible way that means you can take advantage of the benefits that come with that. Monolithic applications aren’t planned – they just happen that way overtime, while more experienced teams will reflect on the lessons learned and adapt. If you’ve already learned those lessons, then microservices going to be a natural fit.

I've always found that well defined interfaces through domain driven design a very good principle which translates well into microservice architecture.

> “Microservices need a superglue and that glue is an API Gateway” - Auth0 Ambassador, Vincenzo Chianese

In microservice architecture the API gateway handles routing and authentication. It's a very thin layer that does not contain any business logic that sits on the edge of the architecture.  Essentially it's a dumb pipe that points to smart endpoints. The smart endpoint is what contains the business or domain logic. Each endpoint is defined by the business domain.

The size of that endpoint is defined by the team building it based on the needs of those that interface with it. You don't need one team or one codebase per endpoint, you can, but you don't. Equally you don't need one team or one codebase for all endpoints, again you can, but you don't have to. Having this kind of architectural structure means you can arrange the teams in a much more modular way, organised around business capability or products rather than around technical ability.

> “The end result is a fault-tolerant, performant platform that puts control in the hands of those who know their target applications the best” - Ben Christensen, Netflix

The outstanding question is, do you want one big team with layers of technical ability or cross functional teams arranged around business capabilities?

Conway’s law tells us that organisation that designs a system will produce a design whose structure is a copy of the organization's communication structure. If your organisation is monolithic, your architecture will be to. For microservices to work, you need to structure your teams in a way that will facilitate a microservice system architecture, by changing an organisation’s team structure to fit the IT systems.

> “Accounting for Conway’s Law should be front of mind, when it comes to structuring teams” - Fausto de la Torre, Head of Technology, Ecuador

At Amazon, in early 2000s, people were saying that groups needed to communicate more. Bezos said, 'No, communication is terrible!'. The pronouncement shocked his managers. But Bezos pursued his idea of a decentralised, disentangled company where small groups can innovate and test their visions independently of everyone else.

Bezos came up with the notion of the 'two-pizza team': If you can't feed a team with two pizzas, it's too large. That limits a team to five to seven people, depending on their appetites.

By being strict about the way data is shared between departments or teams, you can easily understand the shape that this could take. Teams and communication structures modelled after the architecture we want.

> "It's much more scalable having microservices in this way, because you're not storing everything in a classic relational database” - Basho CTO Dave McCrory

Data should be exposed through service interfaces and each microservice should talk to others through these interfaces. There should be no concept of sharing data in any other way, no shared files, no email attachments, no file uploads, no direct connections to databases. Only communication via the service interface over the network. These service interfaces, agnostic of technology, will need to be designed as if it were to be a public interface, built as if it were to be available to the outside world.

In a Microservice architecture and an API economy, it seems to becomes less about getting your data to the right place (a data lake) and more about where to get the data as it flows through the system.

### Also see:

- [How to break a Monolith into Microservices](https://martinfowler.com/articles/break-monolith-into-microservices.html)
- [Attacking your monolithic database with a swarm—a whole swarm!](https://arstechnica.com/information-technology/2016/05/blow-that-data-monolith-to-smithereens-with-microservices-and-database-swarms/)
- [API Gateway: the Microservices Superglue](https://auth0.com/blog/apigateway-microservices-superglue/)
- [Optimizing the Netflix API](https://medium.com/netflix-techblog/optimizing-the-netflix-api-5c9ac715cf19)
- [Applying Conway's Law to improve your software development](https://www.thoughtworks.com/insights/blog/applying-conways-law-improve-your-software-development)
- [Inside the Mind of Jeff Bezos](https://www.fastcompany.com/50106/inside-mind-jeff-bezos-5)
- [The Hardest Part About Microservices: Your Data](http://blog.christianposta.com/microservices/the-hardest-part-about-microservices-data/)
