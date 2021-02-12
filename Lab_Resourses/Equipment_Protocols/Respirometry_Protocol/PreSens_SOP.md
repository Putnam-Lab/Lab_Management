# PreSens Manual


Protocol for set-up and take-down of the Oxy-10 and its probes, as well as how to use the PreSens Measurement Studio 2 to log and export data from the Oxy-10.  If you don't already have the PreSens program on your PC computer, download the software on the disk provided.


**Contents**
- [**Oxy-10 Setup**](#Oxy10)
- [**Creating and Assigning Measurement Files in PreSens**](#Files)
- [**Probe Calibration**](#Probe_Cal)
- [**Running the PreSens Program**](#Running_Program)
- [**Exporting Your Data**](#Export)
- [**Shutdown, Cleaning, and Storage of Oxy-10**](#Shutdown)
- [**Troubleshooting**](#Troubleshooting)  
- [**References**](#references)  


<a name="Oxy10"></a> **Oxy-10 Setup**

Be very delicate with the oxygen probes.  Leave the cap on the end when not in use and do not scratch the tip.  The oxygen cord should never be coiled too tightly or bent, or the sensor will break.

1.	Insert each numbered Temp probe into the corresponding Temp port (lower ports) on the Oxy-10 by aligning the red dots and pushing gently until the dots meet.
1.	Remove the **black caps on the Oxy-10 Oxygen ports**, and the **red caps on the O2 probes** and place all caps in the bag labeled “Oxy-10 ST Caps”.
1.	Insert each numbered O2 probe into the corresponding O2 port (upper ports) on the Oxy-10 by aligning the metal pin on the port with the opening on the probe end.  Push in and turn the probe clockwise to catch the pin.
1.	Leave the black cap on the O2 probe until you’re ready to use the probe, then place these caps in the bag labeled “Oxygen Sensor Caps”.
1.	Attach the power supply to the lower port on the back of the Oxy-10 by inserting the connector and screwing until finger tight.
1.	Connect the domestic or appropriate international plug to the power supply and then plug into an electrical outlet.
1.	Plug the USB connector cord into your computer and the other end into the Oxy-10


<a name="Files"></a> **Creating and Assigning Measurement Files in PreSens**

Note: Before beginning your measurements, you must calculate the appropriate Oxygen Saturation Point for your samples collected.

1.	Open the PreSens program on your computer.
1. 	On the left sidebar, select "OXY-10 ST, O2" (The 10 available channels should show up in a drop down on the sidebar).
1.	In the Measurements tab, click "New" and type in a useful data file name for each measurement of each recording period.  If you are using all 10 sets of O2 and Temp, you will need to create and title 10 measurements per recording run.  Give unique, descriptive names to help manage and organize your data.
1.	Once all your new measurements are created, you need to assign them to each channel on the Oxy-10.  Click on the measurement title you created for Channel 1, select Channel 1 on the sidebar, then click “Assign to” to link the channel with your new measurement data file.  Do this for all 10 channels with your 10 unique measurement files.
1.	When you click each Channel on the sidebar, the "Measurement" description should now show your assigned data file name, and "Sensor" should show the appropriate corresponding O2 and Temp probes (Ex. Channel 1 should show "Sensor: OXY_CH1").   If any Channels do not have the correct probe number assigned, you must recalibrate the sensor using the provided detail sheet from the probe and by following the Probe Calibration steps, detailed below.
 


<a name="Running_Program"></a> **Running the PreSens Program**

1. Each Channel must be directed to start recording individually.  In the Live View tab, select your first Channel on the sidebar and click “Start”.  Select each subsequent Channel and click "Start" until all Channels are recording data.  You can view the live O2 readings, current temperature, and pressure for each Channel by selecting the Channel and viewing the graph or recorded parameters to the right of the graph.
1.	Sensors will record every 1 second until you stop the program.
1.	To stop recording, click on the same first Channel you selected when starting, and in the Live View tab, click “Stop”.  Select each subsequent Channel and click "Stop" until all Channels have stopped recording.


<a name="Export"></a> **Exporting Your Data**

1.	In the Measurements tab, select all data files that were just used to record data by holding Ctrl and clicking each file, then click “Export”.
1.	For your first data file, select the file type as "CSV" or "Excel", then select a target location to store your exported file by clicking the “…” to the right of the Target field.  Click "Save".  Repeat for all subsequent files.
1.	Once all files have been assigned to a target storage location (all lights next ot the file names will change from red to green as the corresponding file has been assigned), click "Export".  Once the export has finished, click "OK".


<a name="Shutdown"></a> **Shutdown, Cleaning, and Storage of Oxy-10**

1.	Close out of the program on your computer.  Detach the power and USB cables from the Oxy-10 and store cables in their labeled bags.
1.	Disconnect the Temp and O2 probes from the Oxy-10 ports and place the **black caps on the Oxy-10 O2 ports** and the **red caps on the O2 probe ends**.
1.	Fill two beakers with DI water (one for O2 probes and one for Temp probes) and submerge probe tips (any part of the probe exposed to your sample solution) for at least 15 minutes to rinse off any residue from your measurements.  Using a chemmwipe, gently wipe off water from all probes and place the black caps back on the O2 probe tips.
1.	After excessive use or after the last recording run of your experiment, follow up this DI rinse with a full probe and cord wipe-down using ethanol on a clean cloth or chemmwipe.
1.	Recoil the probes and store in their labeled bags.


<a name="Probe_Cal"></a> **Probe Calibration** (In progress)

If one of your probes 

1.  In the Sensors tab, select "New".
1.  Type in the name for your sensor (Ex. OXY_CH1) and select the probe type listed on your probe description sheet (Ex. PSt7_10)
1.  Fill in the information as provided by the data sheet for the specific sensor you're calibrating.
    1. Only use the information in the gray boxes for Phase Signal and Temperature.
    1. Be sure to select the correct units for Temperature (Celcius) and Oxygen (umol/L or your preferrered units).
    1. Note the User Signal Intensity: this value may be 0 or 1 depending on the specific sensor.
    1. Batch ID breaks down into 4 number groups: first two digits are the Year, second two digits are the Month, third two digits are the Day, and the three digits after the dash are the Sequence.
    1. Leave Lot Nr blank.
1.	Select the appropriate OXY_CH# probe and Channel #, then click “Assign to” to link the coupled O2 and Temp probes to each Channel.


<a name="Troubleshooting"></a> **Troubleshooting**

**If PreSens Measurement Studio 2 crashes after plugging in the Oy10, or PreSens shows this error message after plugging in the Oxy10 first: "Error while loading the sensors.  The application will now terminate."**  
- First, Shut down the program and reload it.
- If that doesn't work, shut down the computer and reboot, then open the program.
- If a connection still cannot be made, update the PreSens Measurement 2 software [here](https://www.presens.de/support-services/download-center/software.html)
  - Uninstall the PreSens Software from your computer (once reinstalled, you will likely have to recalibrate the O2 probes)
  - On the webpage, under O~2~, click the topmost link
  - Login (or Register, if you prefer your own user login) with email: danielle.barnas@csun.edu pw: SilbigerLab
  - The download should begin automatically, and once it's loaded, open the file and run through the guided download steps
  - Open PreSens on your computer and plug in the Oxy10.  The sensors should now display on the left sidebar
  - Follow steps for [Probe Calibration](#Probe_Cal)
  

**If probe readings seem incorrect**  
- Basic test of the Temperature probes
  - Make a dummy Measurement file and assign it to the probe you want to check
  - Run the channel assigned to that probe
  - Hold the probe tip and watch the measurement curve.  The curve should begin leveling off at your body temp (can note a change in the curve either up or down depending on your environment's temperature relative to your body to verify the probe is not malfunctioning)
  - If the reading still seems off, disconnect and reconnect the probe, and try the above steps again
  - To check accuracy of the readings, place the probe in a beaker of water and use a secondary thermometer to check the probe's readings against the thermometer's
    - If the reading still seems off, check the probe tip and wire for any tears and deep scratches.  If any are present, the probe may be damaged and need replacing
- Basic test the O~2~ probes
  - Make a dummy Measurement file and assign it to the probe you want to check
  - Run the channel assigned to that probe
  - Breath out close to the probe tip and watch the measurement curve.  The curve should begin dropping, indicating a drop in Oxygen
  - If the reading still seems off, disconnect and reconnect the probe, and try the above steps again
  - If the reading still seems off, check the probe tip and wire for any tears, crimps, and deep scratches.  If any are present, the probe may be damaged and need replacing


<a name="references"></a> **References**  
* [Oxygen Dipping Probe DP-PSt7 specifications](https://www.presens.de/products/detail/oxygen-dipping-probe-dp-pst7)
* [Pt100 Temperature Sensor specifications](https://www.presens.de/products/detail/pt100-temperature-sensor)
  * [Specification Brochure](#Images/Presens_O2_and_Temp_specs)
* [Oxygen Optical Sensors and Meters Brochure](https://www.presens.de/fileadmin/user_upload/brochures/190731_cawe_Presens_O2_Broschuere_07-19_dv3_web.pdf)
