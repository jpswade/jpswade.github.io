---
layout: post
title:  "Migrate from Wordpress to Github Pages using Jekyll"
date:   2016-01-30 17:18:34 +0000
tags: jekyll update
---

## Why?

- Wordpress is bloated. It won't even run on a basic free DigitalOcean instance. 
- GitHub is free and has powerful version control built in. 
- Wordpress is unnecessary overhead. Github Pages are light weight. 
- Github Pages are portable. Everything you write is written in Markdown and is portable. 
- There's no need to upgrade or install plugins. The output is static. 
- I love git and I love markdown.

## Overview

Here's what we need to do:

- Migrate comments to Disqus 
- Export content 
- Using Jekyll 
- Publish to Github Pages 

## Migrate comments

- Setup an account 
    - Go to [http://disqus.com/admin/create/](http://disqus.com/admin/create/) 

- Setup Disqus Comment System plugin in Wordpress 
    - Go to Plugins &gt; Add new, search, install then activate 
    - Go to /wp-admin/edit-comments.php?page=disqus (Comments &gt; Disqus) 
    - Click Upgrade, follow the instructions 

- Export Comments 
    - Go to /wp-admin/export.php (Tools &gt; Export) 

- Import Comments 
    - Go to [http://import.disqus.com/](http://import.disqus.com/) 

### Export Content

- Setup WordPress to Jekyll Exporter Plugin in Wordpress 
    - Go to Plugins &gt; Add new, search, install then activate 
        - Fatal error: Call to undefined function Alchemy\Zippy\mb_strtolower() in /home/user/public_html/blog/wp-content/plugins/jekyll-exporter/vendor/alchemy/zippy/src/Zippy.php on line 196 
            - If you get this error, you need to install PHP with mbstring. 

    - Go to /wp-admin/export.php?type=jekyll (Tools &gt; Export to Jekyll) 
        - Save the jekyll-export.zip to your computer 

## Using Jekyll

Install jekyll

- gem install jekyll 

Create the new jekyll install

- jekyll new &lt;yourname&gt;.github.io 
    - ie: jekyll new jpswade.github.io 

- You may want to initialise your git repository at this point and make your first commit 

Get a theme (if you like)

- [http://jekyllthemes.org/](http://jekyllthemes.org/) 

Extract your Wordpress content

- From the jekyll-export.zip extract everything to the new folder 
- Note: You may want to merge your _config.yml 

Examine the content

- You may find that you want to manually update the contents before it's published. 

Add Disqus Comments

- Get the Universal Code 
    - eg: [https://jpswade.disqus.com/admin/settings/universalcode/](https://jpswade.disqus.com/admin/settings/universalcode/) 

- Add the Universal Code into _layouts/post.html 

To build your Jekyll site

- jekyll build 

To serve/view your site locally:

- jekyll serve 

## Publish to Github Pages

Setup your .gitignore

- Add any project files (eg: nbproject) 
- Add _site (we only push the source not the built site)

Setup your CNAME (optional)

- Create a file called CNAME 
- Add your custom domain to it (eg: wade.be) 

Push your git repo to github

- If you've not already created a repo in GitHub for your site, do that now (eg: jpswade.github.io) 

There's lots more you can do with Jekyll.