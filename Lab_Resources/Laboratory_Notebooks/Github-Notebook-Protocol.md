---
layout: post
title: Making an Online Github Notebook
date: '2018-05-08'
categories: Protocols
tags: [Protocols, Github]
---

  #  <center> Protocol to make an Online Github Notebook

Adapted by Zoe Dellaert in August 2025, based on previous protocol written by Maggie Schedl

This protocol will guide you through making your own online notebook forked from Jekyll-now. For more information about the original webside layout, click [here](https://github.com/barryclark/jekyll-now). Steps are written primarily for the terminal (Mac) or Gitbash (PC). 

**Prerequisites:**
- Download Gitbash if you have a PC (Macs have Terminal preinstalled)
- A Markdown editor (e.g., **Visual Studio Code**, Atom, MOU)
- A GitHub account

**Helpful Links:**  
- [Hollie's Notebook](https://github.com/hputnam/Putnam_Lab_Notebook)  
- [Original Jekyll Blog (jekyll-now)](https://github.com/barryclark/jekyll-now)  
- [Markdown Cheatsheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet)  
- [Markdown Tutorial](https://www.markdowntutorial.com/)

---

# Step-by-Step Instructions

> **Optional: Using GitHub Desktop instead of Terminal**  (recommended for PCs or poeople not comfortable using command line (yet :) )
> - Download [GitHub Desktop](https://desktop.github.com/) and sign in.  
> - On Hollie's repository page, click **Code → Open with GitHub Desktop** to clone it locally.  
> - Make edits in your text editor as usual. Save files after editing them.
> - In GitHub Desktop, you’ll see changes listed automatically.  
> - Add a commit message and click **Commit to master**, then **Push origin** to upload.  
> This replaces `git add`, `git commit`, and `git push` commands in the terminal.
> **I wrote a full Github Desktop tutorial at the bottom of this page.**

## 1. Fork The Repository

"Forking" a repository means you are making a copy of someone else's repository. When you make changes to your forked repository, these will not change the original repository.

1. Log in to [GitHub](https://github.com/).
2. Navigate to [Putnam_Lab_Notebook](https://github.com/hputnam/Putnam_Lab_Notebook) (or [jekyll-now](https://github.com/barryclark/jekyll-now)).  
3. Click **Fork** (top-right) to copy it to your account as `yourgithubusername`/`Repository name` 
   1. you will be asked to change the repository name, change it to whatever you'd like without spaces

## 2. Enable GitHub Pages

1. In your repository on GitHub.com, go to **Settings → Pages**.  
2. Under *Source*, select **Deploy from a branch**. If it asks for a branch, choose **main** or **master**.
3. Copy the site URL provided (e.g., `https://yourusername.github.io/YourNotebook/`).  
4. In your repo’s **Code** tab, edit the repository description and paste your site link there.

## 3. Create a Local Copy of your Notebook Repository 

To "clone" a repository means to download all the files in it so you have a local copy on your computer at the time of cloning. If you make changes to those files on your computer (or on the remote [online] repository), those changes will not be reflected in the other unless you explicitly sync them ("Push", see below).

You will end up with a folder titled `Your_Repository_Name` in whatever folder you clone this into. If you have a general URI or Putnam Lab folder, run the clone command in that folder to not end up with a folder within a folder.

1. Open Terminal (Mac) or Gitbash (PC).  
2. Navigate to or create a directory for your notebook:
   ```bash
   cd Putnam_Lab
   git init
   ```
   > If you get an error like *invalid active developer path*, run `xcode-select --install`.

3. Clone your forked repository:
   ```bash
   git clone https://github.com/YOUR-USERNAME/YOUR-NOTEBOOK-REPO.git
   ```
4. Use `pwd` to confirm you’re in the correct directory.

## 4. Customize `_config.yml`

1. Open `_config.yml` in your text editor. Change:
   - **name**: Name of your site (displayed in the header)
   - **description**: short tagline or description (displayed in the header)
   - **avatar**: URL to your image or profile pic
   - **social media handles**: optional links
   - Compare to other notebooks to see which lines differ (esp. lines 6, 9, 12, 20–32).
   - Delete all info that is Hollie's personal contact info/website.

2. Save the file and **push** it (basically sync/upload changes) to GitHub:
   ```bash
   git add _config.yml
   git commit -m "adding new config file"
   git push origin master
   ```

## 5. Update Navigation Links

1. Open `_layouts/default.html` in your text editor and edit **line 45** to link to your GitHub repo.
   1. `https://yourusername.github.io/YourNotebook/`
2. Save and push:
   ```bash
   git add _layouts
   git commit -m "adding new admin link"
   git push origin master
   ```

## 6. Edit About and README Pages

Same steps as above, different files:

1. **about.md** – Update with your bio or CV. Remove Hollie's CV.
   ```bash
   git add about.md
   git commit -m "adding new about page"
   git push origin master
   ```

2. **README.md** – Update with personal info or project details.
   ```bash
   git add README.md
   git commit -m "adding new README"
   git push origin master
   ```

## 7. Cleaning Up Posts

- Your site comes with posts from the original fork.  
- In `_posts` folder, delete unwanted posts  
- Do the same for the `images` and `protocols` folders

   ```bash
   git add *
   git commit -m "deleting old posts"
   git push origin master
   ```

## 8. How to add a post

1. Create a new Markdown (.md) file in `_posts/`:
   - **Use Jekyll naming convention:** `YYYY-MM-DD-Post-Name.md`
   - Add a YAML header:
     ```markdown
     ---
     layout: post
     title: "Your Post Title"
     tags: [tag1, tag2]
     ---
     ```
2. Write your content in Markdown (links, tables, images) in Markdown editor (e.g., **Visual Studio Code**, Atom, MOU)
3. Save and push:
   ```bash
   git add _posts/New_Post.md
   git commit -m "adding new post"
   git push origin master
   ```

**Your post will appear on your github.io site in ~10 minutes.** But you can see it rendered in markdown format anytime, instantaneously updated, at the repository online (not on github pages) https://github.com/YOUR-USERNAME/_posts/New_Post.md

---

## Alternative workflow, using Github Desktop (steps 1-2 are the same)

## 1. Fork The Repository

"Forking" a repository means you are making a copy of someone else's repository. When you make changes to your forked repository, these will not change the original repository.

1. Log in to [GitHub](https://github.com/).
2. Navigate to [Putnam_Lab_Notebook](https://github.com/hputnam/Putnam_Lab_Notebook) (or [jekyll-now](https://github.com/barryclark/jekyll-now)).  
3. Click **Fork** (top-right) to copy it to your account as `yourgithubusername`/`Repository name` 
   1. you will be asked to change the repository name, change it to whatever you'd like without spaces

## 2. Enable GitHub Pages

1. In your repository on GitHub.com, go to **Settings → Pages**.  
2. Under *Source*, select **Deploy from a branch**. If it asks for a branch, choose **main** or **master**.
3. Copy the site URL provided (e.g., `https://yourusername.github.io/YourNotebook/`).  
4. In your repo’s **Code** tab, edit the repository description and paste your site link there.

## 3. Create a Local Copy of Your Notebook Repository *with GitHub Desktop*

To "clone" a repository means to download all the files in it so you have a local copy on your computer at the time of cloning. If you make changes to those files on your computer (or on the remote [online] repository), those changes will not be reflected in the other unless you explicitly sync them ("Push", see below).

You will end up with a folder titled `Your_Repository_Name` in whatever folder you clone this into. If you have a general URI or Putnam Lab folder, run the clone command in that folder to not end up with a folder within a folder.

1. Download and install [GitHub Desktop](https://desktop.github.com/) if you haven’t already.
2. Open GitHub Desktop and log in with your GitHub account.
3. Go to **File → Clone Repository**.
   - In the **GitHub.com** tab, find your forked repository.
   - Select a local path (folder) on your computer where you want the repository to live.
   - Click **Clone**.
4. Once cloned, you now have a local copy of your repository on your computer.

## 4. Customize `_config.yml` Using GitHub Desktop

1. In GitHub Desktop, click **Repository → Open in Finder (Mac)** or **Show in Explorer (PC)** to open the repository folder.
2. Open `_config.yml` in a text editor (VS Code, Atom, Notepad++, etc.).
3. Change the following:
   - **name**: Name of your site (displayed in the header)
   - **description**: short tagline or description (displayed in the header)
   - **avatar**: URL to your image or profile pic
   - **social media handles**: optional links
   - Compare to other notebooks to see which lines differ (esp. lines 6, 9, 12, 20–32).
   - Delete all info that is Hollie's personal contact info/website.
4. Save the file.
5. In GitHub Desktop:
   - You’ll see `_config.yml` listed under **Changes**.
   - Write a **summary message** (e.g., "Update site configuration").
   - Click **Commit to main** (or master).
   - Click **Push origin** to upload your changes to GitHub.

Now your notebook is live with your custom settings and synced using GitHub Desktop. Follow all the rest of the steps #5-8 written above using the same workflow. You can also edit and save multiple files and then push them all at once.
