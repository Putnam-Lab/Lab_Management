### Setting up URI HPC Account

1. Email 	hpc@etal.uri.edu from your URI email address and cc Hollie requesting an account on Bluewaves. As simple as: Hello I work with Dr. Hollie Putnam as a ____ and I would like to request an Andromeda account. Thank you.
2. They will email you back with a username and a password. Your password will likely be your URI student/employee ID number and you will be forced to set a new password right after login, so be ready with a new password.
3. Login with the command `ssh -l username bluewaves.uri.edu` and put in your password when prompted then the new password.
4. If you want to streamline logging in you can create an alias command for logging in. And alias is a word/command that codes for a longer set of words or commands, like a function, but with nothing to modify. Ssh means secure shell, and it securely connects you to a separate server. When you login to Andromeda you are basically connecting to a remote computer. This portal is only on the terminal window you have open. To go back to your personal computer either use the command `exit` and the connection will be broken, or open a new shell window on your computer.
5. One your home computer terminal access the "bash profile" `nano ~/.bash_profile` This could be blank or have other things you put in there. If you have a newly updated Mac computer, your terminal may now run on "zshell" instead of "shell." You can tell if you open a terminal window and on the bar at the top is say zsh. Then you want to use `nano ~/.zshrc` and it's the same thing with a different name. 
6. Say you want your alias to be PinkPeanut. On a new line type `alias PinkPeanut="ssh -l username bluewaves.uri.edu"`
7. Write out the file by pressing control +o and enter. Then exit the file by pressing control +x. Then activate the file by using the command `source ~/.bash_profile` or `source ~/.zshrc`. 
8. Try logging in to Andromeda with only the command `PinkPeanut` or whatever alias you used.
9. When you login you will be in your home directory /home/username however this is not where you want to be putting data or doing computing from
10. When given your account you will be told where to store data and work in. This is the Putnam lab directory and all data and analysis should be kept in directories under this one.
11. Once logging in navigate to that directory `cd /data/putnamlab/`
12. Create a directory for yourself `mkdir username/your name`
13. cd into that directory. This is where you should work!
14. If you already have things to work on, create a directory for that project.
15. If you are copying data from your computer locally to Andromeda use `scp` (secure copy). Example for one file:  
```
scp /Users/yourcomputer/Desktop/Data/sequencefileA.fq.gz username@bluewaves.uri.edu:/data/putnamlab/username-directory/project/
```
For multiple files with something similar in their name so you can use a regular expression. If you are doing multiple files at once use the `-r` flag to make it recursive.
```
scp -r /Users/yourcomputer/Desktop/Data/*.fq.gz username@bluewaves.uri.edu:/data/putnamlab/username-directory/project/
```
If the data is on an external hard drive plugged into your computer you can still access it through the terminal and secure copy from there. They exist in a place called Volumes.
```
scp -r /volumes/HardDriveName/folder/*.fq.gz  username@bluewaves.uri.edu:/data/putnamlab/username-directory/project/
```
Copying data from KITT. First login to KITT and do these commands from your KITT logged in terminal. Use -r if you are recursively transferring files.
```
scp /home/username/directory/filename username@bluewaves.uri.edu:/data/putnamlab/username/projectdirectory/
```
It will say something like "the authenticity of the Andromeda host cannot be established" but you enter yes for connecting anyways. Then you will be asked to type your bluewaves password to complete transfer connection. 

**If you have questions about Andromeda first look on the URI webpage about it [here](https://web.uri.edu/hpc-research-computing/using-andromeda/). You can also contact Kevin Byran bryank@uri.edu**
