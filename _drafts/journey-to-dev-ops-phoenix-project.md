---
title: The Journey to DevOps: Notes from The Project Phoenix
image: https://i.imgur.com/BykYlCp.jpg
---

If you’ve ever looked into DevOps, you’ve no doubt come across this “evolution” type image, with a monkey on the left, labelled “Waterfall” and on the right, you’ve got an android labelled “Continuous Operations”. Along this evolutionary journey, you’ve got agile, lean, continuous integration, continuous delivery and continuous deployment.

Evolution is a great analogy for a company’s journey to a DevOps culture. We know it happenes over time, the lines are blurred and each evolutionarily path is different. Evolution is not about one person, it’s not about the first person or people to stand upright or being smart enough to discover fire. It’s about growth. So, when people ask; “Are we doing DevOps yet?” It’s quite hard to really answer, because it’s a process of change and a shift in mindset.

It’s fair to say though, that there are some characteristics of the “DevOps process”, you’ll hear people talking about servers being “cattle rather than pets”, highly scalable architecture, infrastructure as code, “release early, release often”, break up the monolith, quality built in, automated testing, etc.

For anyone new to DevOps these terms could be completely foreign. It's been my goal to work out where they fit in the evolutionary process. The when, rather than the how.

The catalyst that has driven me to a DevOps culture was this idea of “pets vs cattle”. This is the paradigm of disposable server infrastructure, to stop treating our servers and services as pets and more like cattle. No longer giving them cute names and keeping them around as long as possible, instead we’ve accepted that they could go at any time and prepare for that.

That includes laying the foundations to make DevOps possible, such as monitoring and alerting, deployment pipelines, continuous integration, infrastructure as code, auto scaling/healing, performance metrics, blue/green releases. But DevOps isn’t just a toolchain, it’s a change in culture.

I really wanted to understand what it takes to "be DevOps". What does that look like? There's a book that goes some way to explaining what those qualities are.

<!--more-->

<blockquote class="instagram-media" data-instgrm-captioned data-instgrm-version="7" style=" background:#FFF; border:0; border-radius:3px; box-shadow:0 0 1px 0 rgba(0,0,0,0.5),0 1px 10px 0 rgba(0,0,0,0.15); margin: 1px; max-width:658px; padding:0; width:99.375%; width:-webkit-calc(100% - 2px); width:calc(100% - 2px);"><div style="padding:8px;"> <div style=" background:#F8F8F8; line-height:0; margin-top:40px; padding:50.0% 0; text-align:center; width:100%;"> <div style=" background:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACwAAAAsCAMAAAApWqozAAAABGdBTUEAALGPC/xhBQAAAAFzUkdCAK7OHOkAAAAMUExURczMzPf399fX1+bm5mzY9AMAAADiSURBVDjLvZXbEsMgCES5/P8/t9FuRVCRmU73JWlzosgSIIZURCjo/ad+EQJJB4Hv8BFt+IDpQoCx1wjOSBFhh2XssxEIYn3ulI/6MNReE07UIWJEv8UEOWDS88LY97kqyTliJKKtuYBbruAyVh5wOHiXmpi5we58Ek028czwyuQdLKPG1Bkb4NnM+VeAnfHqn1k4+GPT6uGQcvu2h2OVuIf/gWUFyy8OWEpdyZSa3aVCqpVoVvzZZ2VTnn2wU8qzVjDDetO90GSy9mVLqtgYSy231MxrY6I2gGqjrTY0L8fxCxfCBbhWrsYYAAAAAElFTkSuQmCC); display:block; height:44px; margin:0 auto -44px; position:relative; top:-22px; width:44px;"></div></div> <p style=" margin:8px 0 0 0; padding:0 4px;"> <a href="https://www.instagram.com/p/BX6TjEcHbKY/" style=" color:#000; font-family:Arial,sans-serif; font-size:14px; font-style:normal; font-weight:normal; line-height:17px; text-decoration:none; word-wrap:break-word;" target="_blank">Just finished. Interesting fictional story about a company&#39;s journey to #devops</a></p> <p style=" color:#c9c8cd; font-family:Arial,sans-serif; font-size:14px; line-height:17px; margin-bottom:0; margin-top:8px; overflow:hidden; padding:8px 0 7px; text-align:center; text-overflow:ellipsis; white-space:nowrap;">A post shared by James Wade (@jpswade) on <time style=" font-family:Arial,sans-serif; font-size:14px; line-height:17px;" datetime="2017-08-17T22:05:04+00:00">Aug 17, 2017 at 3:05pm PDT</time></p></div></blockquote> <script async defer src="//platform.instagram.com/en_US/embeds.js"></script>

