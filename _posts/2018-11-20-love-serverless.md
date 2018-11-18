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

I first heard of the term “serverless” in about 2015, probably around the time that the “Serverless Framework” launched, October 2015.

I next heard about “serverless” about a year later, only this time, it was used on the much broader topic of “Serverless Computing”, around June/July time there seemed to be a huge push from InfoQ on this topic, in particular at QCon London.

According to many, the concept of “serverless” really only became a reality in 2014 when Amazon Web Services (AWS) launched their functions as a service (FaaS) “Lambda” service, allowing you to run Node.js code in the cloud on demand, without really any knowledge or care for the servers they run on.

Around 2016 there was lots of talk of FaaS (functions as a service), PaaS (platform as a service), and the benefits of the serverless architecture, which was really encouraging and began to feel like it was ready for “prime time”.

In November 2016, I wrote an article entitled “[Will the last person to leave turn the LAMP off?](https://wade.be/development/sysadmin/2016/11/17/stackless.html)”, which was a play on words, a nod to serverless and an introduction to the concept of “stackless”.

Think about it, the “stack” is becoming less important; who cares about what hardware you’re running, platform you’re on, service you’re using, or even operating system, so long as it does what you need it to do.

Gone are the days where you need to buy or rent part or all of a physical server in a data centre somewhere, perhaps near to docklands London, as is financially viable. The concept of “serverless” only helps to cement this idea.

So when it came to rewriting a legacy API the idea of using AWS API Gateway and Lambda felt like it might be the right way to go.
<!--more-->

## Migrating to Serverless
In late 2016 we began on this venture into “serverless” to replace a legacy API which has mobile apps as clients.

Let me set the scene, in 2016 the team had, predominantly PHP experience, little to no Node.js experience, AWS experience (certainly not API Gateway or Lambda), Infrastructure as Code experience.

We also had a sprawling mess of a monolithic MySQL database which was identified as a Single Point Of Failure (SPoF) where we would need to persist the data to for backwards compatibility with some legacy applications.

Despite the warnings that this might not be the right choice our team right now, in a commendable effort to engage the team in new technology, API Gateway and Lambda became the platform for replacing this legacy API.

Unfortunately we soon hit difficulties with this approach, as no native PHP runtime with AWS Lambda functions. The solution was to compile a PHP binary and write a wrapper from Node.js that would execute the PHP binary and run our code. A “proof of concept” was done. This had its advantages as we could use our existing skills and libraries, but it meant the payload would be heavier and it was slower than a native Node.js alternative.

Most of what we develop is about transposing data from “there to here” or “here to there”. Ultimately, that’s all these API endpoints needed to do. Get data from the database and output them in the right way so the clients would understand them. Sounds easy right?

## Production
By early 2017 we had invested quite some time into stabilising a “proof of concept” and through various means we finally had something that was workable.

In late 2017 we reviewed our project, what went well and what were the pain points, which included things like:

- Deployment was painful
- Request-response latency concerns
- Debugging the Lambda functions is different and non-trivial
- API Gateway caching is non-trivial and expensive
- Too many connections to our relational database
- Code duplication
- And finally… Cold starts

We learned a lot about AWS, API gateway, Lambda, Serverless, Terraform and our own domain knowledge from legacy API. We concluded that “serverless” is 100% the way to go, but we ultimately questioned if it was really ready for prime time.

Yes, Lambda is brilliant at running background processes, but if you’ve got a client waiting for a response, you really need to think twice, and sometimes even thrice isn’t enough…

### Deployments
In May 2017, we had problems deploying. We had to make a decision. Do we continue trying to use the “stages” to control the environment variables and a single lambda function or figure out a way to deploy a separate API gateway and Lambda functions per environment, all deployed using Terraform.

When we began with Serverless as a proof of concept, we didn't do any Infrastructure as Code at all, mainly because at that point we had no idea how any of it worked, we hadn't used Terraform much.

As time went on, we fully committed to Infrastructure as Code and using Terraform across the rest of our infrastructure so when it came to maturing this serverless concept, it made sense to pick up Terraform.

Unfortunately as none of this had been deployed with Infrastructure as Code, it meant that we essentially needed to start from scratch and deploy whole new API gateway and Lambda functions, then switch over to them.

I still think that Terraform is the best orchestration tool out there at the moment, however it's not without issues. It's power is that it supports lots of "providers" as well as the granularity that you can go to is second to none. However, this was also it's downfall. API Gateway and Lambda were still maturing and Terraform hadn't quite kept up. Also, it required a real deep understand of AWS and CloudFoundation elements such as roles and policies. It was quite a steep learning curve only to find that even then it wouldn't do what we needed it to. It was a lot of code for something that was meant to be very simple.

What Terraform needed was an abstraction layer, something to to take away some of the complexities. Fortunately there was Serverless Framework which had a crack at being an abstraction layer. Serverless Framework is written in Node.js and offers plenty of examples of how it might work. I was able to use it to deploy my own proof of concept. Great.

Unfortunately, Terraform and Serverless Framework don't play ball together, so when you're trying to deploy into your Virtual Private Cloud, it's got no concept of that and you end up having to hard code more than you would like to. In order to keep a level of consistency and help maintain it going forwards, we were forced into using Terraform. Fortunately, we were able to fix or workaround the deployment issues and finish, but not without lots of effort, much more than we had planned for.

I since learned that putting Lambda functions into a private VPC takes longer to start because it takes longer to get a network interface in the VPC, unfortunately Lambda functions using the default VPC can't connect to the Internet, which means they wouldn't be able to reach our relational database. Instead, you can use message queues to publish messages, getting rid of the need to be in the privat eVPC, and then simply have a consumer inside the private VPC to subscribe to the queue. This requires a different way of thinking about the problem, a like-for-like replacement simply wouldn't do here.

Having spent the time getting Infrastructure as Code to work, we then wanted to have the opportunity to test it worked before we promoted our code to production. API Gateway has a concept of "stages", but the way it seems to work, especially with TerraForm is that you couldn't really deploy either the API Gateway or the Lambda function without impacting production. This was no good.

We ended up creating functions per environment, with A and B API gateways, switched from the “custom domain mapping”. This got complicated really quickly, but it worked.

To summarise:

- Using Terraform for API Gateway and deploying Lambda was non-trivial
- Terraform and Serverless Framework don't play ball together
- Starting Lambda functions inside a private VPC is slower
- Blue-green deployments was non-trivial

### Cold starts
By May 2018 we started to see major problems. We found that after 15-30 minutes of inactivity, the “container” that the function ran on would “go to sleep”. Then it would take around 10 seconds to “cold start” which would lead to all sorts of problems for our users.

The solutions were to “keep them warm”, use queues, have longer timeouts on the clients or forget serverless and go for an always on container in our existing Kubernetes cluster.

The easiest option here would be to implement CloudWatch to regularly trigger Lambda call to keep it warm at all times, but it does feel a bit “dirty” and CloudWatch comes at a cost.

To me, queues seem like a great solution, but the challenge is that it feel like it’s adding more complexity and requires more infrastructure rather than keeping things simple.

For this particular endpoint, it seems that having an “always on” container to serve the functionality was the safest bet, especially as the Kubernetes cluster is already there and paid for, at least until we could get a handle on this “serverless” thing.

## Lessons Learned
Having attempted “serverless”, we found that it’s not without its shortcomings, it’s no “silver bullet”, not forgetting that even now, it’s still considered in the “early adoption” phase.

Looking back on it now, it’s quite clear that the approach taken here with serverless and AWS Lambdas had fallen foul of many “bad practices” and hadn’t learned enough about the good practices, let alone best practices.

Here's some bad practices that I experienced in our implementation, that we can all learn from:

- Functions doing too much
- Tight coupling
- Using lots of libraries
- Relying on our relational database
- Not using messages and queues
- Forcing persistence of data to a data lake
- Not considering how it needed to scale

We’re still at the beginning with serverless, even conceptually, let alone practically.

Fortunately, however, in 2018, there are [good definitions of serverless](https://martinfowler.com/articles/serverless.html), mature tools and even some “[best practices](https://medium.com/@PaulDJohnston/serverless-best-practices-b3c97d551535)”, even if they are heavily opinionated.

I've learned that serverless requires you to follow the principles of distributed systems and taken advantage of the asynchronous nature of serverless by using queues and events.

A function that I felt went really well is a very small Lambda function that is triggered on a schedule by CloudWatch to go and fetch a bunch of data from the database and transpose it into a JSON format, then spit into into an S3 bucket for public consumption. Most of it's power is that it's _not_ subject to a request-response system. This is an exciting revelation. Though I'm not quite sure that non-technical people share my enthusiasm...

So despite the problems I’ve experienced with serverless, I ready to try again. Bring it on.

Serverless means many things to many people which can sometimes give the impression it’s going through an identity crisis, but I really believe that “serverless computing” is founded in some powerful ideas.

> “A Serverless solution is one that costs you nothing to run if nobody is using it (excluding data storage)” - [@PaulDJohnston](https://twitter.com/PaulDJohnston)

Serverless reminds me of how the Internet began, with people realising that they could “sublet” their mainframes and networks to residential users to connect together and send emails of their cats or whatever people did in the early 90s without Reddit and Twitter.

So yes, this is still early days for “serverless” and like the Internet itself, over time, those great ideas and the trivial use cases will change into something more.

To me, it seems that “serverless” is just another step on the journey, like “microservices” or “devops”, it’s not so much about defining the destination, it’s just an engine of more.

You will get things wrong on your journey, but don’t worry, you’ll learn to love serverless too.

PS. Thanks to [Radovan](https://www.linkedin.com/in/radovan-dacej-51241b58) who played a big part in what we learned about serverless and kindly took the time to proof read and give feedback, nice one! :)