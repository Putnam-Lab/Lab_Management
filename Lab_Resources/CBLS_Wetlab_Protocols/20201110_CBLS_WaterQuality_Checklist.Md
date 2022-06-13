---
layout: post
title: Daily CBLS Aquarium room water quality Protocols
date: '2020-11-10'
categories: Protocols
tags: protocol, water quality, synthetic coral, CBLS Aquarium Room, pH, Salinity, Temperature
---

# CBLS Aquarium Room Water Quality Schedule and Protocols

Date started: 20201110  
Date last revised: 20210526 HGR updated schedule table
Document adapted from [Sam Gurr's Whitney Point OA protocols](https://github.com/SamGurr/SamJGurr_Lab_Notebook/blob/master/_posts/2018-08-10-Daily-Wet-Lab-OA-at-Point-Whitney.md)

# General lab pointers to know
- Record ALL data and notes in the designated lab notebook. Write clear enough for others to read the notes and understand the thought process. Label each page with the page number in the top right-hand corner of the notebook page. **Write your initials and the date next to each entry or form of data you record.**
- rinse towels in the sink and place on black rack underneath the water table to dry
- **Contact** Dr. Hollie Putnam (hputnam@uri.edu)with any questions or issues.

# Schedule of routine aquarium maintenance tasks

## daily water quality measurements
| Monday  | Tuesday | Wednesday | Thursday | Friday |
| ------------- | ------------- | ------------- | ------------- | ------------- |
| light, pH, salinity, temperature, NH4, NO3, NO2 | light, pH, salinity, temperature, hardness (KH), Ca, PO4 | light, pH, salinity, temperature | light, pH, salinity, temperature | light, pH, salinity, temperature |

## other routine aquarium room tasks
| Task | Frequency |
| --- | --- |
| coral feeding | 1x/week |
| sock filter cleaning | 2x/week |
| algae removal | 1-2x/month |
| apex pH, salinity, temp probe calibration | 1-2x/month (general maintenance), 1x/week (during experiment) |
| conductivity probe calibration | 1-2x/month (general maintenance), 1x/week (during experiment) |
| pH probe calibration (tris curve) | 1-2x/month (general maintenance), 1x/week (during experiment) |

# Tasks
- [**Light**](#Light)
- [**pH_Tris_Calibration**](#pH_Tris_Calibration)
- [**pH-measurements**](#pH-measurements)
- [**Salinity**](#Salinity)
- [**Temperature**](#Temperature)
- [**Probe-calibration**](#Probe-calibration)
- [**Hardness-KH**](#Hardness-KH)
- [**Calcium-Ca**](#Calcium-Ca)
- [**Ammonium-NH4**](#Ammonium-NH4)
- [**Nitrate-NO3**](#Nitrate-NO3)
- [**Nitrite-NO2**](#Nitrite-NO2)
- [**Phosphate-PO4**](#Phosphate-PO4)

<a name="Light"></a> **Light**

### Daily light measurements protocol
1. The light probe - [Apogee Instruments Underwater Quantum Flux Model MQ-510, Serial 1444](https://www.apogeeinstruments.com/mq-510-full-spectrum-underwater-quantum-meter/) is near the microscope.
2. Take blue rubber cap off of the probe. Put it near lab notebook where it won't get lost.
3. Wipe off wire and metal portion of the probe with DI water using a kimwipe.
4. Press the power button to turn the probe on
5. With the translucent side facing up, place the probe on the bottom of the water tables (around the same depth as the egg crate).
    - NOTE: make sure your thumbs and finger are not blocking the reading!
6. Record the light reading (numbers on the grey box).
    - NOTE: units are umol/m2/s
7. Move from one end of the water table to the other, take ~5 readings. Some directly under the lights, some in between lights.
8. Record all light readings in the lab notebook!
9. Press the power button to turn the probe off (and complete the daily light probe care checklist below)!

### Daily light probe care (after use)
1. Rinse the light probe with DI water.
2. Wipe off the meter box with a kimwipe with 70% ethanol to remove any water or salt.
3. Store the meter and probe dry in their hard-shelled box on the black Putnam Lab table.

<a name="pH_Tris_Calibration"></a> **pH_Tris_Calibration**

### tris calibration for pH probe
*The goal of the Tris calibration is to measure pH (mV) across a range of temperatures lower and higher than currently experienced in the tanks. The temperature values and corresponding pH values must have a linear relationship and an R^2 value equal to or above 0.98 in order to calculate the pH values for the daily measurements from the calibration curve.*

***Measured with Orion Star A325 Thermoscientific pH/ conductivity meter and Mettler Toledo probe 51343101 and Control Company Certified traceable Temperature probe***

1. Fill a small clean container (preferably falcon tube) with certified Tris standard solution from the Dickson Lab.
	- After opening a new bottle, write "Opened", the date yyyymmdd, your initials and Putnam Lab - e.g., "HP - Putnam Lab".
2. Fill a plastic 1L container roughly half way with ice. Set the Tris solution container on ice to cool the solution down to desired temperature (~20C).
	- **Note: This value will change based on the range of temperature you expect to be measuring. This will change through time in an experiment where temperature is not held constant**
	- **For the CBLS basement tank system, measure (22.0 C- 26.5C)**
3. With the certified temperature probe, measure the Tris solution temperature. Swirl the temperature probe in the solution as it measures to ensure the solution is well mixed.
4. With the Thermo A325 meter with the Mettler Toledo pH probe attached, click "Measure" on the meter when the Tris solution is nearing the first temperature (e.g., 25°C). Swirl the pH probe in the solution as it measures to ensure the solution is well mixed.
5. Wait for the temperature and mV value to stabilize and record values.
6. Warm the Tris Buffer by gently holding the outside of the tube/container. But be careful to not hold the container for too long or too aggressively, otherwise the temperature will spike without the chance to record values across the temperature range.
7. Make temperature and pH measurements across the desired range, with increments of about 0.4°C. Read the temperature value as soon as the pH meter states "ready" instead of "stabilizing".
8. Save measured values a new CSV file named today's date (yyyymmdd.csv) and save to "pH_Calibration_Files" folder. Column 1: mVTris (pH values); Column 2: TTris (temperature values).
9. Run the R Script titled "pH_Tris_Curve.R" on RStudio. Check the R^2 value and do not move on until the R^2 is equal to or above 0.98.
	-**Remember: to run the R script, you need to:##
		-**Make sure the Tris file was saved as a ***.csv*** **
		-**Make sure that the data in the excel sheet is correct and the signs (+/-) are also correct.
		-**Check that the directory is set to where the Tris file (yyyymmdd.csv) is.**
		-**Change the date in the R code to the date/name (since the name of the file is just the date) of the Tris file you are trying to run**

<a name="pH-measurements"></a> **pH-measurements**

### pH probe measurements
1. If you turned the probe off after calibration, press the power button to turn the probe on
2. Rinse the tip of the probe with DI water.
3. Toggle the "channel" button (F3) to make sure you are viewing pH in **mV**
4. Submerge the tip of the probe in the water table (near the Putnam Lab banner).
5. When the probe settles (will say "ready") record the pH in the lab notebook
- Repeat **steps 4 & 5** for the second water table, glass tank in water table 2, and the header tank (big black bucket).
- NOTE: record all temperature measurements in **mV**. Press the "mode" button to reset as necessary
Press the power button to turn the probe off (and complete the daily salinity probe care checklist below).

### Daily pH probe care (after use)
1. Rinse the pH probe with DI water.
2. Store the pH probe in the pH electrode storage solution with the glass bulb covered in solution
3. Wipe off the meter box with a kimwipe with 70% ethanol to remove any water or salt.
4. Store the meter and probe dry on the black Putnam Lab table.

<a name="Salinity"></a> **Salinity**

### Daily Salinity probe use
- NOTE: salinity and pH measurements can be done at the same time or separately
1. The Orion Star A325 Thermoscientific pH/ conductivity meter is ear the white bin. The Thermo Orion 013005MD conductivity (salinity) probe is stored in DI water.
2. Press the power button to turn the probe on
3. Toggle the "channel" button (F3) to make sure you are viewing salinity (conductivity) in **psu**
4. Place the probe in the water table (near the Putnam Lab banner). Make sure the whole conductivity cell is submerged in the water.
5. When the probe settles (will say "ready") record the salinity in the lab notebook
- Repeat **steps 4 & 5** for the second water table, glass tank in water table 2, and the header tank (big black bucket).
- NOTE: record all temperature measurements in **psu**. Press the "mode" button to reset as necessary
6. Press the power button to turn the probe off (and complete the daily salinity probe care checklist below).

### Daily salinity probe care (after use)
1. Rinse the salinity probe with DI water.
2. Store the salinity probe in DI water  with the conductivity cell covered in DI water
3. Wipe off the meter box with a kimwipe with 70% ethanol to remove any water or salt.
4. Store the meter and probe dry on the black Putnam Lab table.

<a name="Temperature"></a> **Temperature**

### Daily temperature measurements protocol
1. The temperature probe - [Traceable 4000 Thermometer S/N 170318187](https://www.traceable.com/4000-traceable-digital-thermometer.html) is near the microscope.
2. Wipe off the metal portion of the probe with DI water using a kimwipe
3. Press the "ON/OFF" button to turn the probe on.
4. Place the metal portion of the probe in the water table (near the Putnam Lab banner).
5. When the probe settles within 0.1C, record the temperature in the lab notebook
- Repeat **steps 4 & 5** for the second water table, glass tank in water table 2, and the header tank (big black bucket).
- NOTE: record all temperature measurements in Celsius. Press the F/C button to reset as necessary
6. Press the "ON/OFF" button to turn the probe off (and complete the daily temperature probe care checklist below).

### Daily temperature probe care (after use)
1. Rinse only the metal portion with DI water and dry the metal probe.
2. Wipe off the meter box with a kimwipe with 70% ethanol to remove any water or salt.
3. Store the probe dry and in their hard-shelled box on the black Putnam Lab table.

<a name="Probe-calibration"></a> **Probe-calibration**

### The handheld pH probe, handheld salinity probe, apex pH probe, and apex salinity probe need to be calibrated every few days.
It is best to do this at least every 3 days. Both meter probes (used for daily discrete measurements) and APEX probes must be calibrated every three days with corresponding solutions (Apex uses solutions from Neptune Systems - handheld Mettler Toledo (pH) and Thermoscience (conductivity) probes use buffers from TA and probe-specific solutions, respectively).
	- Update your notebook with the date and time of calibration.

<a name="Hardness-KH"></a> **Hardness-KH**

### Twice weekly KH (hardness) measurements with API product 59
**NOTE: DO NOT MIX & MATCH CHEMICAL TEST TESTTUBES! EVERY TEST HAS IT'S OWN TESTTUBE IN THE CORRESPONDING BOX!**
1. Use bulb pipette to add 5mL seawater to the test tube (to the white line)
2. Add 1 drop at a time of the KH test solution to the test tube. **Hold the KH test solution vertically to ensure drops are of uniform volume**
3. After each drop, cap the test tube and invert several times.
4. The test is completed when the water in the test tube **after having been shaken,** turns from blue to yellow.
5. The KH value is determined by the number of drops of test solution that must be added to turn the water in the test tube bright yellow **SEE TABLE BELOW or instructions packet in box**
6. Record KH and number of drops in the lab notebook. The units for KH is ppm. Proceed to cleanup (below)

**KH conversion chart** *this information can also be found in the info packet in the KH box*
| # of Drops | ppm kh |
| ----- | ----- |
| 1 | 17.9 |
| 2 | 35.8 |
| 3 | 53.7 |
| 4 | 71.6 |
| 5 | 89.5 |
| 6 | 107.4 |
| 7 | 125.3 |
| 8 | 143.2 |
| 9 | 161.1 |
| 10 | 179 |
| 11 | 196.9 |
| 12 | 214.8 |

### Daily water chemistry care (after use)
1. Dispose of liquid in the corresponding 500mL waste bottle. **DO NOT DUMP TEST CONTENTS INTO THE WATER TABLES OR TANKS**
2. Rinse out the test tube and cap in tap water 3 times
3. Blot them dry with a clean paper towel
4. Place the test tube and cap in the box.  

<a name="Calcium-Ca"></a> **Calcium-Ca**

### Twice weekly Calcium (Ca) measurements with API product 69L
**NOTE: DO NOT MIX & MATCH CHEMICAL TEST TESTTUBES! EVERY TEST HAS IT'S OWN TESTTUBE IN THE CORRESPONDING BOX!**
1. Use bulb pipette to add 5mL seawater to the test tube (to the white line)
2. Add 10 drops of **Calcium test solution 1** to the test tube. **Hold the KH test solution vertically to ensure drops are of uniform volume**. Cap the test tube and shake vigorously for 10 seconds.
3. Shake **Calcium test solution 2** vigorously for 10 seconds
4. Holding the bottle vertically, add **Calcium test solution 2** DROP BY DROP. until the solution changes from pink to the blue endpoint.
5. As the endpoint is approached, the color will usually change from pink to purple before finally changing to blue. *After the purple color forms, only 1-2 more drops should be required to reach the blue endpoint*
6. The Ca value is determined by the number of drops of test solution that must be added to turn the water in the test tube bright blue **SEE TABLE BELOW or instructions packet in box**
6. Record Ca and number of drops in the lab notebook. The units for Ca is ppm. Proceed to cleanup (below)

**Ca conversion chart** *this information can also be found in the info packet in the Ca box*
| # of Drops | ppm Ca |
| ----- | ----- |
| 1 | 20 |
| 2 | 40 |
| 3 | 60 |
| 4 | 80 |
| 5 | 100 |
| 6 | 120 |
| 7 | 140 |
| 8 | 160 |
| 9 | 180 |
| 10 | 200|
| 11 | 220 |
| 12 | 240 |
| 13 | 260 |
| 14 | 280 |
| 15 | 300 |
| 16 | 320 |
| 17 | 340 |
| 18 | 360 |
| 19 | 380 |
| 20 | 400 |
| 21 | 420 |
| 22 | 440 |
| 23 | 460 |
| 24 | 480 |
| 25 | 500 |
| 26 | 520 |

### Daily water chemistry care (after use)
1. Dispose of liquid in the corresponding 500mL waste bottle. **DO NOT DUMP TEST CONTENTS INTO THE WATER TABLES OR TANKS**
2. Rinse out the test tube and cap in tap water 3 times
3. Blot them dry with a clean paper towel
4. Place the test tube and cap in the box.

<a name="Ammonium-NH4"></a> **Ammonium-NH4**

### Twice weekly Ammonium (NH4) measurements with API product 401M

**NOTE: DO NOT MIX & MATCH CHEMICAL TEST TESTTUBES! EVERY TEST HAS IT'S OWN TESTTUBE IN THE CORRESPONDING BOX! The nitrogen test tubes are labelled by N-type**
1. Use bulb pipette to add 5mL seawater to the test tube (to the white line)
2. **Add 8 drops from Ammonia test solution 1**. Make sure to hold the dropper bottle vertically to ensure uniformity of drop sizes.
3. **Add 8 drops from Ammonia test solution 2**. Make sure to hold the dropper bottle vertically to ensure uniformity of drop sizes.
4. Cap the rest tubes & shake vigorously for 5 seconds
5. **Wait 5 minutes for the color to develop**
6. Read the rest results by comparing the color of the solution to the Ammonia Color chart. The Tube should be viewed in a well-lit area against the white area of the chart. The closest match indicates the ppm (mg/L) of ammonia in the water sample.
7. Record the ammonia levels in the lab notebook in ppm. Proceed to cleanup (below)

### Daily water chemistry care (after use)
1. Dispose of liquid in the corresponding 500mL waste bottle. **DO NOT DUMP TEST CONTENTS INTO THE WATER TABLES OR TANKS**
2. Rinse out the test tube and cap in tap water 3 times
3. Blot them dry with a clean paper towel
4. Place the test tube and cap in the box.

<a name="Nitrate-NO3"></a> **Nitrate-NO3**

### Twice weekly Nitrate (NO3) measurements with API product 401M

**NOTE: DO NOT MIX & MATCH CHEMICAL TEST TESTTUBES! EVERY TEST HAS IT'S OWN TESTTUBE IN THE CORRESPONDING BOX! The nitrogen test tubes are labelled by N-type**
1. Use bulb pipette to add 5mL seawater to the test tube (to the white line)
2. **Add 10 drops from Nitrate test solution 1**. Make sure to hold the dropper bottle vertically to ensure uniformity of drop sizes.
3. vigorously shake the **Nitrate test solution 2** for at least **30 seconds**. This step is extremely important to insure accuracy of test results.
4. **Add 10 drops from Nitrate test solution 2**. Make sure to hold the dropper bottle vertically to ensure uniformity of drop sizes. This step is extremely important to insure accuracy of test results.
5. Cap the rest tubes & shake vigorously for **1 minute**
6. **Wait 5 minutes for the color to develop**
7. Read the rest results by comparing the color of the solution to the Nitrate (NO3) Color chart. The Tube should be viewed in a well-lit area against the white area of the chart. The closest match indicates the ppm (mg/L) of Nitrate (NO3) in the water sample.
8. Record the Nitrate (NO3) levels in the lab notebook in ppm. Proceed to cleanup (below)

### Daily water chemistry care (after use)
1. Dispose of liquid in the corresponding 500mL waste bottle. **DO NOT DUMP TEST CONTENTS INTO THE WATER TABLES OR TANKS**
2. Rinse out the test tube and cap in tap water 3 times
3. Blot them dry with a clean paper towel
4. Place the test tube and cap in the box.

<a name="Nitrite-NO2"></a> **Nitrite-NO2**

### Twice weekly Nitrite (NO2) measurements with API product 401M

**NOTE: DO NOT MIX & MATCH CHEMICAL TEST TESTTUBES! EVERY TEST HAS IT'S OWN TESTTUBE IN THE CORRESPONDING BOX! The nitrogen test tubes are labelled by N-type**
1. Use bulb pipette to add 5mL seawater to the test tube (to the white line)
2. **Add 5 drops from Nitrate test solution 1**. Make sure to hold the dropper bottle vertically to ensure uniformity of drop sizes.
3. Cap the rest tubes & shake vigorously for 5 seconds
5. **Wait 5 minutes for the color to develop**
6. Read the rest results by comparing the color of the solution to the Nitrite (NO2) Color chart. The Tube should be viewed in a well-lit area against the white area of the chart. The closest match indicates the ppm (mg/L) of Nitrite (NO2) in the water sample.
7. Record the Nitrite (NO2) levels in the lab notebook in ppm. Proceed to cleanup (below)

### Daily water chemistry care (after use)
1. Dispose of liquid in the corresponding 500mL waste bottle. **DO NOT DUMP TEST CONTENTS INTO THE WATER TABLES OR TANKS**
2. Rinse out the test tube and cap in tap water 3 times
3. Blot them dry with a clean paper towel
4. Place the test tube and cap in the box.

<a name="Phosphate-PO4"></a> **Phosphate-PO4**

### Twice weekly Phosphate (PO4) measurements with API product 63L
**NOTE: DO NOT MIX & MATCH CHEMICAL TEST TESTTUBES! EVERY TEST HAS IT'S OWN TESTTUBE IN THE CORRESPONDING BOX!**
1. Use bulb pipette to add 5mL seawater to the test tube (to the white line)
2. Holding the bottle vertically, add **6 drops from Phosphate Test solution 1**. Cap the test tube and shake **vigorously for 5 seconds.**
3. Now, holding the bottle vertically, add **6 drops from Phosphate Test solution 2**.
- NOTE: Phosphate test solution 2 is a very thick solution and may require increased pressure to release drops.
4. Cap and shake the test tube vigorously for 5 seconds.
5. **Wait 3 minutes for the color to develop**
6. Read the test results by comparing the color of the solution to the **SEAWATER PHOSPHATE COLOR CARD** The tube should be viewed in a well-lit area against the white area of the card. **The closest match indicates the ppm (mg/L) of total phosphate (PO4) in the water sample.**
- NOTE: DO NOT USE THE FRESHWATER PHOSPHATE COLOR CARD.
7. Record phosphate value in lab notebook (units are ppm). Proceed to cleanup (below)

### Daily water chemistry care (after use)
1. Dispose of liquid in the corresponding 500mL waste bottle. **DO NOT DUMP TEST CONTENTS INTO THE WATER TABLES OR TANKS**
2. Rinse out the test tube and cap in tap water 3 times
3. Blot them dry with a clean paper towel
4. Place the test tube and cap in the box.
