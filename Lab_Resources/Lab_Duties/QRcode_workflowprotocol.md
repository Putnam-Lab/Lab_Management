---
layout: post
title: Putnam Lab QR code inventory 
date: '2024-04-26'
categories: Protocols
tags: [Inventory, lab organization, QR code Protocol]
---

Materials: 

- Computer
- Cryo babies printer paper
- Printer with black ink
- Scissors
- Metadata computer sets

# The goal


1. Each freezer and fridge has a QR code on the front that brings you to the inventory spreadsheet for the location you are looking at.
2. You will scan this QR code and search for what shelf you are looking for.
3. Once you find the box you are looking for you can can that box to get a full inventory metadata list for the project that the box you have falls under. 
4. You will be able to scan and update spreadsheets in real time if you remove samples. 
5. Additionally, there are three QR codes around each working location that you may scan when you are looking for something in that location.
6. You will also be able to update the inventory by scanning them as you use resources or restock anything!


## Metadata information
On metadata this info is mandatory. If information not avialble please put NA and try to find information annd fill in once aquired.

- The freezer or fridge sample is located including temperature
- Shelf/metal rack sample is in
- Box number sample is in
- Notes about the location and status of sample box


## Box Labelling

- Most importantly label the top and the side with your sample label.
- Print a QR code and place in bottom right corner of box lid and bottom box front
- Mandatory information on box:
	- Name of owner
	- Project name
	- Box number of project
	- QR code linking to metadata


## Putnam Lab Cold Storage Inventory

Please fill out information on the sheet of the fridge that samples are placed in. 
#### Scan QR code on fridge/freezer that will bring you directly to that fridge/freezer inventory"

- Name/description Ex- POC symbionts in 4% Formalin in DI
- 	Shelf: Ex-2
-  	Location on shelf: Ex-Right
-  Container: Freezer box
-  Contents: POC symbionts in 4% Formalin in DI
-  Species: Pocillopora
-  Project: POC Rapid
-  Person: Chloé
-  Date on container: 20240426
-  Date added/edited on sheet: 20240426
-  Flag: Chloé Gilligan
-  Notes: No notes
-  Link to sample metadata: (insert link)
-  QR code: that links to sample metadata

## Generating QR codes directly in google sheets

- Using [Putnam Lab Master Cold Storage Inventory](https://docs.google.com/spreadsheets/d/1IMYmnNsN4D9cFbgLVdGKz67Albb3LxEyBh2GMtREMPU/edit#gid=2010168651) there will be a column on the top right that states "Link to sample metadata"
- You will add the link for the metadata of the project that correlates with the samples in the box to this column
- To the right there will be a column that states QR code
- In order to generate a QR code you will first you will put the formula

> =ENCODEURL(A1)

You will replace A1 with the cell that contains the link to the sample metadata that you intend on making a QR code for.

Once that is completed you will now select the cell and in the fx bar at the top of the google sheets document. Enter the following command before the ENCODEURL(A1)

> ="https://api.qrserver.com/v1/create-qr-code/?size=150x150&data="&

The updated formula will look like this 

> ="https://api.qrserver.com/v1/create-qr-code/?size=150x150&data="&ENCODEURL(A1)

You are almost done! Now in order to turn this into a functioning very beautiful QR code you will add in the word "IMAGE" for a finished formula looking something like this 

> =IMAGE("https://api.qrserver.com/v1/create-qr-code/?size=150x150&data="&ENCODEURL(A1))
 At this point you should see a QR code 

You can select all the QR codes you would like and can also select their sample box label and can print all on cryogenic paper that will stick on the box.


Google docs QR code encoding info was derived from [this site](https://www.benlcollins.com/spreadsheets/qr-codes-in-google-sheets/)



### Workflow when creating a new box

- Enter sample information into project metadata
- Enter one project metadata on what fridge/freezer samples will go into and additionally, what shelf/metal rack samples are in.
- Place samples in box and write necessary information on box correlating to sample metadata
- Scan QR code of freezer/fridge and enter box into master cold storage inventory
- On master cold storage inventory, enter sample metadata link
- Make a QR code with this link directly onto the master cold storage inventory
- Print QR code and place onto sample boxes



