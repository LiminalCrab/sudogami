---
title: starlamp
date: 2021-08-04T09:55:23-05:00
lastmod: 2021-08-07T17:49:37-05:00
---

Starlamp is an image gallery application written in Python using the Django framework. There are several iterations of Starlamp using various frameworks from VueJS to a simple static page generator (11ty) using NodeJS to build the gallery, but unfortunately this provided limitations of its own, especially when it came to the task of writing several thousand individual HTML pages with several thousand images, despite the use of pagination and templating, this would have been very inefficient in the long term.

I finally settled on Django for it's ability to scale and it's model system that makes working with any database a breeze. 

At the moment Starlamp is embedded inside a project I'm working on for a friend but I intend on ripping it out in the future and providing it barebones as I learn more about where I'm going to take it.




