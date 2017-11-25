---
title: The journey to Microservices
author: James Wade
date: 2017-11-25
categories:
  - Development
tags:
    - microservices
    - soa
    - php
image: https://i.imgur.com/gxaD2aK.png
---

We've come along way, even in the past few years. We've seen huge advances in web technology.

We've all been there… It gets to the point where anything is better than the legacy code. Legacy code is any code without tests, that is understood by no one and is too fragile to change, even though the business demands more, the legacy code is impossible to maintain. It's code that can't scale and uses obsolete tech (PHP 5.5 anyone?).

Moving away from the legacy code is always a challenge. Do you simply replace it with another monolith and say “no, we'll definitely get it right this time”, or do you take a different approach?

<!--more-->

By moving to a monolithic application you will hit limitations, you end up with this huge monolithic application and one huge unwieldy monolithic database which has grown over time and is modelled even worse than the spaghetti code. Even then, you'll find it a struggle to remove yourself from the shackles of the legacy products, as they are directly communicating with the database.

Want to start using PHP7? No chance. All those beautiful PHP composer packages that are built for PHP 5.6, that talk directly to the database now need upgrading.

You will eventually reach the limitations of the monolithic application architecture.

Imagine that the current application architecture as a small car, like a mini. Imagine that as it's built out, and more features are added, let's say we wanted to allow more passengers and storage space. This would be a bit like strapping extra seats to the side of a mini. This works, so we keep going, until we discover that it's slow. So, we install new booster engines. Perhaps that's migrating to a new infrastructure platform. It might save costs but it doesn't solve the problem.

What you end up with is a ridiculous looking modified car, with seats where there shouldn't be seats and engines where there shouldn't be engines. This isn't how you would design a car, and it should be no different in software engineering.

It's become clear that the limitations in a monolithic application are down to the limitations in the application architecture, this includes not only stability, performance, predictability, but also speed of development and ease of release.

A lot has changed since the first monolithic PHP applications, especially since the introduction of composer in 2012, the industry has moved on again significantly. Now is the time to look at what is needed, in order to change the way an application is architected going forward.

Cloud computing plays a major role in the way we think about applications. Server side Javascript has matured, engines such as nodejs. Powerful client side Javascript libraries such as React and Vue make it simple to create beautiful web interfaces. Automated testing over manual. Lightweight local environments using Kubernetes and Docker over Vagrant. Elastic scaling. HTTP2. Event-driven architecture. The future is already here.

We can't continue to build on existing monolithic applications. It's no longer the right architecture to build on. The landscape of the web has changed. We should recognise that things have changed. We need to change too.

That's what microservice architecture is all about. It's stemmed from existing ideas and concepts we've had for a long time in software engineering, but now the technology is there to take advantage of them in a new way.

Microservices is just the new way to think about service-oriented architecture (SOA) and even object-oriented programming. You might say that it's SOA done properly.

To achieve this, the idea is to begin to tease off areas of the website into logical vertical slices, where possible. Breaking the frontend away from the backend logic.

![Imgur](https://i.imgur.com/gxaD2aK.png)

It's about organisational structure too. Conway's law tells us that organisation that designs a system will produce a design whose structure is a copy of the organization's communication structure. If your organisation is monolithic, your applications will be to. For microservices to work, you need to structure your teams in a way that will facilitate a microservice system architecture, by changing an organisation's team structure to fit the IT systems.

By being strict about the way data is shared between departments or teams, you can easily understand the shape that this could take. Our teams and communication structures should be modelled after the architecture we want.

Data should be exposed through service interfaces and each microservice should talk to others through these interfaces. There should be no concept of sharing data in any other way, no shared files, no email attachments, no file uploads, no direct connections to databases. Only communication via the service interface over the network. These service interfaces, agnostic of technology, should be designed as if it were to be a public interface, built as if it were to be available to the outside world.

To achieve a microservice architecture, you need to know what things are important, the principles that will govern it and the metrics to use to measure its success.

Don't be afraid of microservices. Microservices are resilient, redundant and decoupled. There's no need to change technologies, familiar PHP frameworks such as Symfony have a micro kernel which is ideal for micro services. If it makes sense, then do it. 

The characteristics of a microservice architecture are replaceable components as services, organised around business capabilities rather than technology, end-to-end ownership, products not projects, smart endpoints and dumb pipes, decentralised governance, decentralised data management, infrastructure automation, designed for failure and enabling evolutionary design.

With the help of engineers, a business can deliver new products, new features, be free from the shackles of legacy code and dead technologies to build something that can be used by millions.

We're at a really exciting time, infrastructure has moved on and we've now got a great foundation to build on, thanks to cloud technologies, making it super easy to build a microservice. The technology means that we can build a brand new microservice and deploy it within a few minutes or hours, rather than a few days or weeks.

What it means to us is removing this mess of integrating through one centralised database, as full stack developers we can focus on the end user experience, putting business logic in the endpoints rather than a centralised monolith of business logic, blue/green deployments for all services, informed by the monolith we need to be clear on where the domain boundaries are, we get to choose the right technology to solve the right problems.

To facilitate this every engineer needs to understand automated infrastructure provisioning, to all understand monitoring, to understand a deployment pipeline, to work together. To build on what we've already done and continue to improve our craft.

If the mission is to have the agility to outmaneuver the competition, to release early and often, to be bold, challenge the status quo, to eliminate every form of waste in our processes, to innovate and take risks, to deliver results and use user feedback to make informed decisions, then microservices give us that.

The microservice architecture is what we've all been working towards and now it's time to acknowledge that as an architectural direction.