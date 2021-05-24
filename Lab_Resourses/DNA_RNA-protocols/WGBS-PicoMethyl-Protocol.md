# Protocol For Using the [Zymo Pico Methyl Seq Library Prep Kit](https://www.zymoresearch.com/products/pico-methyl-seq-library-prep-kit)

### Goal, Steps, and Explanation

Prepare sequenceable libraries of DNA that have been bisulfite converted for methylation data and subsequent whole genome bisulfite sequencing.

Prep Workflow Diagram from Zymo:

![1](https://raw.githubusercontent.com/meschedl/MESPutnam_Open_Lab_Notebook/master/images/PMS-workflow.png)

#### Protocol Steps

- **DNA Dilution**
  - First you dilute your extracted DNA to a total amount of 1 or 10ng. This kit takes a very low input of DNA.
- **Bisulfite Conversion**
  - This step bisulfite-treats the DNA. This fragments the DNA, makes it single stranded, and converts all **non-methylated** Cytosines into Uracils. This happens because you treat the DNA with sodium bisulfate, which through a chemical reaction de-aminates the Cytosines (removing the NH3 group) and turns them into Uracils (see image below). Methylated Cs stay as Cs. The DNA becomes single stranded because it no-longer pairs well with the opposite strand, Uracils are 1. usually only present in RNA, and 2. Thymine takes the place of them in DNA. T and A pair together, and C and G pair together.
  ![](https://raw.githubusercontent.com/meschedl/MESPutnam_Open_Lab_Notebook/master/images/Screen%20Shot%202021-04-25%20at%2011.25.48%20AM.png)
- **Post-Conversion Column Cleanup**
  - Sodium bisulfite is a harsh chemical that needs to be cleaned out of the DNA. This is why the DNA is treated with a Desulphonation Buffer in this step.
- **Amplification with Prep-Amp Primers**
  - Here, the converted DNA is randomly primed with PCR primers that have [degenerate bases](idtdna.com/pages/support/faqs/what-are-the-base-degeneracy-codes-that-you-use-(eg.-r-w-k-v-s)-) so that amplification takes place all across the genome. Random priming and PCR of the fragmented DNA results in pieces of DNA 150-600bp long. The polymerase in this step is able to recognize Uracil and thus is more sensitive than other polymerases used in PCRs. This is why it needs to be added in twice, after the 98 degree step, because it would break down at that temperature.
- **DNA Clean and Concentrator Cleanup**
  - This step removes leftover enzymes and buffers from the solution that would inhibit the next reaction.
- **1st Amplification**
  - This step again amplifies the DNA and adds on the specific adapters that allow the DNA to anneal to the flow-cell during sequencing. It is also at this step that the Uracil is converted to Thymines (maybe, could be the previous step, Zymo is not transparent about the method).
- **DNA Clean and Concentrator Cleanup**
  - This step removes leftover enzymes and buffers from the solution that would inhibit the next reaction.
- **2nd Amplification with Index Primers**
  - Another amplification is needed to add the barcoded indexes to the DNA, which allows for multiple samples to be pooled together for sequencing.
- **1X Bead Cleanup**
  - This step removes leftover enzymes and buffers and any remaining primer from the solution. What is left is the purified libraries.
- **Broad Range dsDNA Qubit Assay**
  - The libraries need to be quantified before sequencing, previous sequencing has shown that libraries with concentrations below 7ng/ul have not sequenced well and have been removed from the analysis. If you have a library with a low quant, it might be advantageous to re-do the library.
- **D5000 TapeStation Assay**
  - The libraries also need to be visualized for accurate size determination. Libraries that are being sequenced together should all be about the same size distribution. Previous sequencing has also shown that a library noticeably a different size from the others sequenced poorly and was removed from the analysis. If you have a library with a strange size, it might be advantageous to re-do the library.


### Materials and Equitpment

- [Pico Methyl Seq Library Prep Kit](https://www.zymoresearch.com/products/pico-methyl-seq-library-prep-kit)
- Thermocylers (Eppendorf Mastercycler Pro)
- [Microcentrifuge tubes](https://geneseesci.com/shop-online/product-details/24-281/olympus-1.7ml-microtubes-clear)
- Ethanol
- [Magnetic DNA binding beads](https://sequencing.roche.com/en-us/products-solutions/by-category/library-preparation/library-preparation-accessories/kapa-pure-beads/ordering.html)
- [Magnetic plate for 96 well plates](https://www.thermofisher.com/order/catalog/product/12331D#/12331D)
- [Multichannel and regular micropipettes](https://www.shoprainin.com/Products/Pipettes-and-Tips/Pipettes/Single-Channel-Manual-Pipettes/c/MTMP001)
- [Filter pipette tips](https://www.shoprainin.com/Products/Pipettes-and-Tips/Pipette-Tips/LTS-Pipette-Tips/c/MTBLTSTP001)
- [Broad range dsDNA Qubit assay](https://www.thermofisher.com/order/catalog/product/Q32850#/Q32850) and [tubes for Qubit use](https://www.fishersci.com/shop/products/axygen-pcr-tubes-0-5ml-flat-cap-10/p-4909458)
- [TapeStation4200](https://www.agilent.com/en/product/automated-electrophoresis/tapestation-systems/tapestation-instruments/4200-tapestation-system-228263) or other fragment analyzer
- [D5000 Tapestation Supplies](https://www.agilent.com/en/product/automated-electrophoresis/tapestation-systems/tapestation-dna-screentape-reagents/dna-screentape-analysis-228260)
- UDI Index primers: [see spreadsheet](https://github.com/Putnam-Lab/Lab_Management/blob/master/Lab_Resourses/DNA_RNA-protocols/Indexes_and_Barcodes/UDI_Index_Primer_Pairs_for_Pico_WGBS.csv)


**Note about Thermocycler Programs**

- All programs are under the "mes" login, password 888
- All programs are in the "PICO" folder
- Depending on input amount of DNA, you will use different AMP 1 and AMP 2 programs:
  - For 1ng DNA input: use "10 PICO METHYL AMP 1" and "12 PICO METHYL AMP 2"
  - For 10ng DNA input: use "8 PICO METHYL AMP 1" and "10 PICO METHYL AMP 2"

**Note about timing and planning this prep**

- Calculate how much DNA you're going to use before you start the prep, ideally for all samples, getting the volumes ready before you start
- Plan how you will index your samples before starting the preps. We have paired i5 and i7 indexes that go from 1-60. These indexes are combined into single tubes at 10uM concentration, where i7 1 is paired with i5 1 and so on. This is to help mitigate index hopping on patterned flow-cells, however rare it might be.
- The list of primer/indexes we have are [here](https://github.com/Putnam-Lab/Lab_Management/blob/master/Lab_Resourses/DNA_RNA-protocols/Indexes_and_Barcodes/UDI_Index_Primer_Pairs_for_Pico_WGBS.csv). Right now there are 1-60
- It can make things easier on you do the prep over 1.5 days: start the prep in the afternoon by doing the DNA dilution and bisulfite conversion. The BS converted DNA can be stable at 4 degrees C for 20 hours. So you can take it out of the thermocycler after the conversion program and store it in the fridge for the next day
- It will probably take you the entire second day if you do 10 or more samples (including the QC)
- While things are in the thermocycler, it can be helpful to start making the mixes for the next step and keep them on the ice bucket


### DNA Dilution - Plan this before starting your library prep

- Sample input to the Pico Methyl Seq kit has been somewhat optimized to work well with 10ng input, **but we used to do 1ng and that worked sometimes as well**
- Dilute extracted DNA to 1ng/ul or appropriate concentration so 10ng of DNA can be used to start the protocol without pipetting below 1ul and the input volume is no more than 20ul
- Use the same buffer that the extracted DNA is in (ex. 10mM Tris HCl)
- For example dilute every sample to 1ng/ul so 10ul can be used as the input of the prep
- [Video link](https://www.youtube.com/watch?v=byipduTsFmc&list=PLI8mZMNHcIVq9DFCOPksLhcch8UbJj4Pq&index=1)

### Bisulfite Conversion

- For each sample add 10ng of DNA to a PCR strip tube
- Increase the volume with 10mM Tris HCl or nuclease free water to 20ul for samples that need it (if you did 10ng at a concentration of 1ng/ul, then you'd have added 10ul of your sample and would need 10ul of 10mM Tris HCl)
- Add 130ul of Lightning Conversion Reagent to each tube. The total volume in each tube is now 150ul
- Vortex and spin down tubes
- Place tubes in the thermocycler, use the "mes" login, password 8888, folder "PICO". The program is titled "BS CONVERSION PICO." Program specifications:
  - 98 degrees C for 8 minutes
  - 54 degrees C for 60 minutes
  - 4 degrees C hold
- _Once the program is done, samples can be stored in the fridge for up to 20 hours, so you can safely stop here overnight_
- [Video link](https://www.youtube.com/watch?v=4ar8d5NeSks&list=PLI8mZMNHcIVq9DFCOPksLhcch8UbJj4Pq&index=2)

### Post-Conversion Column Cleanup

- Label 1 spin column and collection tube for each sample
- Add 600ul of M-Binding Buffer to each spin column
- Add the entire (150ul) bisulfite conversion reaction to their respective spin columns
- Cap and invert the spin columns (with collection tube attached) 5-10 times to well mix
- Centrifuge spin columns at 16,000rcf for 30 seconds [Video link](https://www.youtube.com/watch?v=XNcLVsSHGa4&list=PLI8mZMNHcIVq9DFCOPksLhcch8UbJj4Pq&index=3)
- Discard flow through in a liquid waste beaker, there is a hazardous waste container for Pico Methyl Seq Kit liquid waste in the SAA
- Add 100ul of M-Wash Buffer to each spin column
- Centrifuge spin columns at 16,000rcf for 30 seconds and discard flow through in waste container
- Add 200ul of L-Desulphonation Buffer to each spin column [Video link](https://www.youtube.com/watch?v=AhI5jI4g7PI&list=PLI8mZMNHcIVq9DFCOPksLhcch8UbJj4Pq&index=4)
- Let columns sit at room temperature for 15 minutes
- Warm the tube of DNA Elution Buffer in the thermomixer to 56 degrees C
- Label new 1.5mL tubes, 1 for each sample (temporary)
- Centrifuge spin columns at 16,000rcf for 30 seconds and discard flow through in waste container
- Add 200ul of M-Wash Buffer to each spin column
- Centrifuge spin columns at 16,000rcf for 30 seconds and discard flow through in waste container
- Add 200ul of M-Wash Buffer to each spin column
- Centrifuge spin columns at 16,000rcf for **2 minutes**
- Transfer spin columns to their new labeled 1.5mL tubes
- Discard flow through and collection tubes
- Add 8ul of warmed DNA Elution Buffer by dripping directly onto the filter of the spin columns [Video Link](https://www.youtube.com/watch?v=HTUPJwe1CIs&list=PLI8mZMNHcIVq9DFCOPksLhcch8UbJj4Pq&index=5)
- Incubate columns at room temp for 5 minutes
- Centrifuge the spin columns in tubes at 16,000 rcf for 30 seconds
- Discard spin columns and keep 1.5mL tubes on ice
- Check if all tubes have the same volume (greater elution volume may cause library prep failure)

### Amplification with Prep-Amp Primers

- Thaw needed reagents from Pico Methyl Seq reagent box in the -20:
  - 5X PrepAmp Buffer
  - 40uM PrepAmp Primer
  - PrepAmp Pre-mix
  - PrepAmp Polymerase
- Determine _n_ number: number of samples + % error (~5%)
- Create Priming Master Mix (PMM) on ice:
  - 2ul 5X PrepAmp Buffer * _n_ =
  - 1ul 40uM PrepAmp Primer * _n_ =
- Vortex and spin down PMM and keep on ice
- Create PrepAmp Master Mix (PAMM) on ice:
  - 1ul 5X PrepAmp Buffer * _n_ =
  - 3.75ul PrepAmp Pre Mix * _n_ =
  - 0.3ul PrepAmp Polymerase * _n_ =
- Vortex and spin down PAMM and keep on ice
- Create "diluted" PrepAmp Polymerase mix to avoid adding less than 0.5ul during protocol (original protocol asks you to add 0.3ul to the tubes in the thermocycler, sometimes that small of an amount does not come out of the tip so you can add DNA elution buffer to the enzyme to pipette 0.5ul). Make this on ice:
  - 0.3ul PrepAmp Polymerase * _n_ =
  - 0.2ul DNA Elution Buffer * _n_ =
- Pipette mix and spin down the diluted polymerase and keep on ice
- Make new strip tubes for each one of your samples
- Add 7ul of bisulfite converted sample to their respective strip tube. This should be about all the liquid there is in the final tubes from the previous cleanup
- Add 3ul of PMM to each tube
- [Video Link](https://www.youtube.com/watch?v=k5ApfvSbhAQ&list=PLI8mZMNHcIVq9DFCOPksLhcch8UbJj4Pq&index=6)
- Vortex tubes, spin them down, and place them in the thermocyler in the "PICO METHYL PRIMING" program under the MES login (password 8888)
- During the program there will be two holds during which you will have to add things to your samples:
  - 98 for 2 minutes
  - 8 degrees for 1 minute
  - 8 degree hold
  - **During hold, open the machine and take out the tubes (don't press a button yet!) vortex and spin the tubes down, add 5.05µl PAMM to each tube, vortex and spin the tubes down again, and place back in thermocycler and press enter on the machine, [Video link](https://www.youtube.com/watch?v=P2noo1yXC3g&list=PLI8mZMNHcIVq9DFCOPksLhcch8UbJj4Pq&index=7)**
  - 8 degrees for 4 minutes
  - 16 degrees for 1 minute with 3% ramp rate
  - 22 degrees for 1 minute with 3% ramp rate
  - 28 degrees for 1 minute with 3% ramp rate
  - 36 degrees for 1 minute with 3% ramp rate
  - 36.5 degrees for 1 minute with 3% ramp rate
  - 37 degrees for 8 minutes
  - repeat back from the first step one time through again
- **During hold, again open the machine and take out the tubes without pressing a button, vortex and spin them down, then add 0.5ul of the diluted PrepAmp Polymerase to each tube then, vortex and spin them down again, and place back into thermocycler and press enter on the program**
- It should take 20ish minutes between the two holds in the program
- When the program is done take out the tubes and place them on ice

### DNA Clean and Concentrator Cleanup (DCC)

- Make new 1.5mL tubes for each of your samples
- Add 108.85ul of DNA binding buffer to each of the new 1.5mL tubes. This is a 7:1 ratio of the amount of liquid from the PrepAmp Priming reaction
- Set the thermomixer to 56 degrees C and place the DNA Elution Buffer in to warm
- Add the total volume of the strip tubes from the PrepAmp Priming reaction to their respective 1.5mL tube. This should be 15.55ul but there may be less because the lid temperature on the theremocycler program is low and does not prevent evaporation. [Video ink](https://www.youtube.com/watch?v=lDLQGq6IPBY&list=PLI8mZMNHcIVq9DFCOPksLhcch8UbJj4Pq&index=8)
- Vortex and spin down the 1.5mL tubes to mix
- Set up a spin column and a collection tube for each sample (same as before)
- Add the total volume of the 1.5mL tube to their respective spin column. [Video link](https://www.youtube.com/watch?v=lUlZnIVWIvg&list=PLI8mZMNHcIVq9DFCOPksLhcch8UbJj4Pq&index=9)
- Centrifuge the spin columns at 16,000rcf for 30 seconds
- Discard the flowthough in the same waste beaker or container as above
- Add 200ul of DNA Wash Buffer to each spin column
- Centrifuge the spin columns at 16,000rcf for 30 seconds and discard the flow through
- Add 200ul of DNA Wash Buffer to each spin column
- Centrifuge the spin columns at 16,000rcf for 2 minutes
- Make new 1.5mL tubes for each sample
- Transfer spin column to new 1.5mL tube and discard the collection tube
- Add 12ul of warmed DNA elution buffer directly by dripping to each spin column
- Incubate spin columns at room temp for 5 minutes
- Centrifuge spin columns at 16,000rcf for 30 seconds
- Discard spin columns and keep elution tubes on ice

### 1st Amplification

- Thaw reagents needed on ice:
  - (2X) Library Amp Master Mix
  - Library Amp Primers (10uM)
- Make new strip tubes for each of the samples
- Make the 1st Amplification Master Mix (AMM) on ice:
  - 12.5ul Library Amp Mix (2X) * _n_ =
  - 1ul Library Amp Primers (10uM) * _n_ =
- Vortex, spin down, and place AMM on ice
- Add 13.5ul of AMM to each of the new strip tubes on ice
- Add 11.5ul of sample from the DCC elution to their respective strip tube
- Vortex and spin down tubes
- Place in the thermocycler and choose the program you need, for 1ng input DNA use "10 PICO METHYL AMP 1", for 10ng input DNA use "8 PICO METHYL AMP 1"
- Once the program is done take out the tubes and place on ice
- [Video link](https://www.youtube.com/watch?v=Jy03aMCKW3U&list=PLI8mZMNHcIVq9DFCOPksLhcch8UbJj4Pq&index=10)

### DNA Clean and Concentrator Cleanup (DCC)

- Make new 1.5mL tubes for each of your samples
- Add 175ul of DNA binding buffer to each of the new 1.5mL tubes. This is a 7:1 ratio of the amount of liquid from the 1st Amplification reaction
- Set the thermomixer to 56 degrees C and place the DNA Elution Buffer in to warm
- Add the total volume of the strip tubes from the PrepAmp Priming reaction to their respective 1.5mL tube. This should be 25ul
- Vortex and spin down the 1.5mL tubes to mix
- Set up a spin column and a collection tube for each sample (same as before)
- Add the total volume of the 1.5mL tube to their respective spin column
- Centrifuge the spin columns at 16,000rcf for 30 seconds
- Discard the flowthough in the same waste beaker or container as above
- Add 200ul of DNA Wash Buffer to each spin column
- Centrifuge the spin columns at 16,000rcf for 30 seconds and discard the flow through
- Add 200ul of DNA Wash Buffer to each spin column
- Centrifuge the spin columns at 16,000rcf for 2 minutes
- Make new 1.5mL tubes for each sample
- Transfer spin column to new 1.5mL tube and discard the collection tube
- Add 12.5ul of warmed DNA elution buffer directly by dripping to each spin column
- Incubate spin columns at room temp for 5 minutes
- Centrifuge spin columns at 16,000rcf for 30 seconds
- Discard spin columns and keep elution tubes on ice

### 2nd Amplification

- Thaw the Library Amp Master Mix (2X) on ice
- Thaw the planned paired indexing primers for your samples
- Make new strip tubes for each of the samples
- In each strip tube combine:
  - 12ul of DNA from the above DCC step
  - 13ul of Library Amp Master Mix
  - 1ul of the combined i7 and i5 primer pair
- For adding these I usually make a table where each addition can be highlighted after each pipette, ex:

|sample|vol DNA| vol LibAmp MM| vol primer pair|
|---|---|---|---|---|
|1|12|13|1ul index 1|
|2|12|13|1ul index 2|

- Vortex and spin down tubes after all components are added to each tube
- Place tubes in the thermocycler and choose the program for your samples: for 1ng input DNA use "12 PICO METHYL AMP 2", for 10ng input DNA, use "10 PICO METHYL AMP 2"
- After the program is done, place the samples on ice
- [Video link](https://www.youtube.com/watch?v=Vsn9XDs0Sok&list=PLI8mZMNHcIVq9DFCOPksLhcch8UbJj4Pq&index=11)

### 1X Bead Clean Up

- Take KAPA Pure Beads out of the refrigerator ~30 minutes before use to get to room temperature. Swirl the bottle to mix the beads but don't vortex
- Make fresh 80% ethanol for the day, using 100% ethanol (in the flammable cabinet) and ultrapure water
- When beads are at room temp, add 25ul (equal volume) of beads to each strip tube. Pipette slowly because the bead solution is very viscous. Pipette mix the bead-sample mix at least 10 times until homogeneously brown. [Video link](https://www.youtube.com/watch?v=M-c4QewJUeg&list=PLI8mZMNHcIVq9DFCOPksLhcch8UbJj4Pq&index=12)
- Set up the rotating shaker on the Qubit bench and place the strip tubes on the shaker, rotating at 200rpm for 15 minutes
- Use the grey long 24-spot magnet on the Putnam bench
- At the 15 minutes on the shaker, place the tubes on the magnet rack and wait until the liquid goes clear and the beads have gone to the magnet
- Using a p200 pipette set to 45ul, carefully remove the clear supernatant from each tube without disturbing the beads and discard in a waste trough
- Add 200ul of 80% ethanol to each tube
- Remove the ethanol (200ul) from each tube carefully, without disturbing the beads, and discard the liquid in the waste trough
- Add another 200ul of 80% ethanol to each tube. [Video link](https://www.youtube.com/watch?v=O9C89M3rSvg&list=PLI8mZMNHcIVq9DFCOPksLhcch8UbJj4Pq&index=13)
- Remove the ethanol (200ul) from each tube carefully, without disturbing the beads, and discard the liquid in the waste trough
- Use a p20 set to 20ul to remove any residual liquid in each tube
- Let tubes air dry for ~1 more minute
- Take the tubes off the magnet
- Resuspend the beads in 15ul of DNA elution buffer: Pipette directly onto the bead patch over and over until the beads go into solution
- Place the tubes back on the shaker at 200rpm for 5 minutes
- After the 5 minutes place the tubes back on the magnet plate and wait until the liquid goes clear and the beads are to the magnet
- Make new strip tubes (final tubes) that are well labeled for your libraries (sample name, date, "lib" initials)
- Freeze at -20 degrees C if not doing QC on the same day, if QCing next, place on ice

### Broad Range dsDNA Qubit Assay

- Use the [protocol for the Qubit Assay](https://github.com/meschedl/PPP-Lab-Resources/blob/master/Protocols/Qubit-Assay-Protocol.md)
- Make sure to read each sample twice and use the average as the DNA library concentration

### D5000 TapeStation Analysis

- If you get Qubit values for each of your libraries you should run them on the TapeStation to access the library size. If one library had too low DNA concentration the prep probably failed somewhere and there is no need to use the TS on that library
- Use the [D5000 TapeStation protocol](https://meschedl.github.io/MESPutnam_Open_Lab_Notebook/DNA-Tapestation/) to see the size range of your completed libraries. **Make sure all reagents say D5000 on them**
- Make sure not is one library is drastically a different size distribution than others, that is probably not good to sequence

Example TS trace for a good and sequenced WGBS library:

![](https://raw.githubusercontent.com/Putnam-Lab/Lab_Management/master/images/good-WGBS.png)
