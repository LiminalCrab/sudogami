---
title: starlamp
date: 2021-08-04T09:55:23-05:00
lastmod: 2021-08-07T17:49:37-05:00
---

Starlamp is a portfolio concious image gallery application using Django and Postgresql as its backend. The goal of the application is to be able to easily manage the content of your portfolio.

**Backend** - Django / Postgresql

**Frontend** - Vue.js 

### Administration Interface
The Administrator interface for Starlamp will allow the user to upload, modify, and delete content.

#### Uploading Content
Uploading content will be done in two of ways. Dragging and dropping groups of / or single images onto the page, or through the filesystem browser. Uploading multiple files will reveal a secondary UI element in the left hand sidebar, it will show the upload progress of each file. File uploads will be done starting from the smallest to largest file.

#### Detailing Content
While files are uploading, the administrator will be capable of outlining the "description" of each file, the tags and album it belongs to, an upload date will be assigned after the upload is completed successfully. 

- Description
  - Not required
  - 2,500 characters max.
- Tags
  - Created at will by the administrator 
  - marked with a pound sign.
- Upload Date
  - Default YYYY/MM/DD HH:MM (24 hour time)
- Uploaded by
  - Administrator's username.

#### Album
Albumns will be a group of posts, with one image selected as a thumbnail. Clicking this image will send the user to the directory of the album in which all the posts in that album will be revealed.

#### Note

Static development files are in the /static/ directory.
Static deployment files are in the /var/ directory.