# Best Practices for using Unity

## Read the docs!

The [Unity docs are super helpful](https://docs.unity.rc.umass.edu/documentation/). They give advice on how to use Unity, but also best practices for using high performance computing in general. I will reference these docs a lot below.

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
2. /project/pi_hputnam_uri_ed/ (44 TB capacity as of April 2025)
3. Scratch directories

What should go in each place:

1. **/work/pi_hputnam_uri_edu/**
   1. Make your own directory here (`mkdir username`) to store active working files, such as scripts, github repositories, output files (that aren't large)
   2. Conda environments can be created in the `/conda` directory, follow the guidance here: https://docs.unity.rc.umass.edu/documentation/software/conda/
   3. Programs you install yourself that would be useful to others in the lab can go in the `pgrams` directory
2. **/project/pi_hputnam_uri_ed/**
   1. Store any raw sequencing data in the `raw_sequencing_data` directory.
      1. **IMPORTANT** This data should be backed up, on NCBI SRA (documentation: [here](https://github.com/Putnam-Lab/Lab_Management/blob/f9615063146a65b8e4213aafe857917454406cc8/Bioinformatics_%26_Coding/Data_Mangament/SRA-Upload_Protocol.md)) and in the OSN Bucket (documentation to come)
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
2. Move the files including the md5 hasg files (see below)
3. In the new location, generate new md5 hash files for the transferred data and verify these are the same as the original md5s.
   1. Alternatively, use md5sum --check to check the md5 of the transferred files against the original md5 without having to create new md5 files:

        ```
        for file in *.md5
        do
          md5sum --check "${file}"
        done
        ```

### How to move files from one location in Unity to another

I recommend using globus to copy large amounts of files from /scratch/ to /project/ or vice versa. It can run without Unity being open on your computer, and checks the fidelity of all the files that are copied.

Unity documentation on globus: https://docs.unity.uri.edu/documentation/managing-files/globus/

### How to move files from your computer to Unity and Vice Versa

This page explains how to successfully use scp and rsync with Unity: https://docs.unity.uri.edu/documentation/managing-files/cli/

- `scp /Users/yourcomputer/Desktop/Data/sequencefileA.fq.gz username_uri_edu@unity.rc.umass.edu:/project/pi_hputnam_uri_ed/`
- `rsync -tlp /Users/yourcomputer/Desktop/Data/sequencefileA.fq.gz username_uri_edu@unity.rc.umass.edu:/project/pi_hputnam_uri_ed/`

Alternatively, there is handy graphical user interface available to download, upload, and view files: https://docs.unity.uri.edu/documentation/managing-files/ondemand/

### How to move files from Andromeda to Unity

Detailed instructions here: https://zdellaert.github.io/ZD_Putnam_Lab_Notebook/Globus-Andromeda-Unity/

1. You first need to activate the endpoint from Andromeda (see notebook post)
2. On Globus Connect in your browser (https://www.globus.org):
   1. Login
   2. Go to the File Manager and in the Collection field on the left, enter the personal endpoint string that was spit out by the globus setup above 
   3. Select acda5457-9c06-4564-8375-260ba428f22a (exact address of Unity) in the collection field on the right
   4. Select the files or folders you want to transfer from Andromeda to Unity and press ‘Start’.

## Actually using unity to do bioinformatics

### Where can I find software to use on Unity?

1. https://docs.unity.uri.edu/documentation/help/faq/#software-and-tools
2. https://docs.unity.uri.edu/documentation/software/modules/ 

#### What if the software I want to use is not available as module on unity?

1. You can ask the Unity team via email or [slack](https://docs.unity.uri.edu/contact/community/) to install a module or update an existing module
   1. [How to ask for help](https://docs.unity.uri.edu/documentation/help/asking-questions/)
2. Read this documentation on software management:
   1. https://docs.unity.uri.edu/documentation/software/

### How do I run analyses?

1. Use `sbatch` to submit jobs, very similar to andromeda
   1. https://docs.unity.uri.edu/documentation/jobs/sbatch/
2. Check the status of your job: `squeue --me`

### How do I run interactive jobs?

1. Use `salloc` to start interactive jobs, similar to the `interactive` command on andromeda
   1. https://docs.unity.uri.edu/documentation/jobs/salloc/

### How do I run Rstudio?

1. https://docs.unity.uri.edu/documentation/tools/r/
2. https://docs.unity.uri.edu/documentation/software/ondemand/