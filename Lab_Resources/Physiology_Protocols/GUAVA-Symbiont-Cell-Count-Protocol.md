---
layout: post
title: Symbiont cell count protocol - GUAVA
date: '2025-07-21'
category: [ Physiology ]
tags: [ Coral, Chlorophyll]
---

The protocol was created by Federica Scucchia on 2025-03-25.

#### Measuring concentration of Symbiodiniaceae cells using the GUAVA instrument

**Instrument details**

This protocol refers to the Millipore Guava easyCyte HT Flow Cytometer located at the URI Coastal Institute Building (Bay Campus).

![GUAVA.png](https://github.com/FScucchia-LabNotebooks/FScucchia_Putnam_Lab_Notebook/blob/master/images/GUAVA.png?raw=true)

**Equipment for GUAVA**

All specific equipment for use can be found in the GUAVA manual. 
- 96 well plates with round bottoms, [like these](https://ecatalog.corning.com/life-sciences/b2c/US/en/Microplates/Assay-Microplates/96-Well-Microplates/Corning%C2%AE-96-well-Clear-Polystyrene-Microplates/p/3797)
- 1.5mL tubes
- capillary cryo tubes
- ICF solution 
- Bleach (sodium hypochlorite solution) 
- GUAVA easyCheck Kit (contains Guava easyCheck Bead Reagent and Guava Check Diluent)

**Sample Preparation**  

1. Thaw coral homogenate aliquot (650uL) and vortex sample for 15 seconds.
2. To separate host and algae, centrifuge the 1.5 tube for 4 minutes at 5000rpm at 4°C. 
3. Remove the supernatant (host tissue) work with pellet (algae).
4. Resuspend the algae with 650uL 1XPBS and homogenize.
5. Centrifuge for 5 minutes at 5000rpm at 4°C.
6. Remove the supernatant. 
7. Resuspend the algae with 650uL PBS and homogenize.
8. Centrifuge for 5 minutes at 5000rpm at 4°C.
9. Remove the supernatant thoroughly.
10. Resuspend the algae with 650uL PBS and homogenize. 
11. Make a 25% dilution with PBS (we ran several trials and found that this is the best dilution for coral samples for the GUAVA, 25% sample and 75% PBS, but dilutions between 20% to 50% also work well, depending on how clear the sample looks - very clear sample might need not to be diluted) of each sample, load in triplicates in a 96 wells plate (round bottom), 240 ul per well.

_Note_: You want to make sure that the samples is free of host remainings and dirt, which may clog the GUAVA.

**Measuring symbiont cell density**

#### System Start-up

1. Turn on the laptop computer.
2. When the computer is finished booting up, turn on the guava easyCyte HT System. The power switch is located half-way up on the right side at the back of the instrument.
3. Start guavaSoft Software (v3.4) by double-clicking the guavaSoft application icon on the desktop.

#### System prime

1. Prime the system by performing a complete cleaning procedure.
<img align="right" src="https://github.com/FScucchia-LabNotebooks/FScucchia_Putnam_Lab_Notebook/blob/master/images/wells.png?raw=true">
2. In the main manu, click on “Cleaning” (under Essential Tools). Click on “Start clean”: the tray will eject. 
3. The tubes from the previous procedures will be on the tray.
4. If tubes are one day old-refill the tubes with MilliQ water or ICF in the proper locations (a pop-up screen will have the info on which tubes to fill and with what). If more than one day old, replace tubes that appear to be contaminated or dirty.
5. Select the CS tube (position 9) as the “Capillary shutdown” tube. 
6. Run the “Clean” procedure to prime/wash the system TWICE (it lasts for about 15 mins each). Do this once if you don't have enough time or if the Guava is in regular use. Do at least TWICE after weekends, or long period of not in use.
7. Select the CS tube (position 9) as the “Capillary shutdown” tube. The “Capillary Shutdown” procedure is automatically done at the end of the “Clean” procedure. The capillary is placed into a tube of water and can stay like this until acquisition without any risk of drying particles on the capillary glass wall.

#### Backflushig the Fluid System in case of clogs

1. If the fluid system is suspected as being blocked, click “Backflush” on the easyCheck screen, or any Guava assay screen. A message should appear on the screen with a prompt to select the well/tube to be used for backflushing – the default position is w1, conaining 100ul of bleach 
2. Leave the default position for Backflushing as w1 and click “OK” (w1 must be containing 100ul bleach solution before clicking “OK”).  
3. Once the Backflush procedure is complete, click “Quick Clean” to rinse any bleach from the capillary.
4. If a run has been paused in order to perform the the Backflush procedure, click “Resume”.

#### Calibration

At the start of each day (when in use), once the system has been cleaned, run the calibration procedure to ensure the system is performing properly before starting sample acquisition.
1. Prepare a 1:20 dilution of the guava® easyCheck bead reagent (20 uL beads + 380 uL ICF). Beads mix need to be prepared in a capillary cryo tube. After that, load 250uL of the mix in well A1 of a new 96-well plate.
2. Click "Incyte" from the main menu. 
3. Click on "Edit worklist", select the A1 well that is going to be measured in your 96 well plate and click on "acquire the sample".
3. Add 2,000 as events to acquire. Select 3 seconds for sample mixing time, 600 seconds for the time to acquire and 3 as number of replicates (the same well will be measured 3 times).
4. Click on "Run worklist". 
5. Name the output bead calibration file the output file (FCS file) in the Putnam/Beads directory, choose the Analysis method and Settings located in the Putnam/Beads directory and click on "Acquire", the tray will open: you can now place your plate (make sure well A1 of the plate is in the top-right corner of the tray).
6. Make sure that the all tubes in the tray are filled or emptied as the software tells you before starting the acquisition. Check these tubes every time you put a new plate.
7. After checking the required tubes and having placed the plate, click on "Ok", the run will start.
8. At the end of the run, go to the "Analyse" menu (top left).
9. Select the file for the calibration run, data will show up on the screen. 
10. Click on "Get group stat" and export the results to csv.
11. Open the csv file, make sure that the particles/mL corresponds to the concentration of beads in your prepared bead sample mix (max deviation should be ±10%), and that the difference between the 3 replicates is below %5. For example, if the actual particle count is 50,000, the acceptable Particles/mL range (±10%) is 45,000 to 55,000.
12. Add this results (mean concentration, standard deviation and % difference) to the notebook on the left of the computer.

#### SAMPLE ACQUISITION

1. Click "Incyte" from the main menu. 
2. Click on "Edit worklist", select the wells that are going to be measured in your 96 well plate and click on "acquire the sample".
![edit_work.jpg](https://github.com/FScucchia-LabNotebooks/FScucchia_Putnam_Lab_Notebook/blob/master/images/edit_work.jpg?raw=true)
3. Add 5,000 as events to acquire, make sure the cleaning is performewd every 24 samples. Select "park capillary" in position number 9. Select 5 seconds for sample mixing time.
![acquisition.jpg](https://github.com/FScucchia-LabNotebooks/FScucchia_Putnam_Lab_Notebook/blob/master/images/acquisition.jpg?raw=true)
4. Once the worklist is created, click on "Run worklist". 
5. Name the output file the output file (FCS file) in the Putnam directory, choose the Analysis method and Settings as shown in the image below and click on "Acquire", the tray will open: you can now place your plate.
![setRun.jpg](https://github.com/FScucchia-LabNotebooks/FScucchia_Putnam_Lab_Notebook/blob/master/images/setRun.jpg?raw=true)
6. Make sure that the all tubes in the tray are filled or emptied as the software tells you before starting the acquisition. Check these tubes every time you put a new plate.
7. After checking the required tubes and having placed the plate, click on "Ok", the run will start.
8. It takes 4 minutes per well, a full 96 well plate will take about 7 hours (can be done overnight).
_Note_: Settings can only be saved after settings have been adjusted, before running the worklist. For setting adjustment, see the [Insturment manual](https://github.com/FScucchia-LabNotebooks/FScucchia_Putnam_Lab_Notebook/blob/master/protocols/Millipore-Guava-easyCyte-Manual.pdf) from page 60. 
Beware of dead volumes: round bottom w96: 50µL; flat-bottom w96: 75µL; 0.5mL Microtubes: 70µL; 1.5mL tubes: >1mL.
If the acquisition rate slows dramatically, and there is sufficient sample volume, the fluid pathway may be blocked. Click “Stop”, wait for the system to stop, and then click “Backflush”. Once the Backflush procedure is complete, click “Quick Clean” to rinse any bleach from the capillary.

#### DATA ACQUISITION

1. At the end of the run, go to the "Analyse" menu (top left).
2. Select the file for the desired run, data will show up on the screen. Click on each well of the plate to make sure that the red quadrat is located around your cell population (gating). Move the quadrat to better include your cells cluster if needed.
![gating.jpg](https://github.com/FScucchia-LabNotebooks/FScucchia_Putnam_Lab_Notebook/blob/master/images/gating.jpg?raw=true)
3. Click on "Current Run Stats". Select the desidered metrics for the output. Gate: Phytoplankton.
![results.jpg](https://github.com/FScucchia-LabNotebooks/FScucchia_Putnam_Lab_Notebook/blob/master/images/results.jpg?raw=true)
4. Click on "Get group stat" and export the results to csv.

#### Quick Clean

1. Whenever leaving a system ON and NOT IN USE - do quick clean then Capillary Shutdown. 
2. Approximately three Quick Clean cycles can be performed from a single well in a plate containing 250ul and seven Quick Cleans from a 1.5-mL tube containing 1.5 mL of fluid before well or tube runs dry and reach dead volume. Ensure cleaning tube is filled up during long runs (pause run, eject tray, top up cleaning tube, load tray, restart run).

#### Capillary Shutdown

1. At the end of your sample acquisition, close the “InCyte” module, open the “Cleaning” module and perform a “Capillary Shutdown” procedure, to make sure that the capillary is not getting dry. 
2. Always use the CS tube in position 9.
3. Never let the Guava stand overnight without making sure that the capillary has been cleaned and that “Capillary shutdown” procedure has been performed.

#### GUAVA SHUT DOWN 

1. Quit “InCyte” module and go to the “Cleaning” module. Click on “Start clean”: the tray will eject.
2. Run the “Clean” procedure to wash the system TWICE (lasts 15min each run), do this AT LEAST ONCE if no time.
3. Select the CS tube (position 9) as the “Capillary shutdown” tube. The “Capillary shutdown” procedure is automatically done at the end of the “Clean” procedure.
4. Once the “Clean” procedure is over, quit GuavaSoft; switch off the Guava system.

#### Data analysis

The Guava gives you cell/mL, multiply by the dilution factor, ccompute the mean value per each sample (3 replicate wells),multiply by homogenate volume to get total number of cells and finally normalize to surface area to get cells/cm2.







