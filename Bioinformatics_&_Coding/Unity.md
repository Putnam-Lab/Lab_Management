# Best Practices for using Unity

## Read the docs!

The [Unity docs are super helpful](https://docs.unity.rc.umass.edu/documentation/). They give advice on how to use Unity, but also best practices for using high performance computing in general. I will reference these docs a lot below.

> [Unity FAQs](https://docs.unity.uri.edu/documentation/help/faq/)

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
3. /scratch/

What should go in each place:

1. /work/pi_hputnam_uri_edu/
   1. Make your own directory here (`mkdir username`) to store active working files, such as scripts, github repositories, 
   2. Conda environments can be created in the `/conda` directory, follow the guidance here: https://docs.unity.rc.umass.edu/documentation/software/conda/
   3. Programs you install yourself that would be useful to others in the lab can go in the `pgrams` directory
2. /project/pi_hputnam_uri_ed/
   1. Store any raw sequencing data in the `raw_sequencing_data` directory.
      1. **IMPORTANT** This data should be backed up, on NCBI SRA (documentation: ) and in the OSN Bucket (documentation to come)
      2. Also, when working with this data, you should copy it into scratch or create symbolic links (symlinks, `ln -s`) to this data instead of running code on it directly from this location to minimize the risk of overwriting or modifying the raw data in this location.
         1. Important guidance for using symlinks:
             1. **NEVER use `rm -r` to delete a symlink or directory containting symlinks, as it will *recursively delete the file the link points to***
    2. Make your own directory here (`mkdir username`) to store any large files created during analysis that you need to keep longer than /scratch/ allows (ones too large to keep in `/work/pi_hputnam_uri_edu/`). This can include compressed trimmed reads, bam files, assembled transcriptomes/genomes, annotation files, etc.
3. Scratch (see below)
   1. Everyone can make scratch directories to which they can output temporary processing files to (eg, trimmed reads, bam files, nextflow /work and /cache direcotories, etc)
       1. Depending on your preference, you may want to treat this like the directory in /work/pi_hputnam_uri_edu/ and do all your work from /scratch/ including writing scripts, etc, but make sure to regularly back up scripts and any files you need to keep to /work/pi_hputnam_uri_edu/ and github.

## Guidelines on scratch directories
   1. Follow the guidelines here: https://docs.unity.rc.umass.edu/documentation/managing-files/hpc-workspace/
   2. Making a scratch directory:
      1. `ws_allocate myscratch 30`
      2. This command will tell you the path of your new directory, which you can output files to or navigate to using `cd /path/to/scratch`
      3. If you want the directory to be shared:
         1. `ws_allocate -G pi_pi-username shared`
      4. For more options: `man ws_allocate`
   3. Getting a list of your active scratch directories:
      1. `ws_list`
   4. Extending a scratch directory:
      1. `ws_extend myscratch 30`
   5. Releasing a scratch directory when done:
      1. `ws_release myscratch`

## How to move files from one location in Unity to another

## How to move files from your computer to Unity and Vice Versa

## How to move files from Andromeda to Unity

https://zdellaert.github.io/ZD_Putnam_Lab_Notebook/Globus-Andromeda-Unity/

## Actually using unity to do bioinformatics

### Where can I find software to use on Unity?

1. https://docs.unity.uri.edu/documentation/help/faq/#software-and-tools
2. https://docs.unity.uri.edu/documentation/software/modules/ 

#### What if the software I want to use is not available as module on unity?
1. You can ask the Unity team via email or [slack](https://docs.unity.uri.edu/contact/community/) to install a module or update an existing module
2. Read this documentation on software management:
   1. https://docs.unity.uri.edu/documentation/software/

### How do I run analyses?

1. Use `sbatch` to submit jobs, very similar to andromeda
   1. https://docs.unity.uri.edu/documentation/jobs/sbatch/
2. Check the status of your job: `squeue --me`

### How do I run interactive jobs?

1. Use `salloc` to start interactive jobs, similar to the `interactive` command on andromeda
   1. https://docs.unity.uri.edu/documentation/jobs/salloc/