The Phoenix Project is an interesting read for anyone interested in leading a development team. It's a fictional story about a company's journey to DevOps. I've compiled a few “highlights” and “lowlights” that interested me...

- “It’s a pretty clunky and manual process. It works most of the time…” [referring to the payroll system]
- “Now, I’m starting to realize that my primary managers seem to be at war with each other as well. What will it take for us to get along?”
- “The one consistent theme in the interviews was that everyone struggles to get their project work done. Even when they do have time, they struggle to prioritize all their commitments”
- “Improvements made anywhere besides the bottleneck are an illusion”
- “Processes are supposed to protect people”
- Smoke test: “If you turn the circuit board on and no smoke comes out, it’ll probably work”
- “Make sure that the constraint is now allowed to waste any time. Ever. It should never be waiting on any other resource for anything, and it should always be working on the highest priority commitment”
- “Development is spending all their cycles on features, instead of stability, security, scalability, manageability, operability, continuity ...”
- “You need to know what matters to the achievement of the business objectives, whether it’s projects, operations, strategy, compliance with laws and regulations, security or whatever”
- “Remember, outcomes are what matters - not the process, not controls, or, for that matter, what work you complete”
- “I know it’s unrealistic to think we’re going to leave this meeting knowing exactly what we need to do, with priorities and owners assigned” “But I would like to have a joined vision as we move toward a solution”
- “I’m pretty sure we don’t do any sort of analysis of capacity and demand before we accept work”
- “When you spend all your time firefighting, there’s little time or energy left for planning”, “When all you do is react there’s not enough time to do the hard mental work of figuring out whether you can accept new work”
- “How does anyone decide what needs to get worked on at any given time?”
- “Every work centre is made up of four things: the machine, the man, the method and the measures”
- “You win when you protect the organization without putting meaningless work into the IT system. And you win even more when you can take meaningless work out of the IT system”
- [about credit card data] “You need to protect it in the process that create the work  product”
- “I keep thinking about the lanes of work we’re trying to create”
- “If it’s not on the kanban board, it won’t get done”
- “They have continual two-week improvement cycles, each requiring them to implement one small Plan-Do-Check-Act project to keep them marching towards the goal”
- “Once we figure out the what our most frequently recurring tasks are, we need to create work centres and lanes of work”
- “We’ve got to have some way to make sure we’re working on the most important things”
- The green cards are for internal IT improvement projects, and we’re experimenting with allocating twenty percent of our cycles just for those
- We need to know whether it increases our capacity at our constraint
- Improving something anywhere not at the constraint is an illusion
- We’re doing what Manufacturing Production Control Departments do. They’re the people that schedule and oversee all of the production to ensure they can meet customer demand. When they accept an order, they confirm there’s enough capacity and necessary inputs at each required work center, expediting work when necessary. They work with the sales manager and plant manager to build a production schedule so they can deliver on all their commitments
- The wait time is the ‘percentage of time busy’ divided by the ‘percentage of time idle’. In other words, if a resource is fifty percent busy, then it’s fifty percent idle. The wait time is fifty percent divided by fifty percent, so one unit of time. Let’s call that one hour. So on average, our task would wait in the queue for one hour before it gets worked on.
- What the graph says is that everyone needs idle time or slack time. If no one has slack time, WIP gets stuck in the system
- What differentiates a good day from a bad day for you?
- What are your goals, objectives and measurements for this year?
- Are we competitive? Understanding customer needs and wants: Do we know what to build?
- Product portfolio: Do we have the right products?
- R&D effectiveness: Can we build it effectively?
- Time to market: Can we ship it soon enough to matter?
- Sales pipeline: Can we convert products to into prospects? Are we effective?
- Customer on-time delivery: Are customers getting what we promised them?
- Customer retention: Are we gaining or losing customers?
- Sales forecast accuracy: Can we factor this into our sales planning process?
- I suspect that we’re sitting on the missing link that might explain both why the company keeps missing its goals as well as why IT keeps being undervalued you must gain a true understanding of the business system that IT operates in. W. Edwards Deming called this ‘appreciation for the system’
- Your mission is twofold: You must find where you’ve under-scoped IT - where certain portions of the process and technology you manage actively jeopardizes the achievement of business goals
- Some of the wisest auditors say that there are only three internal control objectives: to gain assurance for reliability of financial reporting, compliance with laws and regulations, and efficiency and effectiveness of operations
- You must understand the value chains required to achieve each of [the company's] goals
- Everyone knows that one factor jeopardizing on-time delivery is vehicle breakdowns. A key causal factor for vehicle breakdowns is failure to change the oil. So, to mitigate that risk, you’d create an SLA for vehicle operations to change the oil every five thousand miles.
- If any of them are fragile, we need to get them added to our replacement list.
- That preventive work supports the most important objectives of the company. How do we know? We started from the measures that [the company] cares about most.
- The operational risks posed by IT need to be managed just like any other business risk. In other words, they’re not IT risks. They’re business risks.
- We’re going way too slowly, with too much WIP and too many features in flight. We need to make our releases smaller and shorter and deliver cash back faster, so we can beat the internal hurdle rate.
- It shows the end-to-end information flow for the main business processes in each financially significant account. She documented where money or assets entered the system and traced it all the way to the general ledger.
- More than ever, people know exactly what they should be working on.
- We’ve all but emptied our ticketing system of outdated work.
- ”Biweekly outage drill”
- There should be absolutely no way that the Dev and QA environments don’t match the production environments.
- The First Way is all about controlling the flow of work from Development to IT Operations.
- Master the Second Way, creating constant feedback loops from IT Operations back into Development, designing quality into the product at the earliest stages.
- You’ll never hit the target you’re aiming at if you can fire the cannon only once every nine months
- You’ve deployed an amazing technology, but because you haven’t changed the way you work, you haven’t actually diminished a limitation
- Interesting isn’t it? No reverse gear. So why should your flow of work have a reverse gear?
- Brent needs to be working at the earliest stage of the development process
- Figure out what features can help us hit our revenue goals as soon as possible
- “Oh, no! We can’t deploy, because someone broke the Phoenix environments again!”
- As part of the Second Way, you need to create a feedback loop that goes all the way back to the earliest parts of production definition, design and development
- Changeover time down to under ten minutes
- When defects were found, we fixed them immediately and we didn’t have to scrap all the other parts in that batch
- WIP was brought down because each work center never overproduced production, only to sit in the queue of the next work center.
- Ten deploys a day
- John Allspaw and Paul Hammond ran IT Operations and Engineering groups at Flickr, they worked together to routinely do ten deploys a day
- Allspaw taught us that Dev and Ops working together, along with QA and the business, are a super-tribe that can achieve amazing things.
- “Until code is in production, no value is actually being generated”
- He automated the build and deployment process
- Infrastructure could be treated as code
- Create what Humble and Farley called a deployment pipeline
- Get humans out of the deployment business
- For each of the boxes, she asks how long each of those operations typically takes then jots the number on the top of the box. Next, she asks whether this step is typically where the work has to wait then draws a triangle before the box, indicating work in progress
- We were all amazed that we had a QA environment available that matched Dev so early in the project. That too was unprecedented. We needed to make a bunch of adjustments to reflect that the Dev systems had considerably less memory and storage than QA, and QA had less than those in Production. But that vast majority of the environments were identical and could be modified and spun up in minutes.
- “Maggie, who has taken such an interest in Unicorn that she’s routinely attending the daily standups” -- Business at standups! Wow!
- We’ve put in regular checks to make sure that the developers who have daily access to production only have read--only access.
- We’re the customer and they’re our supplier
- Understanding what technology can and can’t do has become a core competency that every part of this business must have.
- The business and IT can’t make decisions exclusive of each other.

It seems to be that DevOps can only work if we all recognise that development and operations need to work together to hit goals and objectives, including business operations. If the objective is to deliver value sooner, then the goal should be to make 10 deployments per day possible, without impacting the business.

The question you should be asking your team is; what do we need to do to achieve that goal? My view is, if we're not working towards that answer and we're not doing DevOps.

What would you need to do to make 10 deployments per day possible?
