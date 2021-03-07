# Standard Protocol Procedure for Using the Putnam Lab Titrator

Created By: Silbiger Lab - 20190227

Last Revised: Putnam Lab - DM Becker - 20210218

Contents
- [**Materials**](#Materials)
- [**Pre-Setup**](#Pre-Setup)
- [**Setup**](#Setup)
- [**pH_Calibration**](#pH_Calibration)
- [**Running_a_titration**](#Running_a_titration)
- [**CRM_Titration**](#CRM_Titration)
- [**SAMPLE_Titration**](#SAMPLE_Titration)
- [**Measure_Salinity**](#Measure_Salinity)
- [**Data_Analysis**](#Data_Analysis)
- [**Using GitHub on Windows Computer**](#GitHub)
- [**Clean_Up**](#Clean_Up)

<a name="Materials"></a> **Materials**
- Mettler Toledo InMotion Pro Autosampler
- Mettler Toledo Titrator
- Mettler Toledo Analytical Balance
- Mettler Toledo LabX Laboratory Software (connects titrator, balance, burettes, etc.)
- Mettler Toledo Compact Stirrer
- Mettler Toledo pH electrode
- Mettler Toledo InLab Solutions KCl 3 mol/L solution (for titrator pH electrode)
- Thermo Scientific Orion Star A221 and Star A321 Portable pH Meter
- Nitrile gloves
- Kimwipes
- 250 mL glass beaker
- 80 mL tall plastic beakers (titrator cups)
- 10 mL CELLSTAR serological pipette
- Scienceware 25mL pipette holder
- Computer capatible with LabX program
- Orion application solution pH buffers (4.01, 7.00 and 10.01)
- 3 NALGENE 250 mL centrifuge bottles
- Type I DI water
- Filtered seawater (for junk samples)
- Two designated waste bottles
- Certified Reference Material (CRM) from the Dickson Lab (standards)
- Orion application solutions for two-point conductivity calibration (TDS standard: 12.9 mS/cm and 1413 μS/cm)
- Drying mats
- RStudio software
- Dickson Lab HCl 0.1 N

---

1. <a name="Pre-Setup"></a> **Pre-Setup**
    1. Since you are working with acid. You must wear a Lab Coat and Examination Gloves always, before starting the experiment. Safety Goggles is optional. No food or drink.
    2. Do not remove from the lab bench or move materials between rooms. The PPP lab is specifically set-up for safety and efficiency.

2. <a name="Setup"></a> **Setup**

    1. Turn on Titrator, Inmotion Pro Autosampler, and Laptop.
        1. To turn on the Titrator, press the Power Button in the front of the machine (far upper-right corner).
        1. To turn on the Autosampler, push on the Power switch in the back of the machine (black switch).
        1. Connect the Titrator cord to the Laptop (white cord).
    2. Using the laptop, create a new folder within the general data folder [C: This PC > Users > PPP Lab > Documents > Titratior > Data]. Name: date_description in yyyymmdd format. Example: 20180602_MooreaSamples28 *(That is your folder of the day.)*
    3. The folder must be named something appropriate for the samples being processed (for example, MooreaSamples28 would be all the Moorea data for 28 degrees) within the Data Folder. *(That is your folder of the day.)*
    4. Open Excel, LabX and RStudio (R)
    5. Minimize Excel and R to reduce clutter.
    6. Using LabX, modify the Server Export Directory so that the files export to your *folder of the day*. To do so, go to System (Bottom Left) > At the System’s tab, click “Import and Export” then “Export Templates” > Select “Export Template” and search for the "Edit Export Template" icon in the upper left. Click the Settings tab then edit the Export File Name and Export Directory.
    7. On the “Server Export Directory,” that is where your data is going. You can modify it by clicking on “Edit Export Template” and navigate to the *folder of the day*. Select "Save and Close" in the upper left hand corner and exit this window. You will now see your export path in the export templates section of LabX.
    8. There should already be an empty 80ml cup in position 00.
    9. If not, raise the Rondolino by pressing the left blue button "Rotate 180 degrees" (with no numbered tick marks). Press the same button to return the Rondolino to position 00.
    10. PURGING (RINSING): Using the Titrator tablet, tap “Manual”, "Burette", "Rinse". Set Titrant: HCl, Concentration: 0.1 mol/L, Drive: 1, Cycles: 3, Discharge volume: 100%, Fill rate: 100%. See notes below before pressing "Start".
    11. YOU MUST PARK THE AUTOSAMPLER FIRST (AT POSITION 00), OTHERWISE THE ACID WILL SPILL ALL OVER THE AUTOSAMPLER.
    12. If it ever occurs, you must use the chemical wipes with DI water to soak up the acid.

    - *Note: Rinse is used to purge any air bubbles that may occur in the acid line. If there are more air bubbles, flick both tubes until they disappear*. ***DO NOT start titrations if there are still bubbles, this will affect the amount of acid the titrator gives the sample***.

    13. After Purging/Rinsing, click "OK" to bring the titrator screen back to home.
    14. If you still see bubbles in the lines, redo the purging step!
    15. Recycle (pour back) the acid into the glass bottle that is connected to the titrator by removing the small white plug and pour carefully into the bottle.
        1. If a spill occurs, you must use the chemical wipes with DI water to soak up the acid.
    16. Using DI water, clean the acid cup. Leave upside down on KimWipe to dry.
    17. Located at the right side, at the back of the Titrator, there will be a pH Sensor. Place the sensor in the position marked with a black arrow, next to the propeller.
    18. Open the grey cap on the pH sensor and leave open throughout use. pH will not be measured otherwise.
        1. Before calibrations can be made, look at the top of the Sensor for KCl, make sure the KCl is filled to fully cover the metal inside by the grey cap, skip to [18]. If not, follow the step below.
        1. If KCl reservoir is low, open the cap on the sensor’s reservoir and add a few drops of KCl on the opening.
    19. Make sure that the cap is **open at all times**, so it can measure the pH.
    20. Make sure the probe rinse reservoir is filled with DI water (a plastic tube on the right side of the InMotion Pro).
    21. Once the pH probe is placed in its slot next to the propeller, fill a DI Only cup 2/3 full with DI water and place this cup in poistion 00. On the Titrator screen, "Park" the autosampler. The pH probe should always be submerged in a liquid (DI or its storage solution).

3. <a name="pH_Calibration"></a> **pH_Calibration**

**Things to check and know about the pH probe to ensure proper handling, usage, and storage: **
    - Always check to make sure the pH probe is in KCl electrolyte solution in its holding tube when stored and the internal buffer solution (3) is covering the inside of the glass membrane (1). If you see bubbles in the membrane, gently shake the probe in a vertical direction. 
    - Also always check if the reference electrolyte (6) is filled to the aperature (8). 
    - The zero point of the electrode (pH value E = 0 mV) is approximately pH 7. The electrode potential, measured in a buffer solution of pH 7, must be within -30 mV and +30 mV.
    - The electrode slope (potential change per pH unit) at the pH range 4-9 must be greater than -55 mV/pH (at 25°C).
    - The zero point should be within pH 6 and 8, the slope not less than -52 mV/pH, and the potential change after 60s should not exceed 3 mV/30s.

1. Use the three 80ml cups labeled "pH 4.0", "pH 7.0", and "pH 10.0". Add the appropriate pH buffer to each of the cups until filled halfway. Or the amount kept in the 50 mL tube.
2. Every week pour new pH solution into each 50 mL tube from the original bottle (2nd shelf on the right next to the Certified Reference Material). Mark date in the pHcalibration.csv file.
3. If a new buffer bottle is opened, write the date opened, your initials, and your lab on the bottle (ex: Opened 20180602 ES (Putnam)).
4. Place the three cups in the Autosampler: Position 01 - pH 4.0, Position 02 - pH 7.0, Position 03 - pH 10.0.
5. Place a 80 mL cup filled halfway with DI water into Position 00.
6. Using LabX, click "Analysis" on the bottom left-hand side then look for the Released Methods and click on “Calibration”, in the calibration method editor, make sure you select which export template you would like the output plot to go to. This is found in the export templates section on the right hand side of this window. Select "Save and Close" after making your selection. 
7. Click Start > Titrator > Start to start the Calibration.
8. You can either Right click on the Calibration group or look for the tab named “Recurrence” (It’s on top of the Released Methods) and click Start.
9. Viewing from the Titrator window (select "Show Workbench" if it does not pop up after ~30 seconds), watch the graph for any anomalies.
        1. Anomalies such as the graph jumping constantly.
        1. Unless the zoom scale of the graph in the y-axis is at 0.1, small zig-zags are acceptable, but any change >0.1 units over time means that the calibration should be re-done with new buffers.
10. Once finished, the graph should be a Flat Line for individual samples or a downward graph if all three points are displayed.
        1. If the results are not as described in step [ii.], replace buffers and redo [a. - d.].
11. Using Excel, open the “pHCalibration.csv” file, [C: This PC > Users > PPP Lab > Documents > Titratior > Data].
12. Record the Date, Zero Point, Slope, pH 4, pH 7, pH 10, and Notes into the "pH_calibration.csv" file
        1. The Notes are used to determine the age of the buffer.
        1. To gather Zero Point and Slope, go to LabX > Click Data > look for “Result Sets” on the Data Tab bar (Top Left) > Click “Last 24 hours” > Double click on the "Calibration data set” > select the "Raw Data" tab >  scroll down to the "after sample scopes" > Record the data for slope and zero point onto the Excel spreadsheet.
        1. As an alternative: Go to the Titrator tablet and if the tablet displays that the Calibration is done, press OK to view the Zero Point and Slope.
        1. To gather data for each pH, click the Raw Data tab from the same Calibration Results Set.
            1. Look for the “E” (mV) value for each pH, and record the "E" values on the spreadsheet.
            1. Note: The results should be displayed in order from pH of 4, 7, then 10 as you scroll down in the raw data results page.
        1. Once the calibrations are complete, remove the cups from the Autosampler and dispose them into the into a plastic reagent bottle, respective of their pH.
            1. If the pH buffers need replacing, dispose of the buffers by pouring 4 and 10 down the sink simultaneously while running the faucet. Then pour the 7 buffer. Rince the pH buffer cups with water and hang them on the rack to dry.
        1. Save CSV document and set the destination to the “Data” Folder.


4. <a name="Running_a_titration"></a> **Running_a_titration**

    1. You should start each day by running a Certified Reference Material (CRM) from the Dickson Lab. These are the standards. The procedure for running any titration, whether a CRM or unknowns are as follows. It is also advisable to start with a “junk” sample (filtered seawater that you don’t care about) at the beginning of each run to ensure there are no air bubbles in the acid line.
    2. On the LabX window, similarly to calibration, click on Putnam Lab Titrations  > Start > Titration
        - In the Putnam Lab Titrations method editor, make sure you select which export template you would like the output data to go to. This is found in the export templates section on the right hand side of this window. Select "Save and Close" after making your selection. 
    3. A window should pop up. Depending on the number of the sample measured, click on “Number of Samples” then apply the specific number of samples used in the titration, then press enter on the keyboard.
    4. On the left, look for the “ID 1” column and label the sample. Put in all your sample IDs into this column.
            1. Label ID Ex: "20210218_JUNK1"
    5. Next to the “ID 1” column, there should be a column named “Weight [g].”
    6. Click on the first row and then proceed to the analytical balance.
    7. Weigh the sample from the Analytical Balance.
    8. See [“Protocol Procedure for Using the Balance”](https://github.com/Putnam-Lab/Lab_Management/blob/master/Lab_Resourses/Equipment_Protocols/Titrator_Protocols/Balance_Protocol.md)
    9. In this step, carefully add the sample into the 80ml cup until the scale reads 60g ± .5g or instructed otherwise.
    10. Use a serological pipette for the CRM sample only until the weight reaches 60g ± .5g or instructed otherwise.
    11. For other samples use a beaker to pour in the sample. (PROCEDE WITH EXTREME CAUTION!)
    12. If any spillage ever occurs, Report it immediately. Don’t attempt to clean it yourself. All poisoned samples and CRM's contain HgCl2.
    13. Record all sample IDs and corresponding weights in your notebook before you report them and set the weight manually into the “Weight [g]” column in the LabX program.
    14. Place the measured cups in the Autosampler, starting from position 1, then position 2, 3, etc. If more than one samples are used.
    15. Begin Titration
    16. After the data are set into the system, and all cups are placed in their slots in the autosampler, press Start on the bottom right of the “Task Editor” window.
    17. Once started, each titration will take ~10.5 minutes, unless there is a change of the method from the instructor.

5. <a name="CRM_Titration"></a> **CRM_Titration**

    1. Run step 4, but only use a CRM (or a junk and CRM sample if needed). Find the TA and salinity information for your specific CRM batch number [here](https://www.ncei.noaa.gov/access/ocean-carbon-data-system/oceans/Dickson_CRM/batches.html)
    2. Skip to [**Data_Analysis**](#Data_Analysis) to calculate total alkalinity of the CRM. Then check the accuracy of the data.
    3. **In every CRM Titration, it is necessary to report the accuracy in the “CRMAccuracyData” file to test the accuracy.  If must never be more than 1% off. Accuracy must be tested before running any samples for the day.**


6. <a name="SAMPLE_Titration"></a> **SAMPLE_Titration**

    1. Repeat step **[4.]**. However, in step **[4.iv]**, replace to [the sample name given on the sample bottle].


7. <a name="Measure_Salinity"></a> **Measure_Salinity**

    1. While the samples are running on the titrator, you will measure salinity of each sample from the original sample vial.
    2. Calibrate the conductivity meter (Orion Star) using a 2 point calibration.
    3. Measure the salinity of every sample and write down the value in the csv file you will make below. For CRMs, the salinity corresponds to its batch number, for junks just use salinity of 35.


8. <a name="Data_Analysis"></a> **Data_Analysis**

     1. After the titration is complete, you must gather the data and export it to the current folder. Make a file called "Mass_date" Ex: Mass_20210221 in your *folder of the day* that includes "Sample ID1", "Weight", and "Salinity". fill in your corresponding label IDs, weights, and salinities into this file. **Keep all labeling consistent from titration to analysis**
      2. Open RStudio.
      3. Open the R script named Total_Alkalinity_wParsing.R, scroll down to find "setwd", “path” , “massfile”, “TitratorFiles” and “Date”
      4. Modify “date” to the current day.
      5. Modify “path” to the name of the folder of the day from step [2.ii] (Case Sensitive) and change "setwd" to "C:/Users/PPP Lab/Documents/Titrator/Data/*folder of the day*"
      6. “TitratorFiles”  is the name of the .csv file with all the titrations that was automatically exported.
      7. Modify “massfile” to the name of the current file from step [8.i] (Case Sensitive)
      8. Click on Source to completely transfer the data
      9. A csv file will be automatically exported to the folder of the day with the calculated TA data. If this is a CRM run, here is where you will be the TA value of the CRM to enter it into the CRMAccuracyData file (see 5b).
      10. After the CRM run, edit the file names for Mass, the raw Titrator File, and the new TA file to include "_CRM_".
      11. After each titration, the raw Titrator File and Mass File will overwrite the previous files in the folder if a new name is not given to the previous files.
      12. After each Source of the TotalAlkCalc_wParsing.R script, the new TA file will overwrite the previous file in the folder if a new name is not given to the previous file.
      13. For multiple titrations after the CRM run, use a label for these three files to distinguish between the multiple titrations.

9. <a name="Pushing Titrator Data to GitHub"></a> **Github**

    1. After completing titratoion for the day, you will need to push all your updated data to the GitHub Titrator repository.
    2. If you have never used GitHub or command line before, contact a lab manager or someone that has used it prior for instuctions.
    2. On windows, type in and open "Git Bash" in the search bar (this app allows you to push and pull data from your windows computer to GitHub). 
    3. You must first configure your GitHub account witht the local computer and Git Bash app. To do so, Type in: 
        - git config --global user.email "you@example.com" 
        - git config --global user.name "Your Name"
        - **make sure these match identically to your GitHub profile information**
        - **If it asks you for your password, enter it exactly as on your account**
        - **If you have updated your account to include a personal access token, this is now YOUR PASSWORD**
    4. This will open a seperate window. Type in: "cd Documents/" into the window. This will take you into the documents folder on the computer. Type in "ls" to see the contents of this folder. 
    5. In the Documents folder you will see the Titrator folder.
    6. To go into the Titrator folder, Type in: "cd Titrator/" into the window. This will take you into the Titrator folder on the computer. Type in "ls" to see the contents of this folder. 
    7. You will see a "Data", "Protocols", and "Scripts" folder within the Titrator folder. You can use the "cd" and "ls" commands to get into each folder and see the contents.
    8. If you have made any changes to any of these folders during your titrator runs for the day, make sure to push these changes to GitHub before you leave for the day. 
    9. Before making any changes to the repository, **always make sure to use the command "git pull"**. 
        - This comman incorporates changes from a remote repository into the current branch. So if ny changes were made to the GitHub repository by another user, this ensures you have the most up to date repository.
    10. For any folders that you changed, type in: "git add folder_name" Ex: git add Data/ into the Git Bash app.
        - The git add command updates the index using the current content found in the working tree, to prepare the content staged for the next commit.
    11. Next, you have to commit whatever new information you added. Type in: "git commit -a -m "explanation here"" Ex: git commit -a -m "added titrations for initial E5 testing on 20210221 dmb"
        - The git commit command creates a new commit containing the current contents of the index and the given log message describing the changes. 
    12. Finally, you have to push all of the added data to the GitHub repository. Type in: "git push" into the Git Bash app.
            - This command updates remote refs using local refs, while sending objects necessary to complete the given refs.
    13. After following these commands, make sure to login to your GitHub account on an internet browser and check that the changes have been made on the [Putnam Lab Titrator Repository](https://github.com/Putnam-Lab/Titrator). 
                

10. <a name="Clean_Up"></a> **Clean_Up**

      1. When the titrations are complete, remove the cups from the Autosampler, and dispose the samples into their corresponding labeled waste containers in the cabinet to the left of the laptop and titrator table. *[note: all CRMs and nearly all samples in this lab have HgCl2]*.
      2. Clean the cups using Type I DI water. Then, dry them on KimWipes and drying pads nect to the titrator
      3. Using the Titrator, move the Autosampler arm into position 00 (which should have a cup with DI water in it) by pressing Park on the tablet.
      4. Return the sensor of the autosampler to its holder on the left of the InMotion arm. Double-check that it holder is filled with KCl.
      5. Shut off both Titrator and Autosampler.
      1. To shut off the Autosampler, simply hold the power button at least 5 seconds.
      1. When you hear a beep, it’s notifying you that it’s ready to shut off, when you are ready release the button.
      2. To shut off the Titrator, use the tablet to make it offline then tap shut down.
      6. Wipe down Sample Changer carefully with DI water.
