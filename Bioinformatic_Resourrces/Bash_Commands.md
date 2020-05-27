# Basic Bash Commands

### Some basic commands to get you started working in the terminal. These are mostly here for reference, if you are just getting started it is _more_ useful to do tutorials to get yourself familiar with the command line.

---

`pwd` print working directory

`q` quits where you are to get back to the command line  
**control c** kills a command

**control a** takes you to the beginning of a line  
**control e** takes you to the end of the line  
**control delete** deletes one word back  


`.` is the current directory  
**pressing the ^ up arrow** goes up to your previous commands  
`clear` blanks the terminal but you can still ^ to get your previous commands

`mkdir directoryname`  make a directory  
`rmdir directoryname` remove a directory  
`rm -r directoryname` also removes a directory

`df .` how much disk space you have in the current directory

printenv | less what your environment variables are set at
set | less what your shell variable values are

Change Directory:  
`cd directoryname` but has to follow the path, ex `cd first-directory/inner-directory/target-directory`  
`cd ..` go back up a directory  
`cd -` go to the last directory you were in  
`cd ~` go to your home directory  

List Directory Contents:  
`ls` inside your current directory  
`ls ~` list contents of home directory  
`ls -F` lists and tells you if your things are files or directories
`man ls` manual for ls command    
`ls -l` lists directory contents in long form  
`ls -l -h` lists directory contents in long form human readable  
`ls -R` lists contents of directories recursively (shows everything inside your directories)  
`ls -t` lists contents of directories by time of last modification  
`ls -a` shows ALL directory contents even things you can’t access  
`ls -S` sort files by size  
`ls -Sl`  will sort all your files by size AND tell you how big they are  

`rm filename` deletes the file from your directory **forever**  
`rm -r directoryname` recursive deletion, will get rid of a directory and everything it in, also **forever**  
`rm -i` will give you a prompt to make sure you want to delete forever what you are telling it to do

`mv filename newfilename` move, can use to rename files by “moving” one to the new name. also can rename/overwrite directories  
`mv filename directory/` also can move the file to a new location by specifying the path to that location

`cp filename directory/` copies one file and puts the copy somewhere else   
`cp filename directory/newname` can also copy and rename the file at the same time

`wc filename` prints number of lines, words, and characters in files  
`wc -l` number of lines per files  
`wc -w` number of words  
`wc -c` number of characters  

**A big thing to know is that basic commands on files do not change the files, they just print the output to your terminal. If you want the output to be a file, you have to specify the file**  
`command file etc > filename.txt` writes output of commands before the > into a new file with the name filename.txt. Could be any .extension you specify. This creates a file with name if you don’t have one or overwrites the existing file  
using `>>`  doesn’t overwrite the existing file and appends it

`cat filename.txt` concatenates, or prints the contents of said file (all of it)  
`less filename.txt` prints 1 page of the file, press the space bar to see the next, b to go back, and q to quit

`sort filename.txt` sorts file contents by alphabetical and prints to screen  
`sort -n filename.txt` sorts file contents in numerical order to your screen  
`sort -n filename.txt > new-filename.txt` sorts and stores sorted file in numerical order to a new file  
`sort -r sort` sorts in reverse alphabetical order, or if you use `-n` with it in reverse numerical order    
`sort -k # -n` sorts a file by column # by numbers  

`head -n # filename.txt` shows you the first number amount of rows of the file, you choose the #  
`tail -n # filename.txt` shows you the last number amount of rows of the file, you choose the #  
`head or tail -# filename.txt` shows you just the line of that file corresponding to the # you specify, ex -3 gives you the 3rd line

`echo words` print the words specified  
`echo words > filename.txt` writes whatever words you type into a text file  
`echo words >> filename.txt` adds your words to the text file without overwriting


**Use the tab key to let the terminal complete names for you!** If you have a file called AA-33-Alignment.fq.gz in your directory and it's the only file named like that, instead of typing out the whole file name or copy and pasting, you can type AA then tab and it will autocomplete to the thing in your directory. This is most helpful for quickly navigating through directories, which isn't something you care about spending time doing.

`gzip filename.txt` compresses a file  
`gunzip filename.txt.gz` expands a zipped file  
`zcat filename.txt.gz` reads zipped file without needing to be unzipped  

`file *` classifies the type of file you have in your current directory based on what they contain

`diff filename1 filename2` tells you the differences between two files

`grep word filename` finds all the lines that contain word in the filename and prints them  
`grep -w word filename` finds all the lines that contain that word on its own, ie if the word is **The** it won’t find **These**  
with multiple terms you can put it in “quotes”  
`grep -n` gives you the numbers of the lines that match  
`grep -i` makes the search case-INsensitive  
`grep -v` inverses the search, giving you every line that does NOT contain your search word(s)  
`grep -R` searches recursively through a directory for the word  
`grep -l` will just give you the file name with the matching word  
`^` makes what you are looking for have to be at the start of the line (first word)  
`grep word$` means thats the end of the line  
`grep -A 1 word filename` prints the line with the word and also the line after the match  
`grep -B 1 word filename` prints the line with the word and also the line after the match  
you can change the # of lines before/after  
`grep -c world filename` number of lines with the word  

