# Best Practices for using Unity

## Read the docs!

The [Unity docs are super helpful](https://docs.unity.rc.umass.edu/documentation/). They give advice on how to use Unity, but also best practices for using high performance computing in general. I will reference these docs a lot below.

## Setting Up an Account

Follow the instructions here: https://docs.unity.rc.umass.edu/documentation/getting-access/

Accounts for students, research staff, or collaborators
To create an account as a staff member, student, or collaborator, you must work with a PI who will grant you access to their PI group. To request to join your PI’s group, use the following instructions:

Go to the Unity Single Sign-on page.
Select your organization.
Use your organization login information to sign in.
Select Join an existing PI group and search for your PI in the field provided. The PI group name is generally in the form pi_piuser_school_edu.
Read and accept the EULA.
Submit your request by clicking Request Account and wait for your PI to approve it.

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
  3. Make your own directory here (`mkdir username`) to store any large files created during analysis that you need to keep longer than /scratch/ allows (ones too large to keep in `/work/pi_hputnam_uri_edu/`). This can include compressed trimmed reads, bam files, assembled transcriptomes/genomes, annotation files, etc.
3. Scratch (see below)
   1. Everyone can make scratch directories to which they can output temporary processing files to (eg, trimmed reads, bam files, nextflow /work and /cache direcotories, etc)
       1. Depending on your preference, you may want to treat this like the directory in /work/pi_hputnam_uri_edu/ and do all your work from /scratch/ including writing scripts, etc, but make sure to regularly back up scripts and any files you need to keep to /work/pi_hputnam_uri_edu/ and github.

## Guidelines on scratch directories
   1. Follow the guidelines here: https://docs.unity.rc.umass.edu/documentation/managing-files/hpc-workspace/
   2. Making a scratch directory:

## How to move files from one location in Unity to another

## How to move files from your computer to Unity and Vice Versa

## How to move files from Andromeda to Unity

https://zdellaert.github.io/ZD_Putnam_Lab_Notebook/Globus-Andromeda-Unity/
