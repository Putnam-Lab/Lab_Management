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
Last Revised: 20230630

**Contents**
- [**Supplies**](#Supplies)
- [**PresensⓇ SDR™ V4.0.0**](#Presens_SDR_Software)
- [**LoligoⓇ MicroResp™ Software**](#Loligo_MicroResp_Software)
- [**Initial Setup**](#Initial_Setup)
- [**Sample Preparation**](#Sample_Preparation)
- [**Photosynthesis**](#Photosynthesis)
- [**Respiration**](#Respiration)
- [**pH**](#pH)
- [**Final Checks**](#Final_Checks)
- [**Data Analysis**](#Data_Analysis)
- [**Take-Down and Clean Up**](#Take-Down)
- PI curves under different temperatures
- Thermal performance curves

<a name="Supplies"></a> **Supplies**

- 2 PreSens SDR SensorDish® Reader Basic Set [(SDR Specs)](https://www.presens.de/products/detail/sdr-sensordish-reader-basic-set) [(SDR User Manual)](https://github.com/Putnam-Lab/Lab_Management/blob/master/Lab_Resources/Equipment_Protocols/Respirometry_Protocol/Images/SDR_UserManual.pdf) 
- 2 PreSens SDR QuickStart Guide [PreSens Getting Started](https://github.com/Putnam-Lab/Lab_Management/blob/master/Lab_Resources/Equipment_Protocols/Respirometry_Protocol/Images/SDR_GettingStarted_GS_SDR-16-01_dv2.pdf)    
- Loligo Glass 24 well microplate with Presens Oxygen spots [Loligo 80µl well size plate Cat #CH25000](https://loligosystems.com/products/microplate/accessories/24-well-glass-microplate-80-ul/)
- LoligoⓇ MicroResp™ Software [(Software Download)](https://www.loligosystems.com/downloads)
- [> 48 pieces of 12mm Microscope Cover Glass](https://www.amazon.com/gp/product/B00XZP7XMU/ref=ppx_yo_dt_b_asin_title_o00_s00?ie=UTF8&psc=1)
- Windows Computer 
- [Digital Traceable Thermometer](https://www.traceable.com/4000-traceable-digital-thermometer.html)
- 2 AI Aquaillumination Prime™ 16HD Reef Aquarium Lights [(Product Description)](https://www.aquaillumination.com/products/prime)
- Apogee Quantum Light Meter [(User Manual)](https://www.apogeeinstruments.com/content/MQ-500.pdf)
- Kimwipes
- DI Water
- Squeeze Bottle
- Large Towel
- Isopropanol wipes
- glass transfer pipette
- plastic transfer pipette
- Air-saturated filtered seawater (100% FSW)
- Zero percent oxygen calibration solution (FSW saturated with sodium sulfite)

## Software Options
<a name="Presens_SDR_Software"></a> **PresensⓇ SDR™ V4.0.0**

1. Download and install the PresensⓇ SDR™ V4.0.0 Software to a windows computer. Download found here: [(Presens Software Download)](https://www.presens.de/index.php?eID=dumpFile&t=f&f=1466&token=5a8621a95739d6b1afbfc48719edafeccb4e1b87). 
- [Windows XP/Vista/7/8 USB Serial Driver](https://www.presens.de/index.php?eID=dumpFile&t=f&f=1456&token=88b25aa3ec8e8e89942b5c586ba7f4076bae219a)
- [Windows XP/Vista USB Serial Driver](https://www.presens.de/index.php?eID=dumpFile&t=f&f=1469&token=27969a51372168cc3a583a1e40b24c5b8584c2c2)

or if LoligoⓇ MicroResp™ Software was purchased with Loligo Plate

<a name="Loligo_MicroResp_Software"></a> **LoligoⓇ MicroResp™ Software**
1. Download and install the LoligoⓇ MicroResp™ Software to a windows computer. Download found here: [(Loligo Software Download)](https://www.loligosystems.com/downloads). 

[Loligo Plate Calibration and Care](https://github.com/Putnam-Lab/Lab_Management/blob/master/Lab_Resources/Equipment_Protocols/Respirometry_Protocol/Images/Loligo_Plate_microresp_quickguide.pdf)

<a name="Initial_Setup"></a>**Initial Setup**

Setting up the SDR sensor plates and accompanying system for the first time in a new place:

1. Suspend an AI light above each SDR plate and follow the [(AI Light Protocol)](https://github.com/urol-e5/protocols/blob/master/2020-03-18-AI-Lights.md) for set up instructions.
2. Assemble SDR reader following the [(SDR SensorDish Reader Installation Video)](https://www.youtube.com/watch?v=F0_b4Ws6Eow&feature=youtu.be). Connect the SDR plate readers to the USB port on the computer and open the LoligoⓇ MicroResp™ Software. Load the correct calibration file for the instrumentation used. For the Loligo 1624 Microplate the calibration files can be found here: [(Calibration Files)](https://www.loligosystems.com/microplate-data)
3. To ensure that the correct saturating light level is set on the AI light, follow the [(Apogee User Manual)](https://www.apogeeinstruments.com/content/MQ-500.pdf). Situate the Apogee above the SDR plate and take ~ 8 readings at various positions around the SDR plate to get an average light measurement. Adjust the placement of the SDR plate, light stand, and AI light as necessary to attain desired light intensities. Ideally, light levels should be as equal as possible across the different positions across the 2 SDR plates. 
4. Record the AI light setting and position combinations required to obtain each desired light intensity to use in Photosynthesis trials.
5. If possible, assemble and run the equipment in a temperaure-controlled environment, such as an incubator. Fluctuations in room temperature and increases in temperature due to the use of LED lighting can influence measurements. Temperature control using an incubator will allow for respiration measurements in treatment conditions if desired.  
6. Run a one-point calibration with 100% oxygen saturated filtered seawater (FSW) for each plate before each run. To do this, bubble FSW for 15 minutes or vigoursly shake in a falcon tube to fully aerate the water. Load the plate with the 100% saturated FSW and place the plate in the incubator on the SDR. In the software, select oxygen levels be measured at % air saturation. Click "Calibration" and then "One-point adjustment". A box will pop up with the % air saturation values for each well. These should be between 90-120%. At the box at the bottom, enter "100" for % air saturation. Click OK. Repeat these steps for both plates.
7. After the calibration, click "Single Scan" in the upper left hand corner. This will run a single measurement scan on all of the wells to double check the calibration. The values should be around 98-105% air saturation. The plate is now calibrated! **It is strongly recommended to run the calibration before every plate/run, especially if different temperatures are being measured.** 

<a name="Sample_Preparation"></a> **Sample Preparation**

1. Set up SDR respirometry equipment (see [**Initial Setup**](#Initial_Setup) for details). Set oxygen concentration in units of µmol/L, indicate temperature and salinity.    
2. Load samples (coral larvae, fragments, recruits) into wells, loading desired wells with samples and at least 2 with 0.2 µm filtered sea water (FSW) as blanks. Randomize the location of blanks for each run to limit well-specific differences in blank samples. If possible, run titration trials to determine optimal sample size/density (e.g., fragment size, number of larvae) to obtain signals that differentiate from blanks and don't quickly go hypoxic. If running respirometry on swimming larvae, a general benchmark for spawning species (*M. capitata*, *A. hyacinthus*) is to use 6-8 larvae per well and brooding larvae 3-6 per well. Record the number of larvae, size of samples, and add to each well in a metadata sheet. 
3. Once all samples are loaded in the plate, including blanks, seal each well with a glass coverslip. See video example of sealing wells here: [(Sealing Wells Video)](https://github.com/urol-e5/protocols/blob/master/images/Well_Loading_Example_Resp.mov) 
4. Make sure that the OxoDish or HydroDish are correctly aligned over the middle of the lasers on the SDR SensorDish Readers. 
5. The SensorDishes can easily be positioned on the SDR due to a groove in the housing of the SDR.

![Fig. 1](https://github.com/urol-e5/protocols/blob/master/images/Figure_1.png)

6. Please be sure that the SensorDishes rest in the groove properly, otherwise the measurement signal will not be sufficient, which results in a bad resolution or even the message “NO SENSOR”.
7. Be sure to put the SensorDish® aligned correctly onto the SDR (well numeration) to be able to associate the software values with your samples.

![Fig. 2](https://github.com/urol-e5/protocols/blob/master/images/Figure_2.png)

8. Run [**Photosynthesis**](#Photosynthesis) or [**Respiration**](#Respiration) trials.

<a name="Photosynthesis"></a> **Photosynthesis**
 Notes: make sure to check what saturating light conditions your study organism needs for Photosynthesis trials. To calculate saturating light conditions, follow the [(PI Curve Protocol)](https://github.com/urol-e5/protocols/blob/master/2020-01-01-PI-Curve-Protocol.md)
 
1. Turn AI lights to desired intensity. Due to temperature increases that can occur under light, it is recommended to run under temperature controlled conditions.  Collect data under light for a period of time that allows for suffient time for slope to be displayed (recommended to run for 30 minutes). Oxygen measurements will appear “jumpy” under the light as the SDR plate readings are variable under light. For this reason, be sure to run photosynthesis runs to provide enough data for analysis to extract a representative slope. If samples are symbiotic, look for an increase in oxygen that is different from the blanks.
2. Run photosynthesis before respiration to avoid hypoxic conditions. Running 1 full plate will provide n=22 samples. Run as many plates to obtain desired sample size or run all treatment conditiosn. During run, watch for bubbles and breakages in well sealing and note these issues on metadata sheet. These wells will need to be excluded from analyses. It is therefore important to ensure a quality seal before the run begins and re-seal any wells that show bubbles prior to running. 
3. If running P and R runs on each plate, there are two options for separating data from these runs. First, you can export data and save after P and again after R. Alternatively, you can record the time that P stops and R begins. See data analysis section below for repository references that utilize these optiosn. Label the saved files with the following name format: “Date_RunID”. If more runs are needed, use Run2, Run3, etc. This file format is suggested - use file names that are informative and appropriate to the experiment. 
4. Export data files in .xlsx format and convert to .csv for data analysis. 

<a name="Respiration"></a> **Respiration**

1. Turn off lights. Collect data under darkness for a period of time in which a stable signal is recorded that is different than the blanks and sustained, recommended to run for 30 minutes. Look for a decrease in oxygen that is different from the blanks. Respiration measurements will be much more stable than Photosynthesis measurements.  
2. Export data files in .xlsx format and convert to .csv for data analysis. 
2. Total run time for P + R run takes about 1 hour run time + 1 hour set up/clean up. 

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

1. Confirm data are exported
3. Use isopropanol wipes on all of the cables and wipe dry with kimwipes. Notes: make sure to avoid the top of the SDR SensorDish Readers and ends of the wires. 
4. Disconnect and disassemble the SDR SensorDish Readers carefully and place components back into the SDR SensorDish Reader cases. 
5. Record and export all data to multiple backup locations (GoogleDrive, GitHub, Computer).
6. Check that all data files appear to have data in proper columns and consistency throughout. If you see any inconsistencies, make sure to redownload data from program or re-run trials before clean up.
7. Stop/Exit the Presens or MicroResp program. 
8. Remove larvae from wells and either preserve for larval size/biomass measurements, or carefully place back into a beaker.
9. Over a sink, remove any access seawater from the wells. 
10. Use a squeeze bottle filled with DI water to rinse out each individual well with DI water and then <70% Ethanol and place on a towel to dry.
11. Rinse the top and bottom of each coverslip with DI water and then <70% Ethanol and place on a kimwipe to dry.
12. After all supplies have been dried, put them back in their respective cases. 
13. **keep the spots covered to reduce light effects**


### Example protocols: PI curves under different temperatures

This section details the protocol for performing photosynthetic irradiance curves under different temperatures. In *M. capitata* 2023 experiments, Ariana Huffmyer and Jill Ashey performed several PI curves (dark respiration, low light, medium light, high light, light-enhanced respiration) at different temperatures (27, 30, 33, and 36°C). See Ariana's [GitHub respository from this project](https://github.com/AHuffmyer/larval_symbiont_TPC) for example metadata and file formats and scripts. The file format is critically important and it is highly recommended to replicate formats from existing repositories. 

1. Follow the steps outlined above for initial set-up. 
2. Set the incubator to the desired temperature for measurements. 
3. Set the light levels for low, medium and high light. In *M. capitata* 2023 experiments, AH and JA set low light at 50 PAR (5% on AI light app), medium light at 100 PAR (8% on AI light app), and high light at 500 PAR (26% on AI light app). Use the apogee to get precise PAR readings. The light levels should be set by first running a PI curve at ambient temperature across a wide range of light levels (0-1500 PAR). The PI curve can then be used to decide the appropriate light levels. 
4. Perform a one-point calibration as detailed above. **Important**: perform a calibration at every temperature!!! This will ensure the plate is calibrated at the proper temperature for measurements. 
5. Gather the larvae and incubate them in the dark for 20-30 minutes. The first measurement will be of dark respiration, so be sure to acclimate them to darkness before running. 
6. Load the larvae (n=5 per well) in the plates as detailed above. Make sure to have plate maps prepared beforehand with a sufficient number of replicates and blanks. After the larvae are loaded into the plates, incubate the plates in the dark for 5 minutes.
7. Load the plates onto the SDR in the incubators set to the desired temperatures. The first run will be dark respiration, so the lights will be off. Once both plates are on the SDR in the correct positions, start the SDR program. Let the program measure for 15-20 minutes or until a clear slope is observed.  
8. Once the dark respiration run is done, pause the program. Turn the lights on to the low light setting (50 PAR in this project) and resume the program after a 2 minute period. 
9. Repeat these steps to next run medium light (e.g., 100 PAR), and high light (500 PAR) phases, followed by the dark again at the end to measure light-enhanced respiration (0 PAR). 
10. Export measurements once oxygen measurements for all light levels have been collected at a specific temperature. 
11. Repeat for each temperature. **Important**: perform a calibration at every temperature!!! This will ensure the plate is calibrated at the proper temperature for measurements. 
12. Follow the steps outlined above for take down and clean up.
13. Be sure to export the data after each measurement and keep detailed time stamps for each light phase. See the GitHub respository linked above for example metadata.  

### Example protocol: Larval thermal performance curves 

This section details the protocol for performing thermal performance curves (TPCs). In *M. capitata* 2023 experiments, Ariana Huffmyer and Jill Ashey performed TPCs under 10, 15, 24, 28, 29, 32, 36, 39, and 40°C in the dark. This encompassed a range for temperatures relevant to the study species. 

See Ariana's [GitHub respository from this project](https://github.com/AHuffmyer/larval_symbiont_TPC) for example metadata and file formats and scripts.

1. Follow the steps outlined above for initial set-up. These measurements will be taken in the dark, so there is no need to set light levels. 
2. Set the incubator to the desired temperature for measurements. 
3. Perform a one-point calibration as detailed above. **Important**: perform a calibration at every temperature!!! This will ensure the plate is calibrated at the proper temperature for measurements. 
4. Gather the larvae and incubate them in the dark for 20-30 minutes. Load the larvae in the plates as detailed above. Make sure to have plate maps prepared beforehand with a sufficient number of replicates and blanks. After the larvae are loaded into the plates, incubate the plates in the dark for 5 minutes.
5. Load the plates onto the SDR in the incubators set to the desired temperatures. Start the run on the program and let the program run for 15-20 minutes. 
6. Stop the program and export the data. Record start and stop times in metadata. 
7. Remove the plates and clean them, making sure to remove all larvae. Turn the incubators to the next TPC temperature. 
8. Once the incubators have reached the next temperature, re-calibrate each plate at that temperature. **Important**: perform a calibration at every temperature!!! This will ensure the plate is calibrated at the proper temperature for measurements. 
9. Re-load the plate with fresh larvae, put the plate on the SDR and begin measurements. 
10. Repeat these steps for each temperature. 
11. Follow the steps outlined above for take down and clean up. 


