DevOps started out as "[Agile Systems Administration](https://blog.newrelic.com/2014/05/16/devops-name/)". In 2008, [Andrew Shafer](https://twitter.com/littleidea) did a talk called ["Agile Infrastucture"](http://www.jedi.be/blog/2008/10/09/agile-2008-toronto-agile-infrastructure-and-operations-presentation/) addressing issues around involving more of the company in the same disciplines as programmers.

In 2009, [Patrick Debois](https://twitter.com/patrickdebois) created "DevOpsDays" conference to help to bring it to light. However, it wouldn't begin to [trend until about 2010](https://trends.google.co.uk/trends/explore?date=all&q=devops), when people would begin to describe it as a [standalone discipline](http://www.somic.org/2010/03/02/the-rise-of-devops/).

Today, DevOps goes beyond just developers, systems administration and infrastructure, its about [dev, ops, agile, cloud, open source and business](https://blogs.the451group.com/opensource/2010/03/03/devops-mixing-dev-ops-agile-cloud-open-source-and-business/), everything.

DevOps is a movement. There's [no certificate, role, set of tools or prescriptive process](https://sites.google.com/a/jezhumble.net/devops-manifesto/). There's no specification, it's not a product, or job title. There's no one true voice on what DevOps is or isn't. It's about attitude, ideas, customs and behaviours. Culture, paradigms and philosophy. It's a way of thinking, a way of doing and a way of being. Practicing as well as preaching. It's a conversation. It's about taking the best experiences and sharing those with others.

There are some very important qualities, principles and techniques that have proven to work, that everyone should be aware of, they are the best practices.
 
Let's explore those...

<!--more-->

- ["cattle rather than pets"](https://www.theregister.co.uk/2013/03/18/servers_pets_or_cattle_cern/) - the paradigm of disposable server infrastructure.
- [Achieving 10 deployments per day](https://www.youtube.com/watch?v=LdOe18KhtT4) - the story of how Flickr adopted DevOps.
- [Culture](https://martinfowler.com/bliki/DevOpsCulture.html) - There's [t-shirts](https://www.redbubble.com/shop/devops+t-shirts), [songs](https://www.youtube.com/watch?v=pebIr4F-vjQ), [music videos](https://www.youtube.com/watch?v=iYLxw6OsZug), [podcasts](http://devopscafe.org/), [books](https://medium.com/devopslinks/10-great-books-for-aspiring-devops-sre-engineers-76536c7c4909). DevOps is as much about preaching as it is practicing.
- [No silos](https://continuousdelivery.com/2012/10/theres-no-such-thing-as-a-devops-team/) - Cross-functional teams and T-shaped people, an attitude of shared responsibility is an aspect of DevOps culture that encourages closer [collaboration](https://blog.chef.io/2017/03/01/devops-is-all-about-collaboration/).
- [Keep everything in version control](https://www.ibm.com/developerworks/library/a-devops6/index.html), all code should be under version control, allowing for code development and review, source code management tools, code merging.
- [Continuous Integration](https://martinfowler.com/bliki/ContinuousIntegrationCertification.html) - When the build fails, it’s usually back to green within ten minutes.
- [Products not projects](https://www.madetech.com/blog/products-not-projects) - Delivery teams run software products, not projects, that run from inception to retirement.
- [Deployment Pipelines](https://continuousdelivery.com/implementing/patterns/) - Get humans out of the deployment business. Create a repeatable, reliable process for releasing software.
- [Key Performance Indicators](https://www.atlassian.com/devops#measurement) - Management thinker Peter Drucker is often quoted as saying that "you can't improve what you can't measure".
- [Release early, release often](http://www.catb.org/esr/writings/homesteading/cathedral-bazaar/ar01s04.html) - Until code is in production, no value is actually being generated. [If it hurts, do it more often](https://martinfowler.com/bliki/FrequencyReducesDifficulty.html), and bring the pain forward.
- [Feature Toggles](https://martinfowler.com/bliki/FeatureToggle.html) rather than feature branches, avoiding merge hell and more control over features and deployments.
- [Trunk based Development](https://www.thoughtworks.com/insights/blog/enabling-trunk-based-development-deployment-pipelines) - Moving to trunk-based development is an ([essential step in getting to continuous deployment](https://engineering.moonpig.com/development/move-to-trunk-based-development-without-the-chaos)).
- [Put devs on call](https://victorops.com/putting-devs-on-call/) - Developers are responsible for monitoring and alerting
- [Production-ready software](https://www.slideshare.net/jezhumble/devops-and-agile-release-management) - Fast, automated feedback on the production readiness of your applications every time there is a change - to code, infrastructure, or configuration.
- [Continuous Improvement](https://en.wikipedia.org/wiki/Kaizen) - An “improvement,” or “change for the better” which refers to a philosophy or practices that focus on continuous improvement of processes in manufacturing, engineering, game development, and business management.
- [Infrastructure as Code](https://stochasticresonance.wordpress.com/2009/07/12/infrastructure-renaissance/) - Using orchestration and provisioning tools such as Terraform, Docker, Kubernetes, Ansible, Chef, Puppet.
- [Quality Built In](https://www.slideshare.net/AndrewDzynia/quality-built-in/) - Build quality in, from start to end. Quality is not something you tack on the end.
- [Kanban](http://blog.crisp.se/mattiasskarin/files/slides/introducing_kanban_in_operations.pdf) - Being able to limit the flow of work to a given worker is key, you must limit work in progress.
- [Everything as code](https://www.slideshare.net/dubsquared/eac-25454047) - Infrastructure as Code, Security as Code, Compliance as Code, Testing as Code.
- [Continuous Delivery](https://techbeacon.com/agile-devops-continuous-delivery-evolution-software-delivery) - Continuous Delivery is a key part of the evolution of adopting a DevOps culture.
- [Don't fire the QA](https://www.thoughtworks.com/insights/blog/qa-role-what-it-really) - Are we building the correct product? If so, are we building it correctly?
- [Test Automation](https://www.atlassian.com/blog/devops/test-automation-secret-devops-success) -
- [Blue Green Deployments](https://martinfowler.com/bliki/BlueGreenDeployment.html)
- [High Scalability](http://highscalability.com/blog/2015/1/12/the-stunning-scale-of-aws-and-what-it-means-for-the-future-o.html)
- [Non-Functional Requirements as user stories](https://legacy.devopsdays.org/blog/wp-content/uploads/2010/02/rachel-davies-nonfunctional-devopsdays.pdf)
- [Domain Driven Design](https://www.thoughtworks.com/insights/blog/domain-driven-design-services-architecture)
- [System metaphor](https://en.wikibooks.org/wiki/Software_Engineering_with_an_Agile_Development_Framework/Iteration_One/System_metaphor)
- [Minimum viable product](http://blog.crisp.se/2016/01/25/henrikkniberg/making-sense-of-mvp)
- [Automation](https://dzone.com/articles/what-is-devops-and-how-automation-helps-achieve-it)
- [Reduce waste](https://itrevolution.com/japanese-words-for-devops-practitioners/)
- [A journey, not a destination](https://notafactoryanymore.com/2015/08/14/a-personal-devops-journey-or-a-never-ending-journey-to-mastery/)
- [Moving from Monoliths to Microservices](https://gotocon.com/amsterdam-2016/presentation/Journey%20from%20Monolith%20to%20Microservices%20and%20DevOps)
- [Data-driven products](https://medium.com/@neal_lathia/what-do-we-mean-when-we-talk-about-data-driven-products-127ceb3e6cf)
- [Embrace change](https://www.theregister.co.uk/2016/01/15/devops_people_problem/)
- [Performance testing as a first-class citizen](https://internetperformanceexpert.com/2013/09/26/treat-performance-as-a-first-class-citizen/)
- [Systems thinking](https://en.wikipedia.org/wiki/Systems_theory)
- [Two Pizza Teams](http://blog.idonethis.com/two-pizza-team/)
- [Automation over documentation](https://githubengineering.com/runnable-documentation/)
- [Lean startup](http://ecorner.stanford.edu/videos/2329/Evangelizing-for-the-Lean-Startup-Entire-Talk)
- [Reduce the risk of releasing](http://slidesha.re/dsSZIr)
- [Embrace NoSQL](https://diginomica.com/category/devops-stack/)
- [People over process](https://jezhumble.net/2007/09/11/line-management.html)
- [Immutable infrastructure](https://dzone.com/articles/why-you-should-build-immutable) 
- [Automate (almost) everything](https://www.thoughtworks.com/insights/blog/automate-almost-everything)
- [Securing Software through Continuous Delivery](https://www.oreilly.com/learning/devopssec-securing-software-through-continuous-delivery)
- [Shift left](https://dzone.com/articles/the-shift-left-principle-and-devops-1)
- [Big data](http://blog.syncsort.com/2017/04/big-data/big-data-and-devops/)
- [Prioritisation - Work on the most important thing first](http://www.theagilemindset.co.uk/the-scrum-philosophy/)
- [Focus on mean time to recovery](https://www.thoughtworks.com/radar/techniques/focus-on-mean-time-to-recovery)
- [Pipelines as code](http://inedo.com/blog/pipelines-as-code-how-you-can-fully-embrace-agile-and-devops)
- [Test at the appropriate level](https://www.mountaingoatsoftware.com/blog/the-forgotten-layer-of-the-test-automation-pyramid)
- [Platform as a service](https://blogs.msdn.microsoft.com/brunoterkaly/2014/04/17/the-devops-story-why-it-is-really-about-platform-as-a-service/)
- [Use analogies to communicate important concepts](http://www.techrepublic.com/blog/10-things/10-ways-to-explain-things-more-effectively/)
- [Done means released](https://blog.codecentric.de/en/2010/10/devopsdays-in-hamburg-%E2%80%9Cdone%E2%80%9D-means-released/)
- [Everybody is responsible for delivery](http://blog.macisaacconsulting.com/continuous-delivery-everybody-responsible-quality/)
- [People are the key](https://techbeacon.com/psychology-devops-understanding-people-key-success) - Get everyone together at the beginning. Keep meeting. Make it easy for everyone to see what’s happening.
- [Blameless Post-Mortems](https://codeascraft.com/2012/05/22/blameless-postmortems/)
- [Decrease lead time](https://techbeacon.com/doing-continuous-delivery-focus-first-reducing-release-cycle-times)
- [Cloud](https://www.infoq.com/articles/cloud-and-devops)
- Testing as code - Use the gherkin language "[Business Readable, Domain Specific Language](https://martinfowler.com/bliki/BusinessReadableDSL.html)", for manual as well as automated. Keep all your tests with your code, use version control to track changes.

