---
layout: post
title: Total Protein Protocol
date: '2024-04-25'
categories: Protocols
tags: protein, coral, physiology
projects: E5, Putnam Lab
---

# Total Protein Protocol
both soluble and insolube protein  

Original: 20200101    
Last Revised: 20240425

NOTE: If using the [Pierce Rapid Gold BCA Protein Assay Kit](https://www.thermofisher.com/order/catalog/product/A53225) from Thermo Scientific see manual [here](https://www.thermofisher.com/document-connect/document-connect.html?url=https://assets.thermofisher.com/TFS-Assets%2FLSG%2Fmanuals%2FMAN0017135_PierceRapidGoldBCAProteinAssayKit_UG.pdf)

Contents  
- [**Materials**](#Materials)    
- [**Protocol**](#Protocol)  
- [**Standard Table**](#Table)  
- [**References**](#References)  
 
1. <a name="Materials"></a> **Materials**
    - [Pierce BCA Protein Assay Kit from Thermo Scientific](https://www.thermofisher.com/order/catalog/product/23225?SID=srch-srp-23225).  
    - 96 Well plate
    - Incubator or Waterbath at 37°C
    - Plate reader Spectrophotometer
    - 1M NaOH
    - 0.1M HCl
    - Pipettes P10, P200, P1000 and tips
    - 1.5ml microfuge tubes
    - DI water
 

2. <a name="Protocol"></a> **Protocol** 

[Pierce BCA Protein Assay Kit](/Users/hputnam/MyProjects/urol-e5/protocols/images/Pierce_BCA_Protein_Assay_UG.pdf). 


![Protein kits](https://github.com/Putnam-Lab/Lab_Management/blob/master/images/BCAproteinkit.HEIC)

**Total Protein (Soluble and Insoluble) Adult Tissue Sample Preparation**  
1. Thaw the 500 μL homogenate aliquot.  
2. Vortex to re-suspend the symbiont cell pellet.   
5. Add 10 μL of 1M NaOH (pH should be ~10) to the tube.  
6. Pipette a very small amount of sample onto pH paper to confirm the pH ~10.  
7. Incubate the tube at 50&deg;C for 4 hours shaking at 300 rpm.  
8. Add 280 μL of 0.1M HCl to the tube to neutralize the sample. Add this volume in small amounts and continue to test the pH of the sample using pH paper. pH needs to be at 7.0 to move onto the next steps.  
9. **_It is critical to know exactly how much volume was added_**

**Soluble Protein ONLY Adult Tissue Sample Preparation** 

This is often used in conjuncttion with the [TAC protocol](https://github.com/Putnam-Lab/Lab_Management/blob/master/Lab_Resources/Physiology_Protocols/Total-Antioxidant-Capacity-Protocol.md). If so, use the same thawed homogenate from the 'Sample Preparation' section of that protocol. 

If you want ONLY host, use centrifuge steps to isolate the host tissue from the symbiont cells. In the past, our group has used the steps from the 'Sample Preparation' of the TAC protocol. 

If you want both host and symbiont cells, do not centrifuge to separate. Instead vortex to homogenize the thawed tissue sample and use 25 uL of this homogenate for the steps in the 'Microplate Procedure' section. 


1.  <a name="Table"></a> **Standard Table**  
**Preparation of Diluted Albumin (BSA) Standards**    
*These standards can be made during the 4 hour incubation period in the sample preparation section.*
1. Use the following table as a guide to prepare a set of protein standards. For this project we will use the microplate procedure. Diluent is DI water Type II. Each vial will be a sterile 1.5 mL microcentrifuge tube. Label the cap of the microcentrifuge tube with the Vial ID ("A", "B", etc.).  

| Vial | Volume of Diluent (μL) | Volume of Source of BSA (μL) | Final BSA Concentration (μg/mL) |
|------|------------------------|------------------------------|---------------------------------|
| A    | 0                      | 300 of Stock                 | 2000                            |
| B    | 125                    | 375 of Stock                 | 1500                            |
| C    | 325                    | 325 of Stock                 | 1000                            |
| D    | 175                    | 175 of vial B dilution       | 750                             |
| E    | 325                    | 325 of vial C dilution       | 500                             |
| F    | 325                    | 325 of vial E dilution       | 250                             |
| G    | 325                    | 325 of vial F dilution       | 125                             |
| H    | 400                    | 100 of vial G dilution       | 25                              |
| I    | 400                    | 0 (Blank)                    | 0                               |

**Preparation of the BCA Working Reagent (WR)**   
1. Use the following formula to determine the total volume of WR required:  
(# standards + # unknowns) x (# replicates) x (volume of WR per sample) = total volume WR required  
For this project, we will use 9 standards and 200 μL of WR is required for each sample in the microplate procedure.   
> *(9 standards + # samples) x (2 replicates) x (200 μL of WR) = total volume WR required*  
(9 standards + 10 samples) x (2 replicates) x (200 μL of WR) = 7,600 μL WR  
(9 standards + 20 samples) x (2 replicates) x (200 μL of WR) = 11,600 μL WR  
(9 standards + 40 samples) x (2 replicates) x (200 μL of WR) = 19,600 μL WR  

2. Prepare WR by mixing 50 parts of BCA Reagent A with 1 part of BCA Reagent B (50:1, Reagent A:B) in a sterile glass bottle of the appropriate size based on how many samples are going to be run.  

**Microplate Procedure (Sample to WR ratio = 1:8) from Pierce BCA Protein Assay Kit:**  
1. Pipette 25 μL of each standard or unknown sample into microplate wells in duplicate.  
2. Add 200 μL of the working reagent (WR) to each well and mix the plate thoroughly on a plate shaker for 30 seconds.  
3. Cover the plate and incubate at 37&deg;C for 30 minutes.  
4. Cool plate to RT. Measure the absorbance at or near 562 nm on a plate reader Spectrophotometer. Wavelengths from 540–590 nm have been used successfully with this method. ![Spectrophotometer](https://github.com/Putnam-Lab/Lab_Management/blob/master/images/Spectrophotometer.HEIC)
5. Subtract the average 562 nm absorbance measurement of the Blank standard replicates from the 562 nm measurements of all other individual standard and unknown sample replicates.  
6. Pepare a standard curve by plotting the average Blank-corrected 562nm measurement for each BSA standard vs. its concentration in μg/mL. Use the standard curve to determine the protein concentration of each unknown sample.  
