---
layout: post
title: Making an Online Github Notebook
date: '2018-05-08'
categories: Protocols
tags: [Protocols, Github]
---

  #  <center> Protocol to make an Online Github Notebook

This protocol will guide you through making your own online notebook forked from Jekyll-now. For more information about the original webside layout, click [here](https://github.com/barryclark/jekyll-now). To set up your online notebook, you will need to have the following programs on your computer:
  - Gitbash (for PCs, Macs have Terminal already installed)
  - A Markdown editor (e.g. Atom or MOU)

# <center> Steps:

## 1. Fork The Repository from [Putnam_Lab_Notebook](https://github.com/hputnam/Putnam_Lab_Notebook) or [Jekyll-now](https://github.com/barryclark/jekyll-now)

* Fork the repository to **yourgithubusername**.github.io
* Make sure you have a directory on your computer

## 2. Edit config.yml file

* Name of your site (displayed in the header)
name: **Fill in here**
* Short bio or description (displayed in the header)
description: **Fill in here**
* URL of your avatar or profile pic
avatar: **Add File Link Here**
* Edit the following lines appropriately: **6, 9, 12, 20 - 32**

** If you are unsure what to change, compare other notebook config.yml files and determine what is different**

## 3.  Add config.yml to site

Download Gitbash (PC) or Open Terminal (Mac)

```
cd Desktop/Notebook/XXXXXX_Lab_Notebook
git add config.yml
git commit -m "adding new config file"
git push origin master
```

## 4. Add New Admin Link:

In your computer folder (XXXXXX_Lab_Notebook):
- Open **_layouts**
- Edit **default.html**
  * Change **line 45** to your Github notebook link
- Save and push file to origin master:

```
cd Desktop/Notebook/XXXXXX_Lab_Notebook
cd _layouts
git add default.html
git commit -m "adding new admin link"
git push origin master
```

## 5. Edit about.md page

In your computer folder (XXXXXX_Lab_Notebook):
* Open and edit **about.md**
  * Change all information to your personal information
  * Add a CV
* Save and Push to origin master

```
cd Desktop/Notebook/XXXXXX_Lab_Notebook
git add about.md
git commit -m "adding new about page"
git push origin master
```

## 6. Edit READMe.md file

In your computer folder (XXXXXX_Lab_Notebook):
* Open and edit ReadMe.md
  * Edit all information
* Save and push to origin master

```
cd Desktop/Notebook/XXXXXX_Lab_Notebook
git add READMe.md
git commit -m "adding new READMe"
git push origin master
```

## 7. How to add a post

* Make a new post in a markdown editor using the **post_template.sh**
* Save new post in **_posts folder**
* Push to origin master

```
cd Desktop/Notebook/XXXXXX_Lab_Notebook/_posts
git add New_Post.md
git commit -m "adding new post"
git push origin master
```
