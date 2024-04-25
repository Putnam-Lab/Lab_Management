---
layout: post
title: Chlorophyll Protocol
date: '2020-01-01'
categories: Protocols
tags: chlorophyll, physiology
projects: E5, Putnam Lab
---

# Quantifying Chl-a and Chl-c2 Concentration in Symbiodiniaceae from coral tissues

Original: 20200101 E5 Protocol
Last Revised: 20220719 DMBP

Contents  
- [**Materials**](#Materials)   
- [**Protocol**](#Protocol)  
    - [**Calculating Chlorophyll Concentration**](#Calc)  
    - [**Waste Disposal**](#Waste)
- [**References**](#References)  

**1. <a name="Materials"></a> Materials**
-   100% acetone
- 	flammable safe fridge 4°
- 	**quartz** 96 well plate
-   Microcentrifuge
- 	1ml pipette and tips
-   1.5 ml microfuge tubes
-   Plastic funnel
-   Qtips
-   Labeling tape
-   [Synergy HTX Multi-Mode Microplate Reader](https://www.biotek.com/products/detection-multi-mode-microplate-readers/synergy-htx-multi-mode-reader/)
-   [Gen5 Software](https://www.biotek.com/products/software-robotics-software/gen5-microplate-reader-and-imager-software/)


**2. <a name="Protocol"></a> Protocol**

**Sample Preparation**  
1. Thaw homogenate aliquot.  
2. If not done already, centrifuge the 500 μL aliquot of adult airbrush homogenate at 13,000 rpm for 3 minutes to separate the host and Symbiodiniaceae cells.  
3. Remove and discard the supernatant.  
4. Add 1 mL of 100% acetone to the pellet in the 1.5 mL microcentrifuge tube and vortex the tubes for 15 sec.  
5. Place the tubes in a fridge in the dark at 4°C for 24 hours.  
6. Vortex the tubes for 15 sec.  
7. Spin the tubes down at 13,000 rpm for 3 minutes in the microcentrifuge to pellet any debris.  
8. Pipette 200µl of sample to duplicate wells of 96-well quartz plate.   
9. Pipette 200µl of acetone blank to duplicate wells.  
10. Cover the plate with silicone pad every 5th sample or so to reduce evaporate as samples are added.  
11. Remove silicon pad.   
12. Follow steps below to measure the extract Absorbance on the [Synergy HTX Multi-Mode Microplate Reader](https://www.biotek.com/products/detection-multi-mode-microplate-readers/synergy-htx-multi-mode-reader/) at 630, 663, and 750 nm in a 96-well quartz plate.
13. Standardize for path length in 200µl of sample in 96-well quartz plate.

**Make a Platemap in your Notebook**
1. Before running the software, make a written platemap in your notebook with the designated samples going into each well.


**Measure the Absorbance**  

Follow the [Synergy HTX Operating Manual](https://github.com/urol-e5/protocols/blob/master/synergy_htx_manual.pdf) and [Gen5 Software Manual](https://github.com/urol-e5/protocols/blob/master/Gen5_software_manual.pdf) to install the software on your host computer and general operating instructions.

![Platereader](https://github.com/Putnam-Lab/Lab_Management/blob/master/images/Spectrophotometer.HEIC)

1. Open the Gen5 software on your computer.
2. Whenever you start Gen5, the Task Manager opens. In Mo'orea, protocols (including chlorophyll) have been created on the Gen5 software on the HP Putnam Lab computer, so you can select the pre-made protocols from the dropdown menu.

![task.manager](https://github.com/urol-e5/protocols/blob/master/images/task.manager.jpg)


3. To create a new protocol, follow the 'Getting Started' section in the [Gen5 Software Manual](https://github.com/urol-e5/protocols/blob/master/Gen5_software_manual.pdf).
4. To measure Absorbance, select the 'Chlorophyll Protocol' option.



**3. <a name="Calc"></a> Calculating Chlorophyll Concentration**

- Chlorophyll a and c2 concentrations are calculated from the equations in [Jeffrey and Humphrey 1975](https://reader.elsevier.com/reader/sd/pii/S0015379617307783?token=0937035D38C07F29ADF00F1F2A21F20F221219B1CC11A444A4F84D16B98EC3A6AD941D191BA2135A68C98BA62A0B69FE) after substracting A750nm from all measurements.  

![Equations for Dinos in 100% acetone](https://github.com/urol-e5/protocols/blob/master/images/JH_EQ.png)

- Need to correct for differences in path length of the volume in the 96 well plate compared to the 1cm path length of a cuvette.
[Warren 2007](https://www.tandfonline.com/doi/full/10.1080/01904160802135092?casa_token=RqeUl1Ccg7AAAAAA%3A6SyNAs848qrRk1-Tf1g088xWD10z1Xngb8cmcgRvC3jYSYPugr2cL8QG9wFvrFj7xZF-pqqUozonRg)

- To correct for path length, use the following approach to generate a corrected value for 630 and 663 nm by subtracting the blank value (750 nm) and dividiing by path length correction (0.6 cm).

- Note that the path length correction may vary based on the specific instrument. To calculate the pathlength for your specific instrument, follow the protocols outlined in Warren 2007 above.     

```
data$c630.corr <- (data$c630 - data$c750) / 0.6
data$c663.corr <- (data$c663 - data$c750) / 0.6
```

- See an [example calculation script here](https://github.com/urol-e5/timeseries/blob/master/timepoint_1/scripts/chlorophyll.Rmd).

**4. <a name="Waste"></a> Disposing of Waste**
1. Use labeling tape and label a plastic or glass jar or waste container with the Putnam Lab, Date, and 100% acetone waste.
2. Place a plastic funnel at the top of the waste container and slowly pour the acetone and samples into the vessel.
3. Rinse the quartz plate with DI water, making sure to squirt the DI water in each of the wells.
4. Use Qtips to dry each individual well and leave the quartz plate out to dry on a paper towel.
5. Close the waste container and store in a fume hood.
6. Notify waste management about the accrued amount of waste once finished in Mo'orea, or fill out the [URI hazardous waste request form](https://web.uri.edu/ehs/online-pickup/).

**5. <a name="References"></a> References**

    1.  [Jeffrey and Humphrey 1975](https://reader.elsevier.com/reader/sd/pii/S0015379617307783?token=0937035D38C07F29ADF00F1F2A21F20F221219B1CC11A444A4F84D16B98EC3A6AD941D191BA2135A68C98BA62A0B69FE)
    2. [Warren 2007](https://www.tandfonline.com/doi/full/10.1080/01904160802135092?casa_token=RqeUl1Ccg7AAAAAA%3A6SyNAs848qrRk1-Tf1g088xWD10z1Xngb8cmcgRvC3jYSYPugr2cL8QG9wFvrFj7xZF-pqqUozonRg)
    3. [Synergy HTX Operating Manual](https://github.com/urol-e5/protocols/blob/master/synergy_htx_manual.pdf)
    4. [Gen5 Software Manual](https://github.com/urol-e5/protocols/blob/master/Gen5_software_manual.pdf)
