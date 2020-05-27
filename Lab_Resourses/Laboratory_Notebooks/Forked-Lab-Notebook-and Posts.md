---
layout: post
title: "Forking the Putnam Open Lab Notebook for Your GitHub"
author: Maggie Schedl
---


### Walk-though of Forking and Modifying this Notebook Site  
#### All steps that can be done through the terminal instead of a GUI will be written for doing in the terminal because it is good practice to use the shell  
_Written by Maggie Schedl_


**Important Links:**  
[Hollie's Notebook](https://github.com/hputnam/Putnam_Lab_Notebook)  
[Original Jekyll Blog](https://github.com/barryclark/jekyll-now)

### Steps

1. Open your Terminal application. If you have a mac the name of the app is terminal. If you have a pc there should be an option to open the Command Prompt, or you may have to install putty.

2. `cd Desktop/folder-for-Putnam-lab` Get yourself into the folder you want, you can make folders with your finder or in the terminal as in the next step. If your folder is in a different place, like Documents put that in the path.

3. `mkdir Notebook-Directory` Make a directory (same thing as a folder) where you want to put the repository for the Putnam Lab Notebook. This is where all the files will go.

4. `cd Notebook-Directory` Go into the directory you just made.

5. `git init` Now make that directory an empty git repository. Git is a way to do version control, which tracks changes in your files and can help you if previous versions of you.

> _You may get an error here that says invalid active developer path, use this code_ `xcode - select --install` _in your terminal to fix it, you should then be able to use git init._

6. Login to [GitHub](https://github.com/) and go to [Hollie's Notebook](https://github.com/hputnam/Putnam_Lab_Notebook). If you don't have an account, make one. It's free!

7. Click the button in the top right corner that says Fork. It will take everything from Hollie's repository and create a copy in your account. Once that is done go into the settings of that repository and change the name. For example mine is MESPutnam_Open_Lab_Notebook. Just remember to not use spaces.

8. Whenever you want to get back to the home of your repository just click the <>Code tab. In that tab click the green button on the right that says Clone or Download. It will give you a link, copy that link.

9. You want to make a clone of this repository on your personal computer and have it connect to GitHub. This way you can change things on your computer, then send them to GitHub as a way of version control. In your command prompt or terminal you should still be in the directory you created for this notebook. You can always use the command `pwd` to check your working directory.

10.`git clone https://github.com/GitHub-user-name/Your-Notebook-Repo-Name.git` The terminal will print out some things saying that it's downloading the repository. Now you have a remote copy of your repo, and you should be able to see it in your finder window too.

11. Back in GitHub online, go to the setting tab again. Scroll to the GitHub Pages section; this is where you tell the site that you want your notebook to be made into a website. Use the dropdown menu to change the source to master branch.

12. A box will come up that says your site is ready to be published/is published and then gives you a link that will look something like this: https://meschedl.github.io/MESPutnam_Open_Lab_Notebook/ but with your username and repo name. You may have to go back and click on settings again for it to go. Copy this url.

13. Go back to the <>Code section.  At the top it says "Open Lab Notebook" and the link to Hollie's Notebook. Click edit, rename the description to whatever you want, and paste the link you got from the settings page. This makes it so that people can click the link directly when they get to your repository and it will take them to your site instead of Hollie's.

14. On your computer finder go to the folder where your repository is. Open the file called _config.yml in your preferred text editor. I use [Atom](https://atom.io/)

15. The _config.yml file is basically a map for your site. Change all of these to personalize the site:
    - Name
    - Description
    - Avatar _This puts in an image you want, if you want just the profile picture on your GitHub account already you can right click on it to and copy the image link. If you want another one you can specify the path to that image._
    - All the social media _This is then put at the footer of all your pages._

16. It shouldn't be necessary to change any of the other sections, if you mess those up your site won't publish. Save this file, but that only saves it to your computer. We have to add it to Git and send it to GitHub before it will change anything online.

17. In your terminal, making sure you are in the notebook directory:
`git add _config.yml` _This adds the file you just edited to Git_

18.`git commit -m "adding new config file"` _Commits your changes and gives a little description of what you changed. You always have to include a commit message, and it is helpful if later you need a specific version of a file and commits were well labeled_

19. `git push origin master` _This pushes your changes to GitHub. Because this is your site and we set it to build from the master branch the origin is master.

> _You may have to put in your login information if this is your first push. You can also set this up so you won't have to login again: `git config --global user.name "John Doe"` and `git config --global user.email johndoe@example.com`_

20. There are a few more things to change. On your computer open the _layouts folder and open the default.html file. Edit line 45 to be the link to your GitHub notebook (ex. https://github.com/meschedl/MESPutnam_Open_Lab_Notebook/)

21. Save the file and push it to GitHub

`git add _layouts` _You can add the whole folder even if you just edited one file. This makes things a lot easier if you edit a lot of posts at once and can commit them all in one line of code._

`git commit -m "adding new admin link"`

`git push origin master`

22. You also have a file called README.md. If you saw at the bottom of the <>Code page on GitHub there is a little window that says Open For Science. This is where Hollie wrote about her rational for having a public and open lab notebook. You can keep it how it is or change it to include your  name, etc.

23. Save and add to GitHub in the same way  

`git add README.md`

`git commit -m "adding new README file"`

`git push origin master`

24. The last thing you'll probably want to edit before moving on to posts is the about page. Hollie has this page set up to be as your CV. This file is set up as a [Markdown file](https://guides.github.com/features/mastering-markdown/) meaning it has the .md extension. This is a certain way of writing files with simple syntax like # or ** that make headings and type styles instead of changing them with buttons like in Word. [Another Markdown Cheatsheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet) or a [tutorial](https://www.markdowntutorial.com/). You can also look at the [Raw code](https://raw.githubusercontent.com/hputnam/Putnam_Lab_Notebook/master/about.md) of Hollie's CV page (this is what you should see when you open the file) to get ideas for layouts. Save the file and add it.

`git add about.md`

`git commit -m "adding new about file"`

`git push origin master`

25. Now you're almost ready to make a post. However, there are already posts on your page from where you forked your repository. In GitHub you can click on the _posts folder, click on each post, click the small trashcan icon in the upper righthand corner and delete the post. It'll ask you to commit and it looks pretty serious, but as long as you are deleting from your repository (ex. https://meschedl.github.io/MESPutnam_Open_Lab_Notebook/) you are fine. Make sure to not delete the post_template.sh file. As a general rule if you delete all files in a folder it will remove the folder.

26. Before we can change around things on the computer and push them to GitHub, you have to pull the changes you made in GitHub to your computer. Communication is key 👌   
In the terminal

`git pull origin master`

27. To make a new post open a blank file in your text editor and save it to the _posts directory for your notebook. _Important: you have to use the specific Jeykll markdown file naming convention for the posts/blog to build on the site properly: YYYY-MM-DD-Post-Name.md_

28. The first section of your file needs something called a YAML header  
`---`  
`layout: post`  
`title: Your title`    
`tags: [ specfic, tags, if, you, want, them]`  
`---`  
This is what sets up the layout for each post.

29. Write your post in Markdown format. Here are examples from [Me](https://meschedl.github.io/MESPutnam_Open_Lab_Notebook/Montipora-Larvae-DNA-RNA-Test/), [Hollie](https://github.com/hputnam/Putnam_Lab_Notebook/blob/master/_posts/2016-08-31-Geoduck_RNA_Testing.md), [Kevin](https://github.com/kevinhwong1/KevinHWong_Notebook/blob/master/_posts/2019-03-14-Citrate-Synthase-Troubleshooting.md), and [Erin](https://github.com/echille/E.-Chille-Open-Lab-Notebook/blob/master/_posts/2019-04-01-Montipora-Larvae-DNA-RNA-Extraction-Batch-4.md). Look at the Raw version of any of these files to get the syntax for each element, ex links, images, and tables. Save images into your image folder, you can create other folders for things like pdfs or R scripts. Think of your notebook repository just as your physical one, where you put all your information. Csv files can even be easily added to the repo and looked at online: [example](https://github.com/kevinhwong1/Astrangia_Nutrition/blob/master/RAnalysis/Data/BouyantWeight_Apoc2019.csv). The easiest way to get ideas is to look at the notebooks for everyone in the lab and emulate what you like that they have. Save, commit, and push your post to the online repo and it should post within 10 minutes to the actual site.  
