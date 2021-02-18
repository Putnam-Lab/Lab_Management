# Standard Protocol Procedure for Using the HIMB Titrator (Gates Lab)

Created By: Silbiger Lab - 20190227
Last Revised: Putnam Lab - DM Becker - 20210218

Contents
- [**Pre-Setup**](#Pre-Setup)
- [**Setup**](#Setup) 
- [**pH_Calibration**](#pH_Calibration) 
- [**CRM_Titration**](#CRM_Titration) 
- [**Titration_RAnalysis**](#Titration_RAnalysis) 
- [**Samples_Titration**](#Samples_Titration) 
- [**Clean_Up**](#Clean_Up) 
- [**Troubleshooting_FAQ**](#Troubleshooting_FAQ) 

--- 

1. <a name="Pre-Setup"></a> **Pre-Setup**
1. Since you are working with acid. You must wear examination gloves always, before starting the experiment. Safety Goggles is optional. No food or water. 
2. Do not remove from the lab bench or move materials between rooms. The Gates lab is specifically set-up for safety and efficiency.

2. <a name="Setup"></a> **Setup**
1. Turn on Titrator, Autosampler, and Laptop.
1. To turn on the Titrator, press the Power Button in the front of the machine (far upper-right corner).
2. To turn on the Autosampler, push on the Power switch in the back of the machine (black switch). 
2. Using the laptop, create a new folder within the general data folder [C: /Users/Gates Lab/Desktop/Putnam_20180528/Data]. Name: date in yyyymmdd format. Example: 20180602 *(That is your folder of the day.)*
3. There should already be an empty 80ml cup in position 00. 
1. If not, raise the Rondolino by pressing the left blue button "Rotate 180 degrees" (with no numbered tick marks). Press the same button to return the Rondolino to position 00. 
5. PURGING (RINSING): Using the Titrator tablet, tap “Manual”, "Burette", "Rinse". Set Titrant: HCl, Concentration: 0.1 mol/L, Drive: 1, Cycles: 3, Discharge volume: 100%, Fill rate: 100%. See notes below before pressing "Start".
1. YOU MUST PARK THE AUTOSAMPLER FIRST (AT POSITION 00), OTHERWISE THE ACID WILL SPILL ALL OVER THE AUTOSAMPLER.
1. If it ever occurs, you must use the chemical wipes with DI water to soak up the acid.
2. *Note: Rinse is used to purge any air bubbles that may occur in the acid line. If there are more air bubbles, flick both tubes until they disappear*. ***DO NOT start titrations if there are still bubbles, this will affect the amount of acid the titrator gives the sample***.
6. After Purging/Rinsing, click "OK" to bring the titrator screen back to home. 
7. Recycle (pour back) the acid into the glass bottle that is connected to the titrator by removing the small white plug and pour carefully into the bottle.
1. If a spill occurs, read [iv.a.a]
8. Using DI water, clean the acid cup. Leave upside down on brown paper towel to dry.
9. Located at the right side, at the back of the Titrator, there will be a pH Sensor. Place the sensor in the position marked with a black arrow, next to the propeller. 
1. Open the grey cap on the pH sensor and leave open throughout use. pH will not be measured otherwise. 
2. Check the level of pH sensor storage solution. If more is needed: 

3. <a name="pH_Calibration"></a> **pH_Calibration**
1. Use the three 80ml cups labeled "pH 4.0", "pH 7.0", and "pH 10.0". Add the appropriate pH buffer to each of the cups until filled halfway. Or the amount kept in the 50 mL tube.
1. Every week pour new pH solution into each 50 mL tube from the original bottle (2nd shelf on the right next to the Certified Reference Material). Mark date in the pHcalibration.csv files (instructions: 3.viii.a).
2. If a new buffer bottle is opened, write the date opened, your initials, and your lab on the bottle (ex: Opened 06/02/2018 ES (Putnam)).
2. Place the three cups in the Autosampler: Position 01 - pH 4.0, Position 02 - pH 7.0, Position 03 - pH 10.0.
3. Place a 80 mL cup filled halfway with DI water into Position 00.
4. Using LabX: Analysis > Released Methods: ID 100 | Calibration DG115-SC > Right click > Start > T50_GatesLab
5. In Task Editor window, settings should be: No. 1: pH 4.01, No. 2: pH 7.00, No. 3: pH 10.01, T = 25 degrees celsius 
1. Click "Start" to run pH Calibration.
6. While calibration is running: click "Show Workbench" > "T50_GatesLab (T50)"
1. Watch the graph for anomalies, including the graph jumping constantly.
1. *Unless the zoom scale of the graph in the y-axis is at .1, small zig-zags are acceptable, but any change >0.1 units over time means that the calibration should be re-done with new buffers.*
2. Once finished, the graph should be a flat line for individual samples or a downward graph if all three points are displayed. *If the results are not as described in step [vi.a.b], replace buffers and redo [i. - v.].*
7. Using Excel, open the “pHCalibration.csv” file [C: /Users/Gates Lab/Desktop/Putnam_20180528/Data] 
8. Record the Date, Zero Point, Slope, pH 4.0, pH 7.0, pH 10.0, and the notes.
1. The Notes are used to determine the age of the buffer. Mark the day the pH calibration solution is changed.
2. Zero Point and Slope: LabX > Data > “Result Sets” > “My Latest Result Sets” > Double Click "Origin ID: 100 | Calibration DG115-SC" > "Raw Data" > Scroll to the bottom of the report to find "SLOPECal" and "ZEROCal".
1. *As an alternative: Go to the Titrator tablet and if the tablet displays that the Calibration is done, press OK to view the Zero Point and Slope.*
3. pH values: "Raw Data" > Each sample will have an "E" (mV) value and "T" (degrees celsius) value.
1. The results will be in order from position 01 (top) - 09 (bottom).
9. Once the calibrations are complete, remove the cups from the Autosampler and pour back into the appropriate 50 mL conical tube. 
10. Save document and set the destination to the “Data” Folder.

4. <a name="CRM_Titration"></a> **CRM_Titration**
- *Note: CRM = Certified Reference Material. CRM qualities are known (salinity, TA, etc.), therefore it will act as a standard. Before running real water samples, run one "junk" (filtered seawater, NOT a real sample) and two CRM samples. This ensures there are no air bubbles in the acid line and based on the CRM TA values, the quality of calibration and equipment can be confirmed. All samples run will be 60g samples.*
1. "JUNK" Sample
1. Turn on the scale (to the left of the titrator) and tare a 80 mL cup. Carefully pour 60g of filtered seawater. **Each sample must be between 59.00 - 60.00 g.**
2. Record mass value in Putnam Lab notebook with the date and sample ID. Write "Junk" on the side of the 80 mL cup in sharpie. Place in position 01 on the Autosampler.
2. CRM Samples (2)
1. Place 80 mL cup on the scale and tare. Carefully pour between 59.00 - 60.00g of Certified Reference Material (CRM). Label the side of the cup "CRM1" and place in position 02.
2. Repeat previous step. Label the side of the cup "CRM2" and place in position 03.
*Note: If a new bottle of CRM is used, write the date opened, your initials, and your lab on the bottle (ex: Opened 06/02/2018 ES (Putnam)). If the new bottle is a new batch, make note in the lab notebook*
3. LabX: Analysis > Released Methods: ID 000 | URIBioMin > Right click > Start > T50_GatesLab
1. Click "Add" to add as many ID rows as needed.
2. Input ID No. with the appropriate mass value (Ex: "CRM1"; 59.67)
3. Click "Start".
4. Once finished, view data: LabX > Data > “Reports” > “My Latest Reports” > Double Click the latest "Origin ID 000 | URIBioMin". *The report will be the top result, but be patient while LabX creates the report. Do not export the wrong file, pay attention to the date and time.* 
1. "Export as" > "CSV". Name: "yyyymmdd_CRM" (ex: 20180602_CRM).
5. Create a new CSV file (or excel file and save as CSV) titled "yyyymmddmass" (ex: 20180602mass). See previous date's file for format reference. *Do not change capitalization, exact format is needed for the R script.*
1. Column 1: "sample". Below fill out each sample ID "20180602_CRM1" or "20180602_C1" for the conical water samples. The sample ID must match the ID given in the LabX run. 
2. Column 2: "mass" (g). Refer back to written table in notebook for mass values.
3. Column 3: "salinity". Refer to the batch number pdf information sheet for the appriopriate CRM Batch No. salinity value. This will be the salinity value for any CRM sample used from that batch.
6. Refer to Step #6 for CRM clean-up procedure.

5. <a name="Titration_RAnalysis"></a> **Titration_RAnalysis**
1. Open RStudio and "TotalAlkCalc_wParsing.R". 
2. The working directory must be set to the correct folder. Ex: Gates Computer Lab setwd("/Users/hputnam/MyProjects/BioMin_HIS/RAnalysis/"). This will guide the R script to the correct Data folder. 
3. Change values under "#CHANGE THESE VALUES EVERY DAY".
1. "path"; change only the date in format yyyymmdd (ex: "Data/20180602").
2. "massfile"; change to "yyyymmddmass.csv" (ex: 20180602mass.csv). *Double check that the mass file created is in CSV (Comma Separated Spreadsheet) format. **ALL FILES MUST BE IN CSV FORMAT.***
1. If not, open the file and "Save As" to the correct folder and change the file format to CSV. Delete the version that is not CSV. 
3. "titrationfile"; change to "yyyymmdd_CRM.csv" (ex: 20180602_CRM).
4. "date";'20180602' 
4. If a new bottle of acid was used, change information under line 107: "#CHANGE ONLY WHEN NEW BOTTLE OF ACID IS USED". 
1.  Change the bottle number (#Bottle A3 - acid titrant#).
2.  Change the values in the density equation (#density of your titrant) and the date the bottle was changed (ex: #bottle changed 20180528). *Any sentence or phrase following a "#" is not part of the script and acts as a note to oneself*. 
3.  Change the concentration value with the date the acid was changed (ex: c<-0.099793 # 20180529 batch A3). 
5. Highlight script (ctl-A) and click Run. Any errors in red font in the bottom left box on RStudio will need to be troubleshooted. Ignore 
6. Open the new TA file created > "20180602 TA". Displayed are the TA values for each of the samples run. Rename the file "20180602 TA_CRM". 
7. CRM values must be within 1% error of the theoretical TA value of the CRM batch. This information is provided on NOAA's website and batch information PDFs are saved in the "Putnam_20180528" folder. **Do not move onto real water samples until CRM TA values have an equal to or less than 1% error compared to the known TA value. Accuracy must be tested before running any samples for the day.**

6. <a name="Samples_Titration"></a> **Samples_Titration**
- *Note: Autosampler only has 9 sample positions, plan time accordingly. 9 samples takes approximately an hour and a half.* Loading the real water samples will be the same procedure as loading CRM samples.
2. Turn on the scale (to the left of the titrator) and tare a 80 mL cup. Carefully pour 60g of a real water sample. **Each sample must be between 59.00 - 60.00 g.**
2. Record mass value in Putnam Lab notebook with the date and sample ID. Write the ID No. on the side of the 80 mL cup in sharpie (ex: Conical_8 sample - write "C8" on the cup). Place in position 01 on the Autosampler.
2. Repeat for each water sample. Write the mass values in the notebook in the order positioned in the autosampler.
3. LabX: Analysis > Released Methods: ID 000 | URIBioMin > Right click > Start > T50_GatesLab
1. Click "Add" to add as many ID rows as needed.
2. Input ID No. with the appropriate mass value (Ex: "C1"; 59.67)    
4. Once finished, view data: LabX > Data > “Reports” > “My Latest Reports” > Double Click the latest "Origin ID 000 | URIBioMin". *The report will be the top result, but be patient while LabX creates the report. Do not export the wrong file, pay attention to the date and time.* 
1. "Export as" > "CSV". Name: "yyyymmdd_all" (ex: 20180602_all).
5. Add the water sample mass values to the mass file (yyyymmddmass) with the correct salinity value. Refer to written notes or github.com > search hputnam > BioMin_HIS > RAnalysis > Data > "Daily_Temp_pH_Sal.csv". Choose the salinity values from the measurement set that matches the time the water was sampled. 
6. Follow Step #5 to complete R analysis for the water samples. This procedure will be the same as R analysis for the CRM.
1. EXCEPT - change within R script: titrationfile "20180602_CRM" to "20180602_all". 
2. 5. Highlight script (ctl-A) and click Run. Any errors in red font in the bottom left box on RStudio will need to be troubleshooted. Ignore 
3. Open the new TA file created > "20180602 TA". Displayed are the TA values for each of the samples run. Rename the file "20180602 TA_all". 
7. At the end of the titration run, the date's folder should contain 4 CSV files: "yyyymmddmass", "yyyymmdd_CRM", "yyyymmdd TA_CRM", and "yyyymmdd TA_all".
8. Email the previous four files and "pHCalibration.csv" to hputnam@uri.edu and estrand@lion.lmu.edu. 

7. <a name="Clean_Up"></a> **Clean_Up**
1. CRM must be disposed of in the appropriate waste container. In Gates Lab, the waste bin lives in the furthest lab room in the fume hood. The waste container will be kept here when not being used after the CRM run. 
1. After CRM is poured into the waste container, rinse with DI water and place in the appropriate CRM bin. In Gates Lab, this is labeled with green tape and lives on the second shelf next to the Tris, CRM, and original pH calibration solutions. 
2. All Seawater samples, including the "JUNK" sample, can be disposed of in the sink and rinsed with DI water. Place upside down on brown paper towel to dry.
3. Pour the DI water cup (position 00) in the sink and leave upside down on brown paper towel to dry. Place a dry cup in position 00.
1. Raise the Rondolino by pressing the left blue button "Rotate 180 degrees" (with no numbered tick marks). Press the same button to return the Rondolino to position 00. 
4. Return the pH probe to storage solution and close the grey cap.
5. Shut off the titrator and autosampler.
6. Shutdown all computer programs: R, LabX, Internet, etc. Turn off the computer and shut screen. *Double check the correct files were emailed for the day.*
7. Wipe down the counter, and place notebook and pen to the right of the computer. 
8. Throw away used gloves and wash hands.

8. <a name="Troubleshooting_FAQ"></a> **Troubleshooting_FAQ**
1. Titrator tablet will not connect to LabX.
1. Turn off titrator, autosampler, and laptop. Turn on titrator, autosampler, then laptop. Open LabX after the titrator and autosampler have been turned on. 
2. Restart the laptop and repeat Step [8.i.a].
2. CRM TA values are not within 1% error of the known batch no. value.
1. Double check pH calibration values are not off.
2. Double check the correct file was exported as "yyyymmdd_CRM". 
3. Look for several large liquid drops on the insides of CRM cups. This will affect the mass value but will not be included in the acid titration. 
1. Re-measure mass of CRM samples (remember to tare with a dry cup and pour the sample into the new cup) and re-run titration on LabX.
3. RStudio will not run the code and errors are unclear. 
1. Double check file names and working directory. Capitalization and spacing matters. Double check the date is correct. 
2. Clicking Enter while holding Ctl will allow you to run through the R script line by line. Determine where the error lies and follow instruction. 


Fix: 
1.setwd() to gates settings 2. where do we get the acid information? 3. add ignore error about not having download something (in both spots). 4. double check TA csv file name 5. check export as button trail 6. check the CRM TA file title. 7. time that 9 samples takes. 8. 


