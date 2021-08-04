---
title: sidg64
date: 2021-05-19T21:02:00-05:00
lastmod: 2021-06-19T08:08:00-5:00
---

sidg64 will generate 64bit unique identifiers known as "snowflake ids" and store them in a postgresql database. These are the same ID's that make up the last section of a twitter url.

### END sidg64 [2021/06/19 07:38:04]
So this was actually much easier than I anticipated it being, it took me a maximum of four days in which I used libpq-fe for postgres and C interfacing. I ended up using a "seeding" technique for the first entry and afterwards every entry onwards was a reference to that seed. You can check the code out [here](https://github.com/LiminalCrab/sidg64).
