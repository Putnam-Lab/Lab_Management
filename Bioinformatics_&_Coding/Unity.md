# Best Practices for using Unity

1. [Best Practices for using Unity](#best-practices-for-using-unity)
   1. [Read the docs!](#read-the-docs)
   2. [Setting Up an Account](#setting-up-an-account)
   3. [Connecting to Unity](#connecting-to-unity)
   4. [What should go where](#what-should-go-where)
   5. [Guidelines on scratch directories](#guidelines-on-scratch-directories)
   6. [Moving files within, to, and from Unity](#moving-files-within-to-and-from-unity)
      1. [How to move files from one location in Unity to another](#how-to-move-files-from-one-location-in-unity-to-another)
      2. [How to move files from your computer to Unity and Vice Versa](#how-to-move-files-from-your-computer-to-unity-and-vice-versa)
      3. [How to move files from Andromeda to Unity](#how-to-move-files-from-andromeda-to-unity)
   7. [Actually using unity to do bioinformatics](#actually-using-unity-to-do-bioinformatics)
      1. [1. Here's a Handy reference for bash commands](#1-heres-a-handy-reference-for-bash-commands)
      2. [2. Where can I find software to use on Unity?](#2-where-can-i-find-software-to-use-on-unity)
      3. [3. How do I run analyses?](#3-how-do-i-run-analyses)
      4. [4. How do I run interactive jobs?](#4-how-do-i-run-interactive-jobs)
      5. [5. How do I run Rstudio?](#5-how-do-i-run-rstudio)

## Read the docs!

The [Unity docs are super helpful](https://docs.unity.rc.umass.edu/documentation/). They give advice on how to use Unity, but also best practices for using high performance computing in general. I will reference these docs a lot below.

Intro to Unity [Powerpoint](https://its.uri.edu/wp-content/uploads/Intro-to-Bioinformatics-on-Unity-I.pdf) and [Video](https://docs.unity.rc.umass.edu/events/2024/spring-onboarding/) from URI HPC

We also have URI-specific Unity docs [here](https://its.uri.edu/research-computing/using-unity/)

> [Unity FAQs](https://docs.unity.uri.edu/documentation/help/faq/)

> [Unity Troubleshooting](https://docs.unity.uri.edu/documentation/help/troubleshooting/)

## Setting Up an Account

Follow the instructions here: https://docs.unity.rc.umass.edu/documentation/getting-access/

Accounts for students, research staff, or collaborators
To create an account as a staff member, student, or collaborator, you must work with a PI who will grant you access to their PI group. To request to join your PI’s group, use the following instructions:

1. Go to the Unity Single Sign-on page.
2. Select your organization.
3. Use your organization login information to sign in.
4. Select Join an existing PI group and search for your PI in the field provided. The PI group name is generally in the form pi_piuser_school_edu.
5. Read and accept the EULA.
6. Submit your request by clicking Request Account and wait for your PI to approve it.

## Connecting to Unity

1. Follow the guidance on ssh keys [here](https://docs.unity.uri.edu/documentation/connecting/ssh/) to access Unity from your terminal
2. Alternatively, use the web interface: https://docs.unity.uri.edu/documentation/connecting/ondemand/

## What should go where

We have three main places to store data, scripts, github repositories, output files, and more.

1. /work/pi_hputnam_uri_edu/ (3 TB capacity as of April 2025)
2. /project/pi_hputnam_uri_edu/ (44 TB capacity as of April 2025)
3. Scratch directories

What should go in each place:

1. **/work/pi_hputnam_uri_edu/**
   1. Make your own directory here (`mkdir username`) to store active working files, such as scripts, github repositories, output files (that aren't large)
   2. Conda environments can be created in the `conda` directory, follow the guidance here: https://docs.unity.rc.umass.edu/documentation/software/conda/
   3. Programs you install yourself that would be useful to others in the lab can go in the `pgrams` directory
2. **/project/pi_hputnam_uri_edu/**
   1. Store any raw sequencing data in the `raw_sequencing_data` directory.
      1. **IMPORTANT** This data should be backed up, on NCBI SRA (documentation: [here](https://github.com/Putnam-Lab/Lab_Management/blob/f9615063146a65b8e4213aafe857917454406cc8/Bioinformatics_%26_Coding/Data_Mangament/SRA-Upload_Protocol.md)) and in the OSN Bucket (documentation: [here](https://github.com/Putnam-Lab/Lab_Management/blob/master/Bioinformatics_%26_Coding/Unity_OSN_Bucket.md))
      2. Also, when working with this data, you should either:
         1. copy it into scratch
         2. or create symbolic links (symlinks, `ln -s`) to this data instead of running code on it directly from this location to minimize the risk of overwriting or modifying the raw data in this location.
            1. Important guidance for using symlinks:
                1. **NEVER use `rm -r` to delete a symlink or directory containting symlinks, as it will *recursively delete the file the link points to***. Go into the directory containig the symlinks, and delete them using `rm`, just don't use `rm -r`. 
    2. Make your own directory here (`mkdir username`) to store any large files created during analysis that you need to keep longer than /scratch/ allows (ones too large to keep in `/work/pi_hputnam_uri_edu/`). This can include compressed trimmed reads, bam files, assembled transcriptomes/genomes, annotation files, etc.
3. **Scratch (see below)**
   1. Everyone can make scratch directories to which they can output temporary processing files (eg, trimmed reads, bam files, nextflow /work and /cache direcotories, etc)
   2. Depending on your preference, you may want to treat this like the directory in /work/pi_hputnam_uri_edu/ and do all your work from /scratch/ including writing scripts, etc, but make sure to regularly back up scripts and any files you need to keep to /work/pi_hputnam_uri_edu/ and github.

## Guidelines on scratch directories

My simple guidelines below are based on the guidelines here: https://docs.unity.rc.umass.edu/documentation/managing-files/hpc-workspace/. I recommend reading that page for more info about creating shared scratch directories, getting email alerts, and more.

You only need one scratch directory (or if you want one per project that's okay too), you do not need a new one for each job. I believe every user can have up to 15 TB in scratch total

   1. Making a scratch directory:
      1. Run this command from the terminal in Unity:
         1. `ws_allocate myscratch 30`
      2. This command will tell you the path of your new directory (if you forget it, see `ws_list` below)
         1. To navigat to your directory, use  `cd /path/to/scratch`
         2. To output files to this direcotry in scripts, use this path
      3. You only need to do this once.
      4. For more options: `man ws_allocate`
   2. Getting a list of your active scratch directories:
      1. `ws_list` will tell you all scratch direcotries you have active, how many days are left, and their paths
   3. Extending the time limit of a scratch directory:
      1. You can extend a scratch directory 5 times, for a total of 150 days. 
      2. `ws_extend myscratch 30`
   4. Releasing a scratch directory when done:
      1. `ws_release myscratch`

## Moving files within, to, and from Unity

1. First, generate a [md5 hash file](https://www.geeksforgeeks.org/md5sum-linux-command/) for each large file in the original location
   1.  ```
        for fastq in *.gz
        do
          md5sum "${fastq}" >> raw-fastq-checksums.md5
        done
        ```
2. Move the files including the md5 hash files (see below)
3. In the new location, generate new md5 hash files for the transferred data and verify these are the same as the original md5s.
   1. Alternatively, use md5sum --check to check the md5 of the transferred files against the original md5 without having to create new md5 files:

        ```
        for file in *.md5
        do
          md5sum --check "${file}"
        done
        ```

### How to move files from one location in Unity to another

I recommend using [globus (info here)](https://docs.unity.uri.edu/documentation/managing-files/globus/) to copy large amounts of files from /scratch/ to /project/ or vice versa. It can run without Unity being open on your computer, and checks the fidelity of all the files that are copied. `mv` command also works, but will take a long time between /scratch/ to /project/ or vice versa because they are stored on different physical drives.

### How to move files from your computer to Unity and Vice Versa

This page explains how to successfully use scp and rsync with Unity: https://docs.unity.uri.edu/documentation/managing-files/cli/

- `scp /Users/yourcomputer/Desktop/Data/sequencefileA.fq.gz username_uri_edu@unity.rc.umass.edu:/project/pi_hputnam_uri_edu/`
- `rsync -tlp /Users/yourcomputer/Desktop/Data/sequencefileA.fq.gz username_uri_edu@unity.rc.umass.edu:/project/pi_hputnam_uri_edu/`

Alternatively, there is handy graphical user interface available to download, upload, and view files: https://docs.unity.uri.edu/documentation/managing-files/ondemand/

### How to move files from Andromeda to Unity

Detailed instructions here: https://github.com/zdellaert/ZD_Putnam_Lab_Notebook/blob/master/_posts/2025-02-19-Globus-Andromeda-Unity.md

1. You first need to set up globus authentication from Andromeda and link it to your URI SSO account (see notebook post)
2. Activate the endpoint from Andromeda
   1. ```
      screen #start screen session so that you can continue to use Globus if your VPN disconnects
      interactive #this has a limit of 8 hours, FYI
      module load GlobusConnectPersonal/3.2.0
      globusconnectpersonal -start &
      # Detach from screen by doing the keystroke "Ctrl-a + d", this will allow Globus to keep running if andromeda gets disconnected
      ```
3. On Globus Connect in your browser (https://www.globus.org):
   1. Login
   2. Go to the File Manager and in the Collection field on the left, enter the personal endpoint string that was spit out by the globus setup above 
   3. Select acda5457-9c06-4564-8375-260ba428f22a (exact address of Unity) in the collection field on the right
   4. Select the files or folders you want to transfer from Andromeda to Unity and press ‘Start’.

## Actually using unity to do bioinformatics

### 1. [Here's](https://github.com/Putnam-Lab/Lab_Management/blob/master/Bioinformatics_%26_Coding/Bash_Commands.md) a Handy reference for bash commands

### 2. Where can I find software to use on Unity?

1. Use Unity onDemand for a really quick GUI to find Modules that are installed
   1. https://ood.unity.rc.umass.edu/pun/sys/module-explorer
   2. <img src="https://github.com/Putnam-Lab/Lab_Management/blob/master/Bioinformatics_%26_Coding/images/ModuleExplore.png?raw=true" width="300"/>
3. https://docs.unity.uri.edu/documentation/help/faq/#software-and-tools
4. https://docs.unity.uri.edu/documentation/software/modules/
   1. URI Specific modules
      1. More modules can be found by using `module load uri/main`. The modules under the heading `/modules/uri_modules/all` should closely match the naming scheme used on Andromeda. Note that these modules will not run on the login nodes because they are optimized for the compute nodes. If you receive a message like Illegal Instruction, then this is likely the issue.
      2. https://its.uri.edu/research-computing/unity-software-and-modules/

#### 2.5 What if the software I want to use is not available as module on unity?

1. You can ask the Unity team via email or [slack](https://docs.unity.uri.edu/contact/community/) to install a module or update an existing module
   1. [How to ask for help](https://docs.unity.uri.edu/documentation/help/asking-questions/)
2. Read this documentation on software management:
   1. https://docs.unity.uri.edu/documentation/software/
3. If you're comfortable, you can try installing it yourself.
   1. Conda environments can be created in the `/work/pi_hputnam_uri/conda` directory, follow the guidance here: https://docs.unity.rc.umass.edu/documentation/software/conda/
   2. Example of creating a conda environment:
   3. ```
      # enter interactive session
      salloc

      # load conda
      module load conda/latest

      # create and activate environment
      conda create --prefix /work/pi_hputnam_uri_edu/conda/envs/env-broccoli python=3.8 ete3
      conda activate /work/pi_hputnam_uri_edu/conda/envs/env-broccoli

      # clone broccoli repo into environment
      cd /work/pi_hputnam_uri_edu/conda/envs/env-broccoli
      git clone https://github.com/rderelle/Broccoli.git
      cd Broccoli

      # check that the install is sucessful by running the help command
      python broccoli.py -help

      # Make a symlink (shortcut) to home directory
      ln -s /work/pi_hputnam_uri_edu/conda/envs/env-broccoli/Broccoli/broccoli.py ~/broccoli.py

      # now it can run in any directory via
      python ~/broccoli.py -help
      ```

### 3. How do I run analyses?

1. Use `sbatch` to submit jobs, very similar to andromeda
   1. https://docs.unity.uri.edu/documentation/jobs/sbatch/
   2. “Selecting a appropriate partition for your job:
       - A list of partitions available on Unity is available [here](https://docs.unity.uri.edu/documentation/cluster_specs/partitions/).
       - Use `unity-slurm-partition-usage` to see how busy partitions are.
       - Short: For jobs which are 2 days or less, specify `--partition=cpu` (or `--partition=gpu` if requesting a GPU)
       - Long: For jobs which are more than 2 days, specify `-q long` as well
       - Preempt: For jobs which require less than 2 hours, specify `--partition=cpu-preempt` (or `--partition=gpu-preempt` if requesting a GPU).
          - If your jobs run longer than two hours, higher priority job may preempt (terminate and requeue) it after two hours.
       - QoS: For jobs shorter than 4 hours, you can boost the job priority for one small job by adding the parameter `--qos=short` to your job batch script or `salloc` / `sbatch` command. See [this page](https://docs.unity.rc.umass.edu/news/2023/07/feature-announcements/#new-short-qos) for details.
       - Note that not all GPU types are available in every partition. Modify the suggestions for partitions as needed.”
2. Check the status of your job: `squeue --me`

### 4. How do I run interactive jobs?

1. Use `salloc` to start interactive jobs, similar to the `interactive` command on andromeda
   1. https://docs.unity.uri.edu/documentation/jobs/salloc/

### 5. How do I run Rstudio?

1. https://docs.unity.uri.edu/documentation/tools/r/
2. https://docs.unity.uri.edu/documentation/software/ondemand/
