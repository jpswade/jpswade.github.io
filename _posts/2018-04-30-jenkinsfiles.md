---
title: Using Jenkinsfiles for Continuous Deployment Pipelines
author: James Wade
date: 2018-04-30
categories:
  - Development
tags:
    - software
    - jenkins
    - ci
image: https://i.imgur.com/dXKur0P.jpg
---

If the idea of deploying code to production makes you nervous, then this one’s for you.

Despite the fact that you may have just solved the latest business problem with the most elegant solution and the least amount of code, you know how it is when it comes to deployments and humans, we will make mistakes, we get things wrong and we break things. It happens.

However, the way we solve this is by improving processes, not blaming humans. Employing what we’ve learned, leaning on our own experiences and experts in the field, while implementing the best practices.

Martin Fowler wrote about Continuous Integration in September 2000, followed by a significant update in May 2006. He talks about conceptual ideas such as maintaining a single source repository, automating the build, testing in a clone of the production environment, ensuring everyone can see what’s happening and deployment pipelines.

These practices help to lay the foundation to why we should create pipelines as code and the approaches we should take. For example, version control is a very powerful tool. Keeping everything in version control means you can easily keep track of changes, review code and maintain a source of truth.

## What are pipelines?
Pipelines aren't exclusively for your continuous integration (CI) testing pipeline, they can and frequently are used for automating a delivery pipeline.

A continuous delivery (CD) pipeline is an automated expression of your process for getting software from version control right through to your users and customers. As a pipeline can be expressed as code, it also compliments the idea of “everything as code” that has been popularised by the DevOps movement. Treating everything as code means you can version control it and instantly gain from the benefits of that.

A Jenkinsfile (Declarative Pipeline) will automatically deploy code all the way through to production and is considered an implementation of "continuous deployment.”

Usually the first stage of a deployment pipeline will do any compilation and provide binaries for later stages. Later stages may include manual checks, such as any tests that can't be automated. Stages can be automatic, or require human interaction to proceed, they may be parallelised over many machines to speed up the build. Deploying into production is usually the final stage in a pipeline.

The power of a pipeline is that it gets humans out of the deployment business. The less manual steps there are the less opportunity there is for error. We should let the computer perform the repetitive tasks, leaving us humans to solve problems.

This doesn't mean that you don't have human intervention at all. One of the earliest philosophical ideas of the Toyota tradition is jidoka, sometimes translated as “automation with a human touch.” What it means is that the deployment process should be made so simple through automation that deploying becomes one less thing to worry about. If it's hard, make it easy. If it's painful, do it until it's not.

A codebase should be deployed in the same way to every environment, from development to production, it should be the same. This gives us the best chance of getting it right before it reaches production and when it does, we have confidence that it will work as expected.

Although it's true that we should aim for consistency and seek to use the best practices in all of our projects, we have to accept that sometimes it's not possible to use exactly the same pipeline for every codebase or application. Projects will drift.

Different projects have different maturity, different technology, perhaps newer ways of working, maybe newer versions of software with an improved feature set, perhaps even an approach that uses a different set of principles, if that works for that team or project. This is normal in autonomous teams. You build it, you run it.

It's about taking the best experiences and sharing those with others. It’s a conversation. Practicing as well as preaching. Continuous improvement, or kaizen in Japanese, is another key idea from the Lean movement. It's an important part of the DevOps movement too.

So although not every codebase will have the same deployment pipeline, we should always have the aim to improve it, continuously. It doesn't need to happen in one go, it can happen iteratively, just like any other code. How do you eat an elephant? A little and often, one bite at a time.

Everyone is responsible for continuous deployment. If outcomes are what matter, we should focus on how we can get those outcomes sooner. Optimise for what gets us to our goals. Having a framework of rules is a great place to start, we need rules but it’s OK to break them if you need to, once you’ve mastered them. In Japanese martial art, Shuhari is describes the stages of learning to mastery. Learning fundamentals, breaking with tradition, and finally doing what comes naturally.

> “It's easier to ask forgiveness than it is to get permission” - Grace Hopper, U.S. Navy's Chips Ahoy magazine, July 1986.

We should encourage the right behaviours, if we want to make a change that will improve the process, removing human error or improving build time, we should do it. We shouldn't be scared to make things better. We shouldn't add in manual steps to prevent mistakes as that is just risk management theatre.

> Risk management theatre is the outcome of optimizing processes for the case that somebody will do something stupid or bad, because (to quote Bjarte Bogsnes talking about management), “there might be someone who cannot be trusted. The strategy seems to be preventative control on everybody instead of damage control on those few.”
> Jez Humble, Continuous Delivery, 2013

Deploying to production should be so easy and straightforward that anyone could do it, from a junior developer to the CEO, it should be so simple that you can't get it wrong. You shouldn't need to understand complexities, version numbers or code.

## Using Jenkinsfiles

The ‘Jenkinsfiles’ are a game changer, it means that instead of using the UI or the cumbersome CLI interface, you can “write once, use many” your build pipelines.

By using Jenkinsfiles rather than jobs in the UI, we begin to apply the practices that the experts talk about. Jenkinsfiles are written in Groovy (a scripting language for the Java platform) and are powered by the Jenkins pipeline plugin which comes bundled with all the latest versions of Jenkins.

Even though creating Jenkins jobs in the UI might be easier to get started with, Jenkinsfiles provide much more power than the UI, so it’s worth the initial extra effort.

Creating a Jenkinsfile under version control, provides a number of immediate benefits:

