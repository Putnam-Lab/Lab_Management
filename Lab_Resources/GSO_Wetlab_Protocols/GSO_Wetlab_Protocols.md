*last update PP 06112025*

# URI GSO Daily Wet Lab Protocol (OA experiments)

About: This post is adapted from an [Point Whitney OA chemistry protocol](https://github.com/SamGurr/SamGurr.github.io/blob/ca9c83b582fa0f72bddc2f0d52d62489358a94ba/_posts/2018-08-10-Daily-Wet-Lab-OA-at-Point-Whitney.md) written by SJG and [CBLS aquarium Room chemistry](https://github.com/Putnam-Lab/CBLS_Wetlab/blob/2a27937ac61becd51724cef426203fdf7322b8ed/CBLS_Wetlab_Protocols/DailyWetlabChecklist_Protocols.md) written by HG.

**Important:** tasks outlined here are catered for a pH + TA approach to calculate full carbonate chemistry.

---------

## Table of contents

- [**Before getting started...**](#Some-materials-to-review)
- [**Materials to read**](#Some-materials-to-review)
- [**Our equipment**](#Equipment)
    - Product name, location, abd *set-up/ calibration info here*
- [**Think about your experiment**](#Before-getting-started)
    - Make a chemistry plan

- [**Tasks**](#Daily-Tasks)
- [**I. Check conditions**](#I-Upon-arrival-to-your-experiment)
- CO2 tanks and APEX mobile app
- [**II. Tris Calibration**](#II-Tris-Calibration)
- [**III. Discrete measurements**](#III-Discrete-tank-measurements)
- [**Data record**](#Data-record)
- [**pH**](#pH-measurements)
- [**Conductivity (salinity)**](#Conductivity-measurements-salinity)
- [**Temperature**](#Temperature-measurements)
- [**Other notes**](#Other-notes)
- when to replace calibration solutions, sampling larval tanks, other measurements, etc.
- [**Probe care**](#Probe-care)
- [**Probe calibration**](#Probe-calibration)
- [**IV. Sample for Total Alkalinity**](#IV-Collecting-Water-Samples-for-Total-Alkalinity)

- [**Daily Data Logging and Backup**](#Daily-Data-Logging-and-Backup)
---------

### Some materials to review...
- [Point Whitney OA chemistry post](https://github.com/SamGurr/SamGurr.github.io/blob/ca9c83b582fa0f72bddc2f0d52d62489358a94ba/_posts/2018-08-10-Daily-Wet-Lab-OA-at-Point-Whitney.md) This protocol is adapted from a protocol used for acdification experiements in 2018-2019.
- [Guide to Best Practices for Ocean CO2 Measurements](https://www.ncei.noaa.gov/access/ocean-carbon-data-system/oceans/Handbook_2007.html) Dickson et al. 2007. All our reference materials and standards are purchased from the Dickson lab - this book clearly explains the data and equations to lead you from discrete measurements to full (publishable!) carbonate chemistry
- ['seacarb' R package](https://cran.r-project.org/web/packages/seacarb/seacarb.pdf)
- 2020 Putnam lab OA training - good examples of tables, equipment lists, R scripts, and a short presentation [here](https://drive.google.com/drive/u/1/folders/1shIgK1TSOCtfqIHWtH0ITrjRgsEAKbMO); likely need access as a Putnam Lab student..

---------

### Equipment:

| Instrument  | Measurement | Location | Notes
| ------------- | ------------- | ------------- | ------------- |
| **Discrete measurements**  | -------------  | -------------  | -------------  |
| Orion Star A325 Thermoscientific pH/conductivity meter  |  NA |  CBLS |  this is the portable meter compatable with the pH and conductivity probes used in discrete measurments  |
| Mettler Toledo pH probe  |  **pH** (mV) | CBLS Organismal lab bench  |  resolution: 1 mV, 0.01 pH ; accuracy: ± 1 mV, ± 0.01 pH |
| Orion Star A221 pH probe  | **pH** (mV)  | CBLS | [SETUP/USAGE and CALIBRATION](https://github.com/Putnam-Lab/Lab_Management/blob/efc28a639b402eaae292bbb8dafb0516e7ac6a44/Lab_Resources/Equipment_Protocols/Orion_MultiParameter_Sensor_Protocol.md) |
| Fisherbrand Traceable Platinum Ultra-Accurate Digital Thermometer | **temperature** (Celcius) | CBLS | [SETUP/USAGE](https://github.com/Putnam-Lab/Lab_Management/blob/2d8e63b6eb1cfdc3ef5a73a031869d1f13daf932/Lab_Resources/Equipment_Protocols/2018-4-9-thermometer%20protocol.md). resolution; 0.001°C; accuracy: ± 0.05 °C) |
| Orion 013010MD Conductivity Cell | **conductivity** (ppm, µS, etc.) | CBLS | range 1 μS/cm - 200 mS/cm; accuracy: ± 0.01 psu) |
| **Continuous measurements - pH-stat system**  | -------------  | -------------  | ------------- |
| Neptune Systems pH probe  | **pH** (NBS scale) |  CBLS, set-up at GSO | [CALIBRATION](https://github.com/Putnam-Lab/Lab_Management/blob/ce424952e5ce067e9eef7d667f19362c403e7a52/Lab_Resources/Equipment_Protocols/Apex-Calibration-Protocols.md). accuracy: ± 0.01 pH units, resolution: ± 0.1°C; compatible with APEX.  |
| Neptune Systems temperature probe  | **temperature** (Celcius)  |  CBLS, set-up at GSO | [CALIBRATION](https://github.com/Putnam-Lab/Lab_Management/blob/ce424952e5ce067e9eef7d667f19362c403e7a52/Lab_Resources/Equipment_Protocols/Apex-Calibration-Protocols.md). accuracy: ± 0.1°C, resolution: ± 0.1°C; compatible with APEX  |
|  **Titration equipment** | -------------  | -------------  | -------------  |
| Mettler Toledo titrator | **total alkalinity** | CBLS Organismal lab bench | |
| *Reference materials and standards;* [about](https://www.ncei.noaa.gov/access/ocean-carbon-data-system/oceans/Handbook_2007.html) |  |  |  |
| Dickson Lab Tris Standard  | standard with known pH | CBLS Organismal lab bench | record your batch number (i.e. Batch T27) |
| Dickson Lab Certified HCl titrant   | ∼0.1 mol kg−1, ∼0.6 mol kg−1 NaCl | CBLS Organismal lab bench  |  record your batch number (i.e. Batch A15) |
| Dickson Lab Certified Reference Materials (CRMs) | seawater standard **with mercuric chloride! use caution [MSDS here](https://www.fishersci.com/store/msds?partNumber=S25423&productDescription=MERCURIC+CHLORIDE+100G+ACS&vendorId=VN00115888&countryCode=US&language=en)**  |  CBLS Organismal lab bench |  record your batch number (i.e. Batch 180); **information on batches [here](https://www.ncei.noaa.gov/access/ocean-carbon-data-system/oceans/Dickson_CRM/batches.html)** |

---------

### Lab Need to Know:
- Dry benches should stay dry, do not move wet/liquid materials from their designated position at the lab.

- Record all data and notes in a lab notebook. Write clear enough for others to read and understand the thought process/orgabization of your data and tables. Label each page with the page number in the top right-hand corner. **Write your initials and the date to start each entry.**

--------

### Before getting started

**Think critically about your experiment**
- What is the duration of your experiment?
- How often are you sampling/measuring responses?
- What is the nature of your treatment(s) and experimental design?

Each aspect can alter the frequency to record full carbonate chemistry suitable for publication. For example, a short-term diel-cycling experiment will require high temporal resolution whereas a long-term and static stress condition may only require weekly full carbonate chemistry.

**In this protocol, I will outline the necessary tasks as a *daily* routine**

---------

# <a name="Daily_Tasks"></a> **Daily Tasks**:

### I. Upon arrival to your experiment
1. **Check the CO<sub>2</sub> tank** to make sure the black tick mark is just below 1000 PSI. The farthest scale to the left (directly horizontal) is reading the levels of the CO<sub>2</sub> tank. The scales above each CO<sub>2</sub> line reads level of CO<sub>2</sub> in each line directly below it.

- If the CO<sub>2</sub> tank is low, contact Hollie hputnam@uri.edu asap so more can be ordered. It can take up to 1 week to arrive.

2. **Check Apex Fusion (the mobile APEX app)** for current and overnight tank conditions. Make sure these data match with what the desired conditions/fluctuations targetted for each tank.
Note: the Apex Fusion app on you phone is very useful and includes an "alarm" function if desired. This can be useful for emergency scenarios (e.g. O<sub>2</sub> tank runs dry - apex sends text alert when pH rises above defined threshold)

---------

## II. Tris Calibration
**About:** We need to measure tris standard in order to convert our pH (mV) discrete measurements to total scale via Guide to BEst Practices. The goal of the Tris calibration is to measure pH (mV) across a range of temperatures ± 5-10 Celcius than currently experienced in the tanks. The temperature values and corresponding pH values must have a linear relationship and an R^2 value equal to or above 0.98 in order to calculate the pH values for the daily measurements from the calibration curve.

- start a table in your notebook; *example table headers*

| pH (mV) | temperature (C)
| ------------- | ------------- |

**Equipment:**
- Orion Star A325 Thermoscientific pH/conductivity meter
- Mettler Toledo pH probe
- Traceable temperature probe
- Tris Standard
- 15ml flacon tubes
- Refridgerator/freezer
- optional: tripour/beaker

**Protocol:**
1. Fill 1/4 of a small clean container (preferably 15 ml falcon tube) with certified Tris standard solution from the Dickson Lab (~5-10 ml)
- After opening a new bottle of Tris standard, write "Opened", the date yyyymmdd, your initials and Putnam Lab - e.g., "HP - Putnam Lab".
2. Fill a plastic 1L container roughly half way with ice. Set the Tris solution container on ice to cool the solution down to desired temperature. If you do not have ice, position the falcon tube in a refridgerator or freezer - careful to not let the solution freeze.
- *Note*: **What is your desired temperature??** This value will change based on the range of temperature you expect to be measuring in your tanks. You do not want your tris standard to freeze - instead, you want the temperature to decline to abou **5-10 degrees Celcius below the lowest temperature in your experiment.**
3. With the temperature probe, measure the Tris solution temperature. Swirl the temperature probe in the solution as it measures to ensure the solution is well mixed.
4. With the Thermo A325 meter with the Mettler Toledo pH probe attached, click "Measure" on the meter when the Tris solution is nearing the first temperature (i.e. 5-10 degrees Celcius below your lowest temperature in your tanks!). Swirl the pH probe in the solution as it measures to ensure the solution is well mixed.
5. Wait for the temperature and mV value to stabilize and record values.
6. Warm the Tris Buffer by gently holding the outside of the tube/container. But be careful to not hold the container for too long or too aggressively, otherwise the temperature will spike without the chance to record values across the temperature range.
7. Record temperature and pH measurements across the desired range, with increments of about 0.4°C. Read the temperature value as soon as the pH meter states "ready" instead of "stabilizing".
8. Save measured values a new CSV file named today's date (yyyymmdd.csv) and save to "pH_Calibration_Files" folder. Column 1: mVTris (pH values); Column 2: TTris (temperature values).
9. Run the R Script titled "pH_Tris_Curve.R" on RStudio. Check the R^2 value and do not move on until the R^2 is equal to or above 0.98.

**Remember: to run the R script, you need to:**
- Make sure the Tris file was saved as a .csv

- Make sure that the data in the excel sheet is correct and the signs (+/-) are also correct.

- Check that the directory is set to where the Tris file (yyyymmdd.csv) is located.

- Change the date in the R code to the date/name (since the name of the file is just the date) of the Tris file you are trying to run

---------

## III. Discrete tank measurements

### Data record
- *your notebook*

name and date and start a table; example table header below...

| Date  | Time | Tank.ID | pH (mV) | temperature (C) | conductivity
| ------------- | ------------- | ------------- | ------------- | ------------ | ------------ |

- *a cumulative electronic file*

Transcribe your notebook data later to a .csv file such as 'Daily_Temp_pH_Sal.csv.'

### pH measurements
1. Press the power on the Orionn meter to turn the probe on
2. Rinse the tip of the probe with DI water and dry with Kimwipe. Careful, this is a glass electrode probe
3. Toggle the "channel" button (F3) to make sure you are viewing pH in **mV**
4. Submerge the tip of the probe in each tank to take recording. Do not submerge the probes too far to avoid corrosion or short-circuiting connections.
5. When the probe settles (will say "ready") record the pH in the lab notebook
6. Repeat **steps 4 & 5** for each replicate tank and head tank.
NOTE: record all temperature measurements in **mV**. Press the "mode" button to reset as necessary
7. Press the power button to turn the probe off (and complete the daily salinity probe care checklist below).

### Conductivity measurements (salinity)
- NOTE: salinity and pH measurements can be done at the same time or separately
1. Press the power button to turn the probe on
2. Toggle the "channel" button (F3) to make sure you are viewing salinity (conductivity) in **psu**
3. Place the probe in the tank. Make sure the whole conductivity cell is submerged in the water The conductivity probe needs to be positioned below water just enough that the cell/opening is submerged.
4. When the probe settles (will say "ready") record the salinity in the lab notebook
5. Repeat **steps 3 & 4** for all replicate tanks and head tanks.
NOTE: record all salinity measurements in **psu**. Press the "mode" button to reset as necessary
6. Press the power button to turn the probe off (and complete the daily salinity probe care checklist below).

### Temperature measurements
1. Wipe off the metal portion of the probe with DI water using a kimwipe
2. Press the "ON/OFF" button to turn the probe on.
3. Place the tip/metal portion of the probe in the tank.
4. When the probe settles within 0.1C, record the temperature in the lab notebook
5. Repeat **steps 3 & 4** for all replicate tanks and head tanks.
NOTE: record all temperature measurements in Celsius. Press the F/C button to reset as necessary
6. Press the "ON/OFF" button to turn the probe off (and complete the daily temperature probe care checklist below).

## <span style="color:red">**Important**</span>
<span style="color:red">**For total Alkalinity, take water samples immediately as/after discrete probe measurements are taken from each tank.**</span>
- Review **IV. Samples for Total Alkalinity**

### Other notes

#### As Needed, but at least every 3 days:
- Replace NBS pH calibration solutions. Write the pH value, date opened, and your initials on the side of each tube.
- Replace Tris calibration solution. Write "Tris Buffer", date opened, batch number, and initials on the side of the tube.

#### Equipment Information
- Update the google spreadsheet of all equipment used. Each entry needs the accuracy and precision of the tool, model and/or serial numbers, and name of the instrument. Include as many details as possible. *This information is essential for methods of manuscripts.*

#### For tanks with larvae or microorganisms
- If measuring small volume tanks with succeptible organisms (i.e. small beaker with larvae), use the falcon tube/pvc cup with mesh (i.e.  150µm) to collect water sample so as not to interfere with larvae or carry them over on the probe. For example, scoop surface water with 150µm pvc cup and collect the ouflow sewater with a tripour beaker or falcon tube for discrete probe measurments. The larvae (if > 150 µm) will catch in the mesh - rinse the pvc cup back in the tank.
- Remember to rinse the tube, plastic round bin, and turkey baster/cup in between measurements of tanks with larvae.

#### Remember!
- Update your cumulative electronic copy "Daily_Temp_pH_Sal.csv"
- Review "**Equipment"** table for set-up, usage, and calibration of these probes.
- Take water samples for TA immediately after discrete measurments '**review II. Sample for Total Alkalinity**'
- Remember later on to update your cumulative electronic copy "Daily_Temp_pH_Sal.csv"
- Review "**Equipment"** table for set-up, usage, and calibration of these probes.

#### Other measurments...

*Flow rates* -  (if no flow meter) can be easily measured with stopwatch and graduated cylinder if an overflow or inflow valve is available for each replicate tank.

---------

### Probe care

##### pH probe care (after use)
1. Rinse the pH probe with DI water and dry with kimwipe
2. Store the pH probe in the pH electrode storage solution with the glass bulb or plastic cover covered in solution (KCl)
3. Wipe off the Orion Star A325 Thermoscientific meter with a kimwipe with 70% ethanol to remove any water or salt.

##### Conductivity probe care (after use)
1. Rinse the salinity probe with DI water and dry with kimwipe
2. Store the salinity probe in DI water  with the conductivity cell covered in DI water
3. Wipe off the meter with a kimwipe with 70% ethanol to remove any water or salt.

##### Temperature probe care (after use)
1. Rinse only the metal portion with DI water and dry the metal probe.
2. Wipe off the meter box with a kimwipe with 70% ethanol to remove any water or salt.

---------

### Probe calibration

**Continuous Neptune Systemss (APEX) pH probe and salinity probe** need to be calibrated every few days using the APEX mobile app. It is best to do this at least every **3 days**.

**Discrete handheld pH probe and salinity probes (Orion meter probes)** can be calibrated less often (1-2 weeks).

Both meter probes (used for daily discrete measurements) and APEX probes must be calibrated  with corresponding solutions (Apex uses solutions from Neptune Systems - handheld Mettler Toledo (pH) and Thermoscience (conductivity) probes use buffers from TA and probe-specific solutions, respectively).

- **Update your notebook with the date and time of calibration!!!**

- info on calibration is provided in the table above **Equipment**

---------

### IV. Collecting Water Samples for Total Alkalinity

- Take water samples for each replicate tank and header tank once daily unless the experiment is short (1-2 days) then take multiple water samples each day along with multiple disceete probe measurements. This process can also be complete less frequent for long-term and static treatment (1-2 weeks for long experiments)
- **If measuring TA same day**, use a filter to take water samples to avoid confounding effects due to effects of live cells (Note: live algae cells to feed bivalves such as iso, pavlova, tet are ~5-12um)
- **If not measuring TA the same day**, you will need to poison your samples with mercuric chloride and store them in a correcly labelled space. Mercuric chloride is extremely toxic - consult with Hollie Putnam to plan accordingly to preserve water samples for TA (if needed)

**Protocol:**
1. Label small glass bottles or plastic cups with the tank # and treatment type (paper tape to reuse these containers). You will need at least 60 ml of seawater to measure TA.

2. *To ensure the sample only contains water from that tank or conical, each bottle will be rinsed three times before collecting the final sample.* Fill the bottle with filtered tank/conical water about 1/4 full, close with the cap, and shake the bottle. Pour out the water down the outflow drain. Repeat twice more to fully rinse the bottle.

NOTE: **do your  tanks contain live algae cells or larvae/microorganisms?** If so, review the section above titled  "For tanks with larvae or microorganisms" to learn how to take these water samples!

3. Fill the bottle completely full, avoiding any air pockets throughout the bottle or at the top before closing.

4. Repeat for each tank.

5. Junk sample. To collect a junk sample to use prior to CRMs, sample a second time from a random tank and label the bottle with that "Junk_tank.ID" in order to keep track of the sample and see how much variability there is between using the rando and after several other samples have been run

**Since no mercuric chloride is being deposited into the samples and the bottles/cups are light-penetrated, water samples MUST be run as soon as possible** in order to be as accurate as possible. When light can reach the water sample and no mercuric chloride is used to kill any bacteria or living organisms in the sample, the potential for the water chemistry to change NOT in response to the experiment in much higher.


#### **Run Titration Alkalinity Water Samples**

- Plan time accordingly, 9 samples will take 1.5 number of hours with BioMin_URI method.

- <span style="color:red">**IMPORTANT**: if you are completing TA everyday, it is most effective to complete the daily TA set-up routine on the Mttler Toledo **first thing in the morning** <span>
- <span style="color:red"> **daily TA set-up routine** == titrant purge for air bubbles, pH calibration, and ru  CRMs <span>

---------

### Daily Data Logging and Backup
- Take detailed notes every day in the notebook. Make sure to include introduction and summary sentences, not just list of tanks or samples.
- Upload to the shared google drive the photos of the
- pH calibration log, daily measurements log,
- tris calibration log,
- wet lab notebook pages, and
- TA notebook pages.
- ***Make sure the corner of each page is numbered and initials are written next to entries.***
- Name each image as the type of calibration followed by the page number. (e.g.: "Tris_Calibration_page3").
