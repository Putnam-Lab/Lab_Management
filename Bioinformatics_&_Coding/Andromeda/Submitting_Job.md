# Submitting a Job to Andromeda


To run a command that will take longer than 10 minutes to compute, you have to submit a "job". This is because when you login to Andromeda you are on a basic login node with not much computing power and is used by all other users who are logged in at that time.  
Think of a node as a separate computer, and because Andromeda is a HPC, or high processing computer, it is basically many computers all connected together. And inside each node there are many CPUs, or processing units. Each node in Andromeda has 20 CPUs. You do not want to take up all of the computing power on the base node so you create a "job" and submit it to the SLURM scheduler.  
SLURM stands for Simple Linux Utility for Resource Management. It is basically a framework that takes care of the organization and management of the HPC. It decides what node to put your job on based on parameters you give it. It also will schedule your job to start running at a certain time. This is especially important it a lot of people are running things at once and all nodes are taken, then based off of run-times it will schedule your job for the next spot open that fulfills your computing requirements.  
However because you need to tell the SLURM certain parameters and specifications, when you submit a job it is not just a simple script with your commands. There are certain headers you need to include. These are the SBATCH parameters. Because this is a coding language, they have to be exact in their syntax to be understood by the computer.  

While you write job scripts, and really while you are getting used to using Andromeda it is best to consult the [Andromeda help page](https://its.uri.edu/research-computing/using-andromeda/) **as well as** this page and all resources on the Putnam Lab page about Andromeda.

If you are testing aspects of your script, trying to see if a program will work, or doing small computing actions, you **do not want to stay on the login node.** You do this by activating interactive mode by using the command `interactive` which will log you into a different node and you can test anything in there. These nodes are slower because multiple people will be using them. Make sure to close out of your terminal window when you're done using it.

Lets look at an example of a job script that has a lot of "SBATCH" parameters:

```
#!/bin/bash
#SBATCH -t 200:00:00
#SBATCH --nodes=1 --ntasks-per-node=20
#SBATCH --export=NONE
#SBATCH --mem=500GB
#SBATCH --exclusive
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --mail-user=meschedl@uri.edu
#SBATCH --account=pradalab
#SBATCH -D /data/pradalab/meschedl/Echinometra/trimmed-data/EL_trimmed/


module load Trinity/2.8.4-foss-2016b
module load SAMtools/1.3.1-foss-2016b
module load Jellyfish/2.2.6-foss-2016b
module load Salmon/0.10.2-foss-2016b-Python-2.7.12


Trinity --seqType fq --SS_lib_type F --min_contig_length 300 --max_memory 500G \
--single EL_29_4_C1_S49_L005_R1_001.fastq.gz.trim.fq.gz,\
EL_33_4_C1_S25_L003_R1_001.fastq.gz.trim.fq.gz,\
EL_29_B1_S2_L001_R1_001.fastq.gz.trim.fq.gz,\
EL_33_B2_S79_L007_R1_001.fastq.gz.trim.fq.gz,\
EL_29_G3_S65_L006_R1_001.fastq.gz.trim.fq.gz,\
EL_33_G1_S26_L003_R1_001.fastq.gz.trim.fq.gz,\
EL_29_L2_S11_L001_R1_001.fastq.gz.trim.fq.gz,\
EL_33_L3_S86_L008_R1_001.fastq.gz.trim.fq.gz,\
EL_EGGS_2_S9_L001_R1_001.fastq.gz.trim.fq.gz \
--CPU 20 --full_cleanup
```

First, how would you make this file? You need to run the job script from inside the cluster so it is easiest to make a job script inside the cluster instead of making it on your text editor and secure copying it to Andromeda. Thankfully you can use the program `nano` to do this. If you are in Andromeda, or your personal computer in the terminal, and run the command `nano myscript.sh` a blank file will come up for you to type into. **If you want to write a shell script it needs to have the .sh file ending.** You can also paste into a nano file, but you cannot select and modify things with your curser while using the command line.

## Job Script Components

#### **Every job script MUST have the first line that says `#!/bin/bash`**
#### #SBATCH Parameters
  - These tell the scheduler how you want your script run
  - They have to say `#SBATCH ` then space at the beginning of each line
  - `#SBATCH -t 00:00:00` is the job time in hours, minutes, seconds. You decide how long you expect your  script to run. This is important so jobs can be scheduled. If your job takes less time than you set, it will just end and the CPUs/nodes you were using will open. However, if your job takes longer than the time you allotted it will stop running.
  - `#SBATCH --nodes=# --ntasks-per-node=#` Here you specify how many nodes you are requesting and how many processors (also called cores) per node to use. Note that if you are using multiple nodes, your commands in your script have to be able to be "multi-threaded" and you likely need to also specify in the command flags for the program how many threads to use. Often this information is in the manuals for the programs you are using. If you are doing something not computationally intensive, specifying `--nodes=1 --ntasks-per-node=1` is reasonable.
  - `SBATCH --cpus-per-task=#` If you are only using one node you could also specify how many processors to use for the node. The naming is confusing, but this parameter is basically a separate way to say `--ntasks-per-node=#` that can be done instead if you don't need to specify a number of nodes.
  - `#SBATCH --export=NONE` This tells the SLURM not to use your current environment variables into your job. More on your environment below, but this is important because you may run your script multiple times, and not necessarily have the same environment loaded in your working base node each time. For some programs those could effect how things are run. You want to be able to set your environment inside the script.

  - `#SBATCH --mem=500GB` This is where you specify how much memory to use. Memory can also be known as RAM. 500GB is a lot, the maximum amount of memory you can request. It can be hard to determine how much memory to request, but often programs will be able to give you an estimate, such as how much memory is needed per million reads of input data (if you are using sequences). Often memory as 20BG, 6GB, or less is what you need.
  - `#SBATCH --exclusive` If you are requesting either 250 or 500GB of memory, you have to specify that you want your node exclusive.
  - `#SBATCH --mail-type=BEGIN,END,FAIL` Your job might not start automatically, so it is likely you'll want to know when it does. Also, if your job is going to take a few days, you will want to know when it ends, or when it fails, instead of constantly checking. You can choose any or all of those parameters.
  - `#SBATCH --mail-user=meschedl@uri.edu` If you do want the SLURM to email you, you have to give it your email!
  - `#SBATCH --account=pradalab` If you are using Andromeda for multiple labs, be sure to specify which account you are doing the job for. We would use `#SBATCH --account=putnamlab`
  - `#SBATCH -D /data/pradalab/meschedl/Echinometra/trimmed-data/EL_trimmed/` This is where you set the path to be working in. If you are changing directories in your script, make sure they can be accessed through the directory you set.
  - `#SBATCH --output=“myname_out"` If you want to name the output log file for you job you can specify it. If you don't it will be named by the job ID#. If you are doing an array job, you can have it make a log/out file for each array with `--output=“myname_out.%A-%a"` where "%A" is replaced by the job ID and "%a" with the array index.
  - There are **a lot** more #SBATCH parameters that you can set, and you don't need to use all of them. First look at the [Andromeda page](https://its.uri.edu/research-computing/using-andromeda/) to get an idea of what people mostly use. For all options, look at the [SLURM website](https://slurm.schedmd.com/archive/slurm-17.11.0/sbatch.html)

#### Environments
- For most scripts, you have to load your **environment**. Also known as modules, also known as programs. Any program you use that you would have to `wget` or download and install if you wanted to run it need to have them loaded before you can run them in Andromeda.  
- Andromeda is pretty good about having a lot of programs installed, as well as different versions. Use the command `module avail` to get a list of all the programs that are available for you to use.
- There are a lot of modules, so you can also search for the one you're looking for with `module av -t |& grep -i modulename`
- If your program isn't there, email hpc@etal.uri.edu or bryank@uri.edu and it will get downloaded and installed!  
- To load a module into your environment use the command `module load modulename`   
- It is best to copy and paste the exact version of the module you want to load. You will see that in the available module list most programs have many versions you could load. Therefore you should use the entire name, such as `FastQC/0.11.8-Java-1.8`  
- It is important to keep track of versions of modules you load, especially years, if you are loading multiple modules in one script. See the example script above has modules with the `foss-2016b` name on the end of it. There is a `SAMtools` version with a `foss-2018b` suffix, however because the other programs are limited to being only `foss-2016b` versions, the 2018 version does not work. They have to match. You will get an error when you try to run your script, but it is best to try and avoid incompatibilities between program versions from the start.  
- You can also load these into your home environment, especially when testing programs. To list all the programs you have loaded use the command `module list`  
- To remove a specific module use the command `module unload modulename`
- To make your environment blank use the command `module purge`


#### Script Content

- After all of that then you can actually put in the commands you want to run.
- Make sure that every command in your script can be done with no input other than what is in the script
- Utilize for loops, arrays, and regular expressions to iterate your processes over multiple files
- Actual scripting is highly specific for your application, you can paste your script into [here](https://www.shellcheck.net/) to find errors in bash commands.
- Use resources like [basic bash commands](https://github.com/Putnam-Lab/Bioinformatic_Resources/blob/master/Bash_Commands.md), [command line software carpentry](https://www.codecademy.com/learn/learn-the-command-line), manuals, vignettes, and documentation for the programs you're running to get information on how to write your scripts.
- It's also helpful to look at other people's code, whether it be on GitHub or other code repositories, or check in publications that do the analysis you are doing to see if provide open source links to their code.


**It is important to be mindful of files made and used in your scripts. If you can keep a file zipped, do so. If not, try to code your script to zip files after use. Same with files like SAM and BAM, if your program uses or outputs a SAM file, make sure to convert it into a BAM file afterwards. SAM files take up considerably more space than BAM files. Also look for flags or parameters in the programs you are running to automate these processes. See the example script above, that has the flag `--full_cleanup` which will remove files no longer needed. These are written by the developers of the program and can really streamline your space usage.**

#### Submitting Your Job

- `sbatch myscript.sh` will submit your job with whatever script you specify. Running this command will automatically give you a job number.
- Once your job starts running it will make an output file. It gives you everything that would be printed to your terminal if you ran it there. It looks like slurm-######.out where the # are your job number.
- To check on the progress of your job you can use the command `squeue --job ######` which will tell you if your job is running, for how long, and what script. If your job has stopped it will either give you an error saying invalid job number or give you a blank output
![1](https://raw.githubusercontent.com/Putnam-Lab/Lab_Management/master/Bioinformatic_Resources/images/squeue.png)
- To check on all of your running jobs use `squeue -u username`
- If you know you messed up your script, you can always cancel a job with `scancel #####` using the job number
- If your job fails or you get any errors, they will be in the slurm-######.out file for that job number