- Code review/iteration on the Pipeline
- Audit trail for the Pipeline
- Single source of truth for the Pipeline, which can be viewed and edited by multiple members of the project.

Jenkins own documentation on their website provides great examples on defining a deployment pipeline.

- A continuous delivery pipeline will have, at minimum, three stages which should be defined in a Jenkinsfile: Build, Test, and Deploy.
- A common pattern is to extend the number of stages to capture additional deployment environments, such as "staging" or "production".
- Often when passing between stages, especially environment stages, you may want human input before continuing. For example, to judge if the application is in a good enough state to "promote" to the production environment.

Here's an example of a Jenkinsfile, assembled from the Jenkins documentation:

```
#!/usr/bin/env groovy
pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh './build.sh'
            }
        }
        stage('Test') {
            steps {
                sh './test.sh'
            }
        }
        stage('Deploy') {
            steps {
                sh './deploy.sh'
            }
        }
        stage('Deploy - Staging') {
            steps {
                sh './deploy.sh staging'
                sh './run-smoke-tests.sh'
            }
        }

        stage('Sanity check') {
            steps {
                input "Does the staging environment look ok?"
            }
        }

        stage('Deploy - Production') {
            steps {
                sh './deploy.sh production'
            }
        }
    }
}
```

As you can see in this example, first we run the build phase - this is where we would build an immutable build image.

Next we'll want to run the tests to prove it runs as expected. We can expect this to include unit tests and code coverage.

At the deploy stage we deploy the code to our testing environment. It should run in an identical way to development.

Beyond that, if everything goes well, we'll deploy to staging automatically and run some smoke tests. You'll notice that the staging deploy takes a parameter so we can inform the build how to behave.

We've added in the sanity check, giving us opportunity to do some manual exploratory until we finally promote the build to production.

The last stage will deploy to production.

As you can see from this example, every part of the pipeline is defined as code, this means that even the shell scripts that we define will be included in the version control along with the pipeline code.

## What do the experts say?

> 6 Dec 2013 - BBC director of continuous delivery Nell Boase describes how everybody is responsible for the release process; there are no divisions between operations, development, testing and the business anymore. Whilst the product owner is responsible for the product’s complete lifecycle.
>
> &mdash; [BBC Academy - Academy - Better software faster](https://www.bbc.co.uk/academy/technology/article/art20131206100048902)

> 10 Aug 2012 - “At Etsy we have three tiers of static analysis on our PHP code that run on every commit or runs periodically every hour. They form an important part of our continuous deployment pipeline along with one-button deploys, fast unit and functional tests, copious amounts of graphing, and a fantastic development environment to make sure code flows safely and securely to production”.
>
> &mdash; [Static Analysis for PHP - Code as Craft](https://codeascraft.com/2012/08/10/static-analysis-for-php/)

> 18 Nov 2013 - It is critical for us to maintain a Software Delivery pipeline that allows us to deploy changes to our production environments in an easy, seamless, and quick way, with minimal risk.
>
> &mdash; [Preparing the Netflix API for Deployment – Netflix TechBlog](https://medium.com/netflix-techblog/preparing-the-netflix-api-for-deployment-786d8f58090d)

> 15 Sep 2017 - Spotify engineering teams are fully embracing the devops culture: to increase development speed every dev team is responsible for their operational pipelines.
>
> &mdash; [Spotify Labs - Stepping Up the Cloud Security Game](https://labs.spotify.com/2017/09/15/stepping-up-the-cloud-security-game/)

> 8 Jan 2013 - When developers and operations work together in a collaborative manner, they often need one place to manage the software delivery process and pipeline of changes.
>
> &mdash; [Agile DevOps: Continuous software delivery in the cloud - IBM](https://www.ibm.com/developerworks/library/a-devops8/index.html)

> 20 Dec 2016 - How using a lightweight continuous deployment pipeline, which focuses on production validation instead of a large suite of acceptance tests, allows us to iterate.
>
> &mdash; [Testing in Production: rethinking the conventional deployment pipeline - The Guardian](https://www.theguardian.com/info/developer-blog/2016/dec/20/testing-in-production-rethinking-the-conventional-deployment-pipeline)

> 17 Feb 2017 - If a guide to continuous delivery is really what you were looking for, head to The Pipeline – a guide to continuous .... One of our rules is that we never push builds directly out to production.
>
> &mdash; [Practical continuous deployment: a guide to automated software delivery - Atlassian](https://www.atlassian.com/blog/continuous-delivery/practical-continuous-deployment)

> 15 Nov 2017 - First, deploy your application into the production environment to seed the pipeline with working code. Create the Kubernetes namespace to logically isolate the production deployment.
>
> &mdash; [Continuous Deployment to Kubernetes Engine using Jenkins | Solutions | Google Cloud](https://cloud.google.com/solutions/continuous-delivery-jenkins-kubernetes-engine)

## Final thoughts

It doesn’t need to be complicated. In fact, it’s quite the opposite, it needs to be as simple as possible.

Using pipelines makes deploying easy. By following the Continuous Integration principles outlined by Martin Fowler, employing the advice given by the experts and writing pipelines as code, we lay the groundwork for a robust deployment process.

Through learning about Continuous Integration and Jenkins, we find that:

- Pipelines should cover every stage, from development to production
- Pipelines should be written as code and version controlled
- Pipelines should be continuously improved upon
- Everyone is responsible for deployment pipelines

If this seems like a lot of hard work to you, then the best advice is to just start where you are. Doing a little and often will help to move forward and learn quicker.