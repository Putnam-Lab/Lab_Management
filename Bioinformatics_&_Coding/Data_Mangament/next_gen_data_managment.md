Follow these guidelines from beginning all the way to ending a project as it pertains to the data you generate. Many thanks to the Steven Roberts lab [data management page](https://github.com/RobertsLab/resources/wiki/Data-Management) for inspiration.

## Metadata
You must always compile a description of the data you are collecting from the beginning and throughout the lifetime of your data. This information is necessary so that your data can be understood by others (either in this lab or collaborators), used again, and used in congruence with other datasets. Metadata includes descriptions of files because sequence file names may not always be intuitive, organizational structure of a dataset, dates and location of data collection/generation, sequencing company, run, sequencer, and lanes, and who is responsible for managing the data.

Metadata compilation should begin before sequencing and should be added to throughout the life of generating your sequence data. If you prepare your own libraries this is even more important. Metadata needs to include:
- Samples/individuals used for generating the sequence data. Use the names that match all of your other data
- Sample attribute information
- Library preparation methods, batches, dates, barcode & index sequences
- Information about the sequencing company and from the company, instrument specifications and run information such as how many lanes or flow cells used (you might have to specifically ask for this)
- File type generated, md5checksums
- Renamed files after demultiplexing (separating out into samples), average coverage and amount of reads, general quality of sequencing
![](https://raw.githubusercontent.com/Putnam-Lab/Lab_Management/master/Bioinformatics_%26_Coding/images/sequence-metadata.jpg)

## Data Storage, Archiving, and Monitoring

Primary data storage is on Google Drive. URI has unlimited storage on the Google Drive cloud, so all of our sequence files and their corresponding metadata file can live there. Create a folder for you data and upload it there.

Data in process can be stored on Bluewaves

Raw sequences should be uploaded to NCBI as an archive, as an effort to do open science and as an other backup space as sequences can be downloaded again. This should be after de-multiplexing so that samples and files can be matched, but before any analysis or quality trimming. See [SRA upload protocol](https://github.com/Putnam-Lab/Bioinformatic_Resources/blob/master/Data_Mangament/SRA-Upload_Protocol.md) for how to upload data.

If you get your data from the sequencing company on an external hard drive, it is usually an **unlabeled generic drive.** You need to immediately create a label for the drive and include that name in your metadata file. You are responsible for this hard drive.

If your data is shared with you via Illumina's BaseSpace, you need to be sure to download your data quickly because the data does not stay there for an indefinite amount of time.

**md5 checksum** Every time you download or move your data from one place to another you should check with the md5 checksum that your files have not been corrupted/changed. You will get an md5 sum (long string of characters that represents the complete contents of a file) from the sequencing company. You can use the command `md5sum filename` to generate an md5sum. IF your data has not changed, it will give the same string. Visually check that they are the same number. Do this as many times as you move your data. You can also generate an md5sum for files that don't have one in this way. Or you can use online generators such as [x](http://onlinemd5.com/).
