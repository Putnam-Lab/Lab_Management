---
layout: post
title: SDR Respirometry Protocol
date: '2021-03-31'
categories: Protocols
tags: respirometry, coral, physiology
projects: E5, Putnam Lab
---

# SDR Respirometry Protocol

Original: 20201214
Last Revised: 20210331

**Contents**
- [**Supplies**](#Supplies)
- [**LoligoⓇ MicroResp™ Software**](#Loligo_MicroResp_Software)
- [**pH HydroDishⓇ**](#pH_HydroDish)
- [**Oxygen OxoDishⓇ**](#Oxygen_OxoDish)
- [**Initial Setup**](#Initial_Setup)
- [**Sample Preparation**](#Sample_Preparation)
- [**Photosynthesis**](#Photosynthesis)
- [**Respiration**](#Respiration)
- [**pH**](#pH)
- [**Final Checks**](#Final_Checks)
- [**Data Analysis**](#Data_Analysis)
- [**Take-Down and Clean Up**](#Take-Down)

<a name="Supplies"></a> **Supplies**

- 2 PreSens SDR SensorDish® Reader Basic Set [(SDR Specs)](https://www.presens.de/products/detail/sdr-sensordish-reader-basic-set) [(SDR User Manual)](https://www.presens.de/index.php?eID=dumpFile&t=f&f=1103&token=6ec566be81833841f3e6b4f16998296b8d4fbe3e) 
- 2 PreSens OxoDish® OD24 for oxygen measurements [(PreSens OxoDish® OD24 Specs)](https://www.presens.de/products/detail/oxodish-od24) [(SensorDishes User Manual)](https://www.presens.de/index.php?eID=dumpFile&t=f&f=1089&token=f982b881d7ba1e288e0f79f3c3100aee4c5e7906) 
- 2 PreSens HydroDish® HD24 for pH measurements [(PreSens HydroDish® HD24 Specs)](https://www.presens.de/products/detail/hydrodish-hd24) [(SensorDishes User Manual)](https://www.presens.de/index.php?eID=dumpFile&t=f&f=1089&token=f982b881d7ba1e288e0f79f3c3100aee4c5e7906) 
- LoligoⓇ MicroResp™ Software [(Software Download)](https://www.loligosystems.com/downloads)
- Circular Coverslips (> 48)
- Windows Computer 
- [Digital Traceable Thermometer](https://www.traceable.com/4000-traceable-digital-thermometer.html)
- 2 AI Aquaillumination Prime™ 16HD Reef Aquarium Lights [(Product Description)](https://www.aquaillumination.com/products/prime)
- Apogee Quantum Light Meter [(User Manual)](https://www.apogeeinstruments.com/content/MQ-500.pdf)
- Kimwipes
- DI Water
- Squeeze Bottle
- Large Towel
- Isopropanol wipes

<a name="Loligo_MicroResp_Software"></a> **LoligoⓇ MicroResp™ Software**

1. Download and install the LoligoⓇ MicroResp™ Software to a windows computer. Download found here: [(Software Download)](https://www.loligosystems.com/downloads). 
2. See comment 

<a name="pH_HydroDish"></a> **pH HydroDishⓇ**

1.  If interested in measuring pH on the SDR plate, there is a pH HydroDish that has pre-calibrated pH sensors integrated at the bottom of each well and are read out contactless with the SDR SensorDish Reader. It can be ordered here:  [(PreSens pH HydroDish HD24)](https://www.presens.de/products/detail/hydrodish-hd24)


<a name="Oxygen_OxoDish"></a> **Oxygen OxoDishⓇ**

1.   If interested in measuring oxygen on the SDR plate, there is an Oxygen OxoDish  that has pre-calibrated oxygen sensors integrated at the bottom of each well and are read out contactless with the SDR SensorDish Reader. It can be ordered here: [(PreSens OxoDish® OD24)](https://www.presens.de/products/detail/oxodish-od24)


<a name="Initial_Setup"></a>**Initial Setup**

Setting up the SDR sensor plates and accompanying system for the first time in a new place:

1. Suspend an AI light above each SDR plate and follow the [(AI Light Protocol)](https://github.com/urol-e5/protocols/blob/master/2020-03-18-AI-Lights.md) for set up instructions. Notes: make sure to check what saturating light conditions your study organism needs for Photosynthesis trials. To calculate saturating light conditions, follow the [(PI Curve Protocol)](https://github.com/urol-e5/protocols/blob/master/2020-01-01-PI-Curve-Protocol.md)
2. Assemble SDR reader following the [(SDR SensorDish Reader Installation Video)](https://www.youtube.com/watch?v=F0_b4Ws6Eow&feature=youtu.be). Connect the SDR plate readers to the USB port on the computer and open the LoligoⓇ MicroResp™ Software. Load the correct calibration file for the instrumentation used. For the Loligo 1624 Microplate the calibration files can be found here: [(Calibration Files)](https://www.loligosystems.com/microplate-data)
3. To ensure that the correct saturating light level is set on the AI light, follow the [(Apogee User Manual)](https://www.apogeeinstruments.com/content/MQ-500.pdf). Situate the Apogee above the SDR plate and take ~ 8 readings at various positions around the SDR plate to get an average light measurement. Adjust the placement of the SDR plate, light stand, and AI light as necessary to attain desired light intensities. Ideally, light levels should be as equal as possible across the different positions across the 2 SDR plates. For example, in Mo’orea, average saturating light level for *Acropora hyacinthus* larvae should be set at ~500 PFD. 
4. Record the AI light setting and position combinations required to obtain each desired light intensity to use in Photosynthesis trials.
5. If possible, assemble and run the equipment in a temperaure-controlled environment, such as an incubator. Fluctuations in room temperature and increases in temperature due to the use of LED lighting can influence measurements. Temperature control using an incubator will allow for respiration measurements in treatment conditions if desired.  

<a name="Sample_Preparation"></a> **Sample Preparation**

1. Set up SDR respirometry equipment (see [**Initial Setup**](#Initial_Setup) for details). Set oxygen concentration in units of umol/L. 
2. Load samples (coral larvae, fragments, recruits) into wells, loading 22 wells with samples and 2 with filtered sea water (FSW) as blanks. Randomize the location of blanks for each run to limit well-specific differences in blank samples. If possible, run titration trials to determine optimal sample size/density (e.g., fragment size, number of larvae) to obtain signals that differentiate from blanks. If running respirometry on swimming larvae, a general benchmark for spawning species (*M. capitata*, *A. hyacinthus*) is to use 6-8 larvae per well. Record the number of larvae, size of samples, added to each well in a metadata sheet. 
3. Once all samples are loaded in the plate, including blanks, seal each well with a glass coverslip. See video example of sealing wells here: [(Sealing Wells Video)](https://github.com/urol-e5/protocols/blob/master/images/Well_Loading_Example_Resp.mov) 
4. Make sure that the OxoDish or HydroDish are correctly aligned over the middle of the lasers on the SDR SensorDish Readers. 
5. The SensorDishes can easily be positioned on the SDR due to a groove in the housing of the SDR.

![Fig. 1](https://github.com/urol-e5/protocols/blob/master/images/Figure_1.png)

6. Please be sure that the SensorDishes rest in the groove properly, otherwise the measurement signal will not be sufficient, which results in a bad resolution or even the message “NO SENSOR”.
7. Be sure to put the SensorDish® aligned correctly onto the SDR (well numeration) to be able to associate the software values with your samples.

![Fig. 2](https://github.com/urol-e5/protocols/blob/master/images/Figure_2.png)

8. Run [**Photosynthesis**](#Photosynthesis) or [**Respiration**](#Respiration) trials.

<a name="Photosynthesis"></a> **Photosynthesis**

1. Turn AI lights to desired intensity. Due to temperature increases that can occur under light, it is recommended to run under temperature controlled conditions. To achieve 500 PAR, set Aqua Illumination lights to 30% intensity for all channels. Collect data under light for a period of time that allows for suffient time for slope to be displayed (recommended to run for 30 minutes). Oxygen measurements will appear “jumpy” under the light as the SDR plate readings are variable under light. For this reason, be sure to run photosynthesis runs to provide enough data for analysis to extract a representative slope. If samples are symbiotic, look for an increase in oxygen that is different from the blanks.
2. Run photosynthesis before respiration to avoid hypoxic conditions. Running 1 full plate will provide n=22 samples. Run as many plates to obtain desired sample size or run all treatment conditiosn. During run, watch for bubbles and breakages in well sealing and note these issues on metadata sheet. These wells will need to be excluded from analyses. It is therefore important to ensure a quality seal before the run begins and re-seal any wells that show bubbles prior to running. 
3. If running P and R runs on each plate, there are two options for separating data from these runs. First, you can export data and save after P and again after R. Alternatively, you can record the time that P stops and R begins. See data analysis section below for repository references that utilize these optiosn. Label the saved files with the following name format: “Date_RunID”. If more runs are needed, use Run2, Run3, etc. This file format is suggested - use file names that are informative and appropriate to the experiment. 
4. Export data files in .xlsx format and convert to .csv for data analysis. 

<a name="Respiration"></a> **Respiration**

1. Turn off lights. Collect data under darkness for a period of time in which a stable signal is recorded that is different than the blanks and sustained, recommended to run for 30 minutes. Look for a decrease in oxygen that is different from the blanks. Respiration measurements will be much more stable than Photosynthesis measurements.  
2. Export data files in .xlsx format and convert to .csv for data analysis. 
2. Total run time for P + R run takes about 1 hour run time + 1 hour set up/clean up. 

<a name="pH"></a> **pH**

1.  Under the Multi-Parameter section, download the [(SDR v4.0.0 Software)](https://www.presens.de/support-services/download-center/software) to a compatible Windows XP/Vista/7/10 computer.
2. Follow the instructions in the [(SDR User Manual)](https://www.presens.de/index.php?eID=dumpFile&t=f&f=1103&token=6ec566be81833841f3e6b4f16998296b8d4fbe3e) to measure pH using the HydroDish plate. 

https://www.presens.de/index.php?eID=dumpFile&t=f&f=1103&token=6ec566be81833841f3e6b4f16998296b8d4fbe3e

<a name="Final_Checks"></a> **Final Checks**

1. Ensure complete recording of sample information, well and plate numbers, and notes (bubbles, problems with seal) as well as P and R run times in metadata sheets. See example repositories below for examples. 
2. Ensure data downloaded completely from each run. This should include oxygen concentrations for each well as well as simulataneous temperature measurements. Data output will vary depending on software system.  

<a name="Data_Analysis"></a> **Data Analysis**

1. Data are analyzed by formating and preparing data and extracting slopes using the LolinR package. There are variations of analysis applications depending on experimental use. 

Refer to these repositories and notebooks for data analysis and workflows for respirometry data: 

[Kevin Wong Notebook] (https://kevinhwong1.github.io/KevinHWong_Notebook/)  
[Sam Gurr Notebook] (https://samgurr.github.io/SamJGurr_Lab_Notebook/)   
[Ariana Huffmyer Notebook] (https://ahuffmyer.github.io/ASH_Putnam_Lab_Notebook/)  

[Ariana Huffmyer Git Repository: M. capitata and A. hyacinthus P and R] (https://github.com/AHuffmyer/EarlyLifeHistory_Energetics)    
[Kevin Wong Git] (https://github.com/kevinhwong1)    

<a name="Take-Down"></a> **Take-Down and Clean Up**

1. Stop the MicroResp program. 
2. Use isopropanol wipes on all of the cables and wipe dry with kimwipes. Notes: make sure to avoid the top of the SDR SensorDish Readers and ends of the wires. 
3. Disconnect and disassemble the SDR SensorDish Readers carefully and place components back into the SDR SensorDish Reader cases. 
4. Record and export all data to multiple locations (GoogleDrive, GitHub, Computer).
5. Check that all data files appear to have data in proper columns and consistency throughout. If you see any inconsistencies, make sure to redownload data from program or re-run trials before clean up.
6. Remove larvae from wells and either preserve for larval size/biomass measurements, or carefully place back into the stock population.
7. Over a sink, remove any access seawater from the wells. 
8. Use a squeeze bottle filled with DI water to rinse out each individual well and rinse the entire OxoDish or HydroDish with DI water and place on a towel to dry.
9. Rinse the top and bottom of each coverslip with DI water and place on a kimwipe to dry.
10. After all supplies have been dried, put them back in their respective cases. 
