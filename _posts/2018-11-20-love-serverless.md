---
title: How I stopped worrying about servers and learned to love serverless
author: James Wade
date: 2018-11-20
category: Development
tags:
    - serverless
    - aws
    - cloud
image: https://i.imgur.com/GWZmGtT.jpg
published: false
---

I think I first heard of the term “serverless” in about 2015, probably around the time that the “Serverless Framework” launched in October 2015.

I next heard about “serverless” about a year later, only this time, it was used on the much broader topic of “Serverless Computing”, around June/July time I saw a huge push from InfoQ on this topic, in particular at QCon London.

According to many, the concept of “serverless” really only became a reality in 2014 when Amazon Web Services (AWS) launched their functions as a service (FaaS) “Lambda” service, allowing you to run Node.js code in the cloud on demand, without really any knowledge or care for the servers they run on.

Around 2016 there was lots of talk of FaaS (functions as a service), PaaS (platform as a service), and the benefits of the serverless architecture, which was really encouraging and began to feel like it was ready for “prime time”.

In November 2016, I wrote an article entitled “[Will the last person to leave turn the LAMP off?](https://wade.be/development/sysadmin/2016/11/17/stackless.html)”, which was a play on words, a nod to serverless and an introduction to the concept of “stackless”.

Think about it, the “stack” is becoming less important; who cares about what hardware you’re running, platform you’re on, service you’re using, or even operating system, so long as it does what you need it to do.

Gone are the days where you need to buy or rent part or all of a physical server in a data centre somewhere, perhaps near to docklands London, as is financially viable. The concept of “serverless” only helps to cement this idea.

So when it came to rewriting a legacy API the idea of using AWS API Gateway and Lambda felt like it might be the right way to go.
<!--more-->

## Migrating to Serverless
In late 2016 we began on this venture into “serverless” to replace a legacy API which has mobile apps as clients.

Let me set the scene, in 2016 my team had the following qualities:

- Predominantly PHP experience
- Little to no Node.js experience
- Little AWS experience
- Little Infrastructure as Code experience
- No experience of API Gateway or Lambda functions
- One sprawling mess of a monolithic MySQL database which was identified as a Single Point Of Failure (SPoF) where we would need to persist the data to for backwards compatibility with some legacy applications
- Pitched as a “cool technology” to try rather than a problem to solve

Despite the warnings that this might not be the right choice our team right now, in a commendable effort to engage the team in new technology, API Gateway and Lambda became the platform for replacing this legacy API.

Almost immediately there were difficulties with this approach, mainly because there was no native PHP runtime with AWS Lambda functions.

The solution was to compile a PHP binary and write a wrapper from Node.js that would execute the PHP binary and run our code. A “proof of concept” was done, which proved that it would be incredibly slow and impractical. After this proof of concept, PHP was quickly dropped in favour of Node.js, the first and fastest runtime available to the Lambda service.

I find that most of what we develop is transpose data from “there to here” or “here to there”. Ultimately, that’s all these API endpoints needed to do. Get data from the database and output them in the right way so the clients would understand them. Sounds easy right?

## Production
By early 2017 we had invested quite some time into stabilising this “proof of concept” through various means we finally had something that was workable.

In May 2017, we had problems deploying. We had to make a decision. Do we continue trying to use the “stages” to control the environment variables and a single lambda function or figure out a way to deploy a separate API gateway and Lambda functions per environment, all deployed using Terraform.

We ended up creating functions per environment, with A and B API gateways, switched from the “custom domain mapping”. This got complicated really quickly, but it worked.

One thing that did go really well, that I'm still really proud of, is a very small Lambda function that is triggered on a schedule by CloudWatch to go and fetch a bunch of data from the database and transpose it into a JSON format, then spit into into an S3 bucket for public consumption. Though I'm not quite sure why others don't share my enthusiasm...

In November 2017 we reviewed our project, what went well and what were the pain points, which included things like:

- API gateway deployment was painful
- Infrastructure as Code (Terraform) was non-trivial
- Using Serverless Framework may be considered non-standardised
- High latency
- API Gateway caching is non-trivial and expensive
- Testing Node.js was different and difficult
- Too many database connections
- Code duplication
- A/B deployments was non-trivial
- Stages are confusing, it's too easy to destroy stages
- Updating a Lambda function will affect production
- Hard to debug not only what the problem is, but where
- And finally… Cold starts

We learned a lot about AWS, API gateway, Lambda, Serverless, Terraform and our own domain knowledge from legacy API. We concluded that “serverless” is 100% the way to go, but we ultimately questioned if it was really ready for prime time.

Yes, Lambda is brilliant at running background processes, but if you’ve got a client waiting for a response, you really need to think twice, and sometimes even thrice isn’t enough…

## Cold starts
By May 2018 we started to see major problems. We found that after 15-30 minutes of inactivity, the “container” that the function ran on would “go to sleep”. Then it would take around 10 seconds to “cold start” which would lead to all sorts of problems for our users.

The solutions were to “keep them warm”, use queues, have longer timeouts on the clients or forget serverless and go for an always on container in our existing Kubernetes cluster.

The easiest option here would be to implement CloudWatch to regularly trigger Lambda call to keep it warm at all times, but it does feel a bit “dirty” and CloudWatch comes at a cost.

To me, queues seem like a great solution, but the challenge is that it feel like it’s adding more complexity and requires more infrastructure rather than keeping things simple.

So having attempted “serverless”, we found that it’s not without its shortcomings, it’s no “silver bullet”, not forgetting that even now, it’s still considered in the “early adoption” phase.

So for this particular endpoint, it seems that having an “always on” container to serve the functionality was the safest bet, especially as the Kubernetes cluster is already there and paid for, at least until we could get a handle on this “serverless” thing.

## Lessons Learned
Looking back on it now, it’s quite clear that the approach taken here with serverless and AWS Lambdas had fallen foul of many “bad practices” and hadn’t learned enough about the good practices, let alone best practices.

Here's some bad practices that I experienced in our implementation, that we can all learn from:

- Functions doing too much
- Using lots of libraries
- Relying on our relational database
- Not using messages and queues
- Forcing persistence of data to a data lake
- Not considering how it needed to scale

We’re still at the beginning with serverless, even conceptually, let alone practically.

Fortunately, however, in 2018, there are [good definitions of serverless](https://martinfowler.com/articles/serverless.html), mature tools and even some “[best practices](https://medium.com/@PaulDJohnston/serverless-best-practices-b3c97d551535)”, even if they are heavily opinionated.

So despite the problems I’ve experienced with serverless, I ready to try again. Bring it on.

Serverless means many things to many people which can sometimes give the impression it’s going through an identity crisis, but I really believe that “serverless computing” is founded in some powerful ideas.

> “A Serverless solution is one that costs you nothing to run if nobody is using it (excluding data storage)” - [@PaulDJohnston](https://twitter.com/PaulDJohnston)

Serverless reminds me of how the Internet began, with people realising that they could “sublet” their mainframes and networks to residential users to connect together and send emails of their cats or whatever people did in the early 90s without Reddit and Twitter.

So yes, this is still early days for “serverless” and like the Internet itself, over time, those great ideas and the trivial use cases will change into something more.

To me, it seems that “serverless” is just another step on the journey, like “microservices” or “devops”, it’s not so much about defining the destination, it’s just an engine of more.

You will get things wrong on your journey, but don’t worry, you’ll learn to love serverless too.

PS. Thanks to [Radovan](https://www.linkedin.com/in/radovan-dacej-51241b58) for taking the time to proof read and give feedback, nice one! :)