`find .` finds files and directories and subdirectories in the directory you are in and prints them   
`find . -type d` prints all the directories inside the one you are in  
`find . -type f` prints all the files inside the directory you are in  
`find . -name ‘thing’` will find all the things named like that in each subdirectory in the one you’re in  
You can put the find command in () to make it the argument of a command, ex `wc -l $(find . -name ‘thing’)`

Basic searching with awk (awk: "a program that you can use to select particular records in a file and perform operations upon them")  
`awk ‘/seachterm/‘ filename`  
`awk ‘!/seachterm/‘ filename`  searches for NOT that term  
`awk ‘$# seach term’` searches and prints from the column number that you specify  
`awk ‘$# > #’` you can search for conditionals, ex lines in column # that are greater than > a number, could do less than etc  

`sed ’s/firstword/secondword/‘` finds the firstword and replaces it with the secondword in each line, but only the 1st instance in that line  
`sed ’s/firstword/secondword/g‘` will find and replace for all firstwords in the line  
sed can also be use with characters, like , or ; or even tabs

`ps` shows what processes are running

`command &` runs that process in the background  
`command Z` while a process is running in the foreground suspends it, the type bg to put it in the background
jobs shows what processes are in the background  
`fg jobnumber` foregrounds the process specified  
`kill jobnumber` stops a process in the background or suspended

Nano  
`nano filename.txt` opens nano (a simple text editor) to make a file while in your terminal  
**control o** pressing those keys saves the file, it will prompt you the first time and ask if you want it saved as the filename.txt you gave it enter for yes  
**control x** gets you out of the text editor
`touch filename.txt` creates and empty text file in whatever directory you are in but doesn’t take you to it  
`touch existingfile` changes the modified date to the day you do this


Very basic scripting information:  
Needs to have `#!/bin/bash` at the top of a script  
Inside the script you write commands to be done  
`chmod +x filename.sh` need to run this command to make the script excitable (runable)  
`filename.sh` is extension is .sh it's a shell script  
as opposed to say `filename.py` which is a python script  
`bash filename.sh` runs the script  
Inside the script, putting “$1” in place of where you would put a filename means “the first filename or argument on the command line”, you can further make things “$2” “$3” etc as long as when you bash filename.sh you specify the 1, 2, and 3 afterwards in that order. Example would be `bash script.sh filename1 filename2 filename3`  
`bash -x filename.sh` runs the script in debug mode which prints out each command as it’s run


`&&` simultaneously executes two tasks

Pipes:  
`command | command` takes the output of the first command and makes it the input of the second command, can be chained together many times, however be wary that if something gets messed up in a middle pipe it may be hard to find out when the problem happened

< redirect input to a command

`uniq filename.txt` prints file with **adjacent** duplicate words removed  
`uniq -c filename.txt` gives list with a count of how many of things with that name in the file   
Use this in a pipe with the sort command so duplicates are adjacently arranged and will be completely removed


If you have a comma or semicolon separated file: `cut -d , -f#`  filename.txt cuts/separates file where the “,” is (works in file where there are commas in lines) and -f prints the second field in each line, whatever is after the comma
If there are no separators such as commas between fields (like tabs) `cut -f#` cuts by the column number and only shows the # column  
`paste filename filename` if you cut things from two files into new files this will paste them together

`history | tail -n #` gives you the last # of command lines
`!command` recalls the last command that started with "command"  
`!!` retrieves the immediately proceeding command  
`!$` retrieves the last word of the last command

Wildcards:  
The shell will put anything into the `*` it is a catch-all for all characters (letters, numbers, punctuation) Ex, `*.txt` will call all files in the directory that end in .txt.  
`*[character character]` will call things with either character specified  
`?` the shell will find the thing with one character in the ? position, ex. ?.txt can only call txt files that are like K.txt or 2.txt  


`-eq` equal to  
`-ne` not equal  
`-le` less than or equal  
`-lt` less than  
`-ge` greater or equal  
`-gt` greater than  
`-z` is null  

Comparing strings:  
`==` equal  
`!=` not equal


Loops:  
```
for
variable in namedvariable namedvariable
do
command and modifiers $variable
done
```
Where **variable** is a place holder you define, such as "file", and namedvariable  is the actual thing or file that you’re doing the commands to. For namedvariable you can get creative with * or ?. Imprtantly you have to put the `$` in front of the placeholder variable in the actual command so the shell knows to put in your actual variable/file/thing.     
Example basic loop:   
```
for fq in *.fastq.gz
  do
  echo $fq >> read-counts.txt
  zcat $fq | echo $((`wc -l`/4)) >> read-counts.txt
  done
```
If you want to save in the loop use >> filename.whatever so that nothing gets over written

while  
do  
done  
will keep the loop going while the condition is true

until  
do  
done  
loops until the condition is true
