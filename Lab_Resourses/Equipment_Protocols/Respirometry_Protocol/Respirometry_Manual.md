# Respirometer Manual - IN PROGRESS

[PreSens Oxy-10 ST](https://www.presens.de/products/detail/oxy-10-st-g2)
[Sirring System](https://github.com/Putnam-Lab/Lab_Management/blob/master/images/Stirplate_chamber_Drawings_AIMS.pdf)

Protocol for Respirometry (oxygen flux in sealed chambers) using the PreSens Oxy10 sensor, probes and software in a temperatuer controlled setting. This includes Apex controller for temperature manipulation and control of the respirometry water baths.


# **Contents**  
- [**Supplies**](#Supplies)
- [**Water Bath Setup**](#Bath)   
- [**Temperature Control**](#Temperature)
- [**Connecting the Battery**](#Battery)   
- [**Oxy10 Setup**](#Oxy10)
- [**Software Setup**](#Software_Setup)
- [**Running the Program and Exporting Data**](#Run_Program_Export_Data)
- [**Probe Calibration**](#Calibrate)       
- [**Stirring System Setup**](#Stir)  
- [**Filling and Securing Chambers**](#Chambers)  
- [**Inserting Oxy-10 Probes**](#Probes)  
- [**Final Chamber Checks**](#Final_Checks)  
- [**Water Changeover for Additional Runs**](#Water_Change)  
- [**Exporting Data**](#Data_Export)  
- [**Removing Chambers from Respirometer**](#Removing)  
- [**Take-Down and Clean Up**](#Take-Down)  
- [**Troubleshooting**](#Troubleshooting)  
- [**Chamber Oring Replacement**](#ChamberOring)  
- [**Stir System Oring Replacement**](#StirSystemOrings)   



# <a name="Supplies"></a> **Supplies**

- [Oxygen meter and Sensors PreSens Oxy10](https://www.presens.de/products/detail/oxy-10-st-g2)
- [Oxy10 Oxygen Dipping Probes](https://www.presens.de/products/detail/oxygen-dipping-probe-dp-pst7)
- [Oxy10 Temperature Probes](https://www.presens.de/products/detail/pt100-temperature-sensor)
- [Respirometer stand (with 4 screw-on legs) or underwater stirring plate](https://github.com/Putnam-Lab/Lab_Management/blob/master/images/oxy10_base.JPG?raw=true)
- [Silicon - DuPont Molykote 112 High Performance Silicon Food Grade](https://www.mcmaster.com/1204K42/)
- [Stir system large orings - Oil-Resistant Buna-N O-Ring
3 mm Wide, 165 mm ID](https://www.mcmaster.com/1302N209/)
- [Stir system small orings - Oil-Resistant Buna-N O-Ring
3 mm Wide, 125 mm ID](https://www.mcmaster.com/1302N183/)
- [Chamber orings]()
- [Chambers](https://github.com/Putnam-Lab/Lab_Management/blob/master/images/oxy10_singlechamber.JPG?raw=true) (10 can be measured at any one time with the Presens Oxy10)
	- MAKE SURE BOTH TOP AND BOTTOM OF THE CHAMBERS ARE LABELLED
- [Magnetic stir bars x10](https://www.mcmaster.com/5678K155/)
- Chamber screw key - ADD PHOTO HERE
- [Battery](https://www.mcmaster.com/7448K13/)
	- Height	2.4" Width	5.3" Depth	1.3"
- [Battery Charger](https://www.mcmaster.com/76025K15/)
- [Strap Wrench](https://www.mcmaster.com/54325A63/)
- [Parafilm](https://www.fishersci.com/shop/products/parafilm-parafilm-m-2/501899425#?keyword=Parafilm)
- [Large cooler](https://smile.amazon.com/gp/product/B004QILD6W/ref=ppx_yo_dt_b_asin_title_o08_s00?ie=UTF8&psc=1)
	- Lenght 38.19 x width 17.32 x height 17.72 inches
- [Chiller x2](https://www.petco.com/shop/en/petcostore/product/aqua-euro-usa-max-chill-aquarium-chiller-110-hp)
	- e.g., AquaEuro 1/10 HP SKU 1457110
- [Chiller Tubing](https://www.mcmaster.com/5233K68/)
	- ID	1/2" and OD	3/4"
- [Chiller Pump - Hydor Centrifical Pump 300 All-Purpose Pump, 300 GPH](https://smile.amazon.com/gp/product/B003SNG9I8/ref=ppx_yo_dt_b_search_asin_title?ie=UTF8&psc=1)
- [Aqueon Pro 300 Submersible Aquarium Heater, 300 Watts](https://www.petco.com/shop/en/petcostore/product/aqueon-pro-300-submersible-aquarium-heater)
- [Apex controller](https://shop.neptunesystems.com/collections/systems/products/apex-controller-system)
- [Apex temperature probe](https://shop.neptunesystems.com/products/temperature-probe)
- [Digital Thermometer Cat 150778](https://www.fishersci.com/shop/products/fisher-scientific-traceable-digital-thermometers-11/150778#?keyword=digital%20thermometer)
- [Light sensor and meter if measuring photosynthesis](https://www.apogeeinstruments.com/mq-510-full-spectrum-underwater-quantum-meter/)
- [Minimum Data Sheet]()  

# <a name="Bath"></a> **Water Bath Setup**

1. Place the coolers in close proximity to their respective chillers and within reach of the heaters and probes connected to the temperature controllers. Fill the second bin with the water you'll use to fill the chambers (here called "source water") and set up an Apex controller to control the temperature of that water. [Temperature Control](Temperature)

1. Fill the cooler with source water, enough to fully submerge the chambers once the stirring rack and chambers are placed inside, and set up the Apex controller to control the temperature of that water.

1. Connect tubing to the inflow and outflow ports on your chillers.  At the free end of the inflow tube, attach an aquarium pump.  Place the pump and the free end of the outflow tube in the cooler (repeat for the second bin).  Power on the pump and check for water flow.

1. Add the heater to the cooler **The heater(s) must be fully submerged to the indicated locations for your brand of heater before powering on, or they can melt or crack**

1. Place the Apex temperature probe in the water and check that the display (or apex.local dashboard on your computer) is showing an accurate current temperature reading. [Temperature Control](Temperature)

1. Before plugging the chiller and heater into the Apex EnergyBar, make sure the EnergyBar outlets are manually OFF.  Set these outlets to AUTO only once you've programmed the outlets for your desired temperature.  [Apex Protocol](https://github.com/Putnam-Lab/Lab_Management/blob/master/Lab_Resourses/Equipment_Protocols/Respirometry_Protocol/Apex_SOP.md)

1. While you wait for the bath and source water to reach the desired temperature, set up the Oxy10 and prepare the stirring system and chambers.  

# <a name="Temperature"></a> **Temperature Control** (add photos)

Further information on the [Apex_SOP](https://github.com/Putnam-Lab/Lab_Management/blob/master/Lab_Resourses/Equipment_Protocols/Respirometry_Protocol/Apex_SOP.md) for if you need to connect without internet or need to use the Apex Jr. or Apex El counsel controls.

<a name="initial"></a> **Initial Set-Up**  

1. Plug the Apex Jr’s temperature probe into the temperature connector on the base unit, and the Apex Display into either aquabus port.  Connect any other compatible probes in the additional port.
1. Plug an Ethernet cable into the Ethernet jack on the Jr base module, and plug the other end of the cable into an unused port on your router (or computer if establishing a LAN).  Once the Ethernet connection has been established, plug the Apex Jr into a power outlet
  - **The Ethernet must be connected before powering on**
  - Note: The Apex should be plugged into a router for initial configuration.
1. If your computer network is already set up for the Apex, skip to the [Display Module network settings](#display_module_settings)

<a name="pc"></a> **PC Network Settings:**  

- Connect the Apex to your computer with an Ethernet Cable
  - For Windows 10 (on the Yoga)
    1. Right click the network Icon in the lower right corner of the dashboard task bar (small wifi symbol), and click Open Network and Internet Settings.
    1. Click on Change Adapter Options
    1. Find the Local Area Connection/Ethernet and right click
    1. Go to Properties
    1. Double click on Internet protocol Version 4(TCP/IPv4)
      1. If nothing happens click Properties in the new window
    1. Change to ‘Use the Following IP address’
    1. Write in the following:  
      IP Address: 10.0.2.150  
      Subnet Mask: 255.255.255.0  
      Default Gate: 10.0.2.1  
    1. Click OK
    1. Click OK in Local Area Connection Properties

- For Windows 7 and Windows Server 2008 R2, do one of the following, and then follow steps to change IP address as shown above:
  - In Control Panel, in Adjust your computer’s settings, when View by is set to Category, click Network and Internet, and then click Network and Sharing Center.
  - In Control Panel, in Adjust your computer’s settings, when View by is set to either Large icons or Small icons, click Network and Sharing Center.

- For Windows Vista and Windows Server 2008, do one of the following, and then follow steps to change IP address as shown above:
  - If you use the Control Panel Home view, under Network and Internet section, click View network status and tasks.
  - If you use the Classic View, double-click Network and Sharing Center.

Optional: If you think the computer may not be recognizing the Apex, check connection status by downloading the Apex Browse Utilities Tool.  There is a Windows PC and Mac version.
- PC: http://www.neptunesystems.com/ApexBrowse_pc.zip
- Mac: http://www.neptunesystems.com/ApexBrowse_mac.zip

<a name="mac"></a> **Mac Network Settings:**  

1. Connect the Apex to your computer with an Ethernet Cable
1. Open System Preferences => Network
1. Select the Ethernet connection
1. Change Configure IPv4 to Manually
1. Write in the following:  
  IP Address: 192.168.2.75  
  Subnet Mask: 255.255.255.0  
  Router: 192.168.2.1  
1. Click Apply

<a name="wireless_computer_connection"></a> **Wireless connection to the Apex Local Dashboard**  

1. Wait for the light on the base to turn Blue (indicating it is ready for a wireless connection)
    - If the base unit light turns solid Orange instead of solid Blue, use a pin to press Reset on the unit for 10 seconds or until you see a Blue light.  Release the reset and let the Apex run through the lights until it stabilizes on Blue.
1. PC:  
    - Click on the network settings icon in the bottom right hand corner of your screen  
1. Mac:  
    - Click the wifi icon in the upper right corner of your screen
1. Select the Wi-Fi network called Apex Setup_### (where ### is the ApexEL’s serial number), select Connect
    - It’s recommended to not select the “connect automatically” option
1. Once connected, type into browser http://172.16.0.1 or http://apex.local
1. Login with Username: admin and Password: 1234 and select your local wifi.  Enter your local wifi’s password and press Connect
    - Example: At Gump Station in Mo'orea: select wifi Gump Guest #8 (or whichever # is strongest in your location around the station) with Password eD7hI0yPht1K
1. Wait for the base light to turn Orange (light will turn from Off > Green > Purple > Green > Solid Orange), then in networks select your local wifi (if this does not happen automatically in a few seconds)
1. Close that browser window.  Open a new window, and again type into browser http://172.16.0.1 or http://apex.local

<a name="display_module_settings"></a> **Apex Display Module Network Settings**  

1. System => Net Setup => turn DHCP OFF by pressing the center button
1. Go to IP Address in the same menu
1. Change the IP address to 10.0.2.75 (for PC) or 192.168.2.50 (for Mac)
1. Press OK
1. Go to Gateway menu
1. Change Gateway to 10.0.2.1 (for PC) or 192.168.2.1 (for Mac)
1. Press OK
1. In the same menu, select Restart

<a name="apex_classic_dashboard"></a> **Accessing the Apex Classic Dashboard**  
Once the above settings are preset for the computer and apex, any future connections should be as simple as connecting the apex and computer via Ethernet cable, then turning on the apex

1. Open the internet web browser page
1. Type into the address bar http://10.0.2.75 (for PC) or http://192.168.2.50 (for Mac)
1. Enter the default Username: admin and Password: 1234
1. Begin controlling your Apex from your computer

<a name="setup_and_sop"></a> **Apex set up and operating procedures**

<a name="apex_display_configuration"></a> **Apex Display Configuration**

1. Using Apex Display
    1. Plug the temperature probe, the Apex Display, and any other AquaBus modules into the available ports of the AquaBus (the base module).
    1. The display module can display 4 different status screens that you can configure (use the LEFT and RIGHT arrows on the HOME screen to switch between each).  This enables you to use the Apex on multiple tanks where each one has its own screen or a single tank with up to 4 screens showing different data.  The top right of each screen has a series of 4 small blocks to represent the respective numbered screen.
    1. From the HOME screen, pressing either the UP or DOWN arrow keys will activate one of the four feed cycles, A-D.  You do not select a feed cycle from a list of choices - simply stopping on the appropriate letter is sufficient to activate it.  If you get here by mistake, simply let it select a feed cycle then immediately press the CANCEL key (right function key).
    1. Plug in your Heater/Chiller/etc. Into any of the four (4) outlets available.
1. Modifying Outlets
    1. From Home press the center button to enter the main menu.  SELECT Setup → Outlet Setup → Manage Outlets
    1. Use the UP and DOWN arrows to chose which of the four outlets you would like to edit (**On the AquaBus, the outlets are numbered 1, 2, 3, 4, arranged as top left, top right, bottom left, bottom right, respectively**)
    1. Press SELECT to edit the desired outlet.
    1. Name: Use the RIGHT and LEFT arrows to move between character places, and the UP and DOWN arrows to change each character.  Once finished with your edits for each line, press SELECT or the right functional key labeled SAVE
    1. Ctrl Type: Use the UP/DOWN arrows to change type.  Use “Advanced” to modify your own code for this outlet, or choose a pre-programmed type (eg. “Heater” or “Chiller”)
    1. Icon: Use the UP/DOWN arrows to change icon.  Choose something relevant to the equipment utilizing the outlet (eg. for a Heater, choose “Thermometer”; for a Chiller, choose “Fan”)
    1. Addr: Refers to which outlet you are Modifying.
1. Programming Outlets
    1. From the “Outlet Setup” menu, choose “Program Outlets”.  Again choose which outlet you’d like to program and press SELECT.
    1. UP/DOWN arrow to SELECT which outlet you want to program.  The program will vary depending on which preset you chose or if you chose “Advanced”
    1. “Heater” and “Chiller” preset programs have four lines:
      Fallback: On / Off (Choose “Off” if your heater/chiller doesn’t have an internal thermostat  
      Temp Probe: Tmp  
      Outlet On: (The temp to turn your heater or chiller on)  
      Outlet Off: (The temp to turn your heater or chiller off)  
    1. “Advanced” program specific for our Heater and Chiller
      Fallback: OFF  
      Set: OFF  
      If Tmp < (desired temp)  
	    Then ON  
1. Controlling Outlets
    1. From the Home screen, press the center round button → “Control/Status” → “Manual Control”
    1. Use UP/DOWN arrows to choose which outlet you’d like to control and SELECT
    1. Choose ON, OFF, or AUTO
        1. ON turns on the outlet regardless of programming
        1. OFF turns off the outlet regardless of programming
        1. AUTO uses the set program to determine ON/OFF status of outlet

<a name="classic_dashboard"></a> **Apex Classic Dashboard (no internet needed)**

1. Connect Apex to the computer using the steps above for [PC](#pc) or [Mac](#mac)
1. Open the Classic Dashboard by opening a new browser and typing into the address bar: http://10.0.2.75 (for PC) or http://192.168.2.50 (for Mac)
1. Classic Dashboard
    1. Observe current and recorded temperature
    1. Manually turn on/off your outlets/devices
    1. Set your outlets/devices to automatic programming
1. Modifying Outlet
    1. Click “Configuration” → Outlet Setup
    1. Select Base Outlet 1,2,3,or 4
    1. Outlet Name: name the outlet for the device which will be plugged in (ex. Heater, chiller, etc)
    1. Control type: match this to the device type or choose Advanced
    1. Icon: useful visual on the Display Module, match with device used (ex. Heater = thermometer, Chiller = fan)
    1. Log: ENABLE
1. Programming Outlets
    1. From the home dashboard or Outlets page, click the small gear symbol to adjust program settings.
    1. Choose the program type: ex. “Heater” or “Chiller” or Advanced
      1. Heater and Chiller types have four preset lines:  
        Fallback: On / Off (Choose “Off” if your heater/chiller doesn’t have an internal thermostat  
        Temp Probe: Tmp  
        Outlet On: (The temp to turn your heater or chiller on)  
        Outlet Off: (The temp to turn your heater or chiller off)  
    - Probe name: must match the probe input setup name (ex. “Tmp” for temperature probe)
     1. Choose the “Advanced” program type to have more control over your device program  
      Fallback: OFF  
      Set: OFF  
      If Tmp < (desired temp)  
  	  Then ON  
1. Controlling Outlets
    1. From the Home screen, press the center round button → “Control/Status” → “Manual Control”
    1. Use UP/DOWN arrows to choose which outlet you’d like to control and SELECT
    1. Choose ON, OFF, or AUTO
       1. ON turns on the outlet regardless of programming
       1. OFF turns off the outlet regardless of programming
       1. AUTO uses the set program to determine ON/OFF status of outlet

<a name="references"></a> **Apex References:**  
- https://www.neptunesystems.com/getstarted/apex-el/
- https://www.neptunesystems.com/getstarted/apexng/apex-wifi/pc-wifi-el/
- Help Service: Neptune Systems Contact Number:
  - (408) 779-4090 (press 1, then press 1 again to be transferred to a Tech Representative)
- [Apex Jr. Get Started Guide](https://www.neptunesystems.com/getstarted/apexjr/)
- [Apex Comprehensive Reference Manual (Apex, Apex Lite, Apex Jr)](https://www.neptunesystems.com/downloads/docs/Comprehensive_Reference_Manual.pdf)
- [Aquacontroller Apex Jr Quick Start Guide](https://www.neptunesystems.com/downloads/docs/AquaController-Apex-Jr-Quickstart.pdf)
- [Apex Jr Ultra-Quick Setup Guide](https://www.neptunesystems.com/downloads/docs/Quick-Start-Apex-Jr-Fullsheet-v1-web.pdf)
- [EnergyBar 4 Setup Guide](https://www.neptunesystems.com/downloads/docs/EB4_manual.pdf)


# <a name="Battery"></a> **Connecting the Battery**

1. Unscrew the cap of the sealed battery compartment on the underside of the respirometer and locate the red and black cables.  Attach the red clip to the positive terminal (marked in red) on the battery and the black clip to the negative terminal (marked in black).  Test your connection and battery power by turning the switch on the other side of battery compartment **clockwise**.  The conveyor belt should start moving at a quick pace.  Turn the switch off.  
1. If the belt does not move or moves slowly, the battery needs to be switched out and recharged.  
1. As an additional check, you can unscrew a chamber base, insert a stir bar in the center divet of the base, then reseal the chamber.  Place the chamber in one of the chamber slots and note the rotation speed of the stir bar.  If the stir bar is spinning slowly or not at all, the battery needs to be switched out and recharged.  

1. Place the connected battery inside the compartment **gently** and screw the lid on tightly, making sure the o-ring is properly positioned.  Use a boa grip to tighten the lid with 1-2 quarter turns, then wrap with parafilm around the lid to seal the cap.
1. The connection point of the black wire is very delicate.  Rough handing or too much tension on the wires from twisting may disconnect the wire from its base, requiring soldering to reattach the the metal foot of the wire to the metal point on the base.  If this disconnectin occurs, see [Troubleshooting](#Troubleshooting).  
1.  Once the battery is placed inside, and everything is sealed, do one last check of power to make sure the motor is running (observe the black bands moving along their tracks at quick speed), then turn it off to conserve the battery until you're ready to start your runs.

1. Once you are sure the battery compartment is water tight, submerge the respirometer in the cooler's water bath.  

1. Situate the heater so it's fully submerged but not touching the respirometer stand or the Apex temp probe, and away from the battery compartment if possible.  
1. Consider the best placement of the temp probe, heater, and chiller outflow for adequate water monitoring and circulation.  Ex. Temp probe along the back of the cooler, centered.  The heater suction cupped on one far side of the cooler.  The chiller inflow and outflow placed on the opposide far side of the cooler.

# <a name="Oxy10"></a> **Oxy10 Setup**

Below is an example of the entire set-up. This can be modified to be specific to whatever lab or space you are in, but the **electronics need to be completely dry and far above/away from any potential water leak or water source**.  

![labeledoxysetup](https://github.com/Putnam-Lab/Lab_Management/blob/master/Lab_Resourses/Equipment_Protocols/Equip_Images/resp-setup-total.jpg?raw=true)

Be very delicate with the oxygen probes.  Leave the cap on the end when not in use and do not scratch the tip.  The oxygen cord should never be coiled too tightly or bent, or the sensor will break.

1.    Insert each numbered Temp probe into the corresponding Temp port (lower ports) on the Oxy-10 by aligning the red dots and pushing gently until the dots meet.
1.    Remove the **black caps on the Oxy-10 Oxygen ports**, and the **red caps on the O2 probes** and place all caps in the bag labeled “Oxy-10 ST Caps”.
1.    Insert each numbered O2 probe into the corresponding O2 port (upper ports) on the Oxy-10 by aligning the metal pin on the port with the opening on the probe end.  Push in and turn the probe clockwise to catch the pin.
1.    Leave the black cap on the O2 probe until you’re ready to use the probe, then place these caps in the bag labeled “Oxygen Sensor Caps”.
1.    Attach the power supply to the lower port on the back of the Oxy-10 by inserting the connector and screwing until finger tight.
1.    Connect the domestic or appropriate international plug to the power supply and then plug into an electrical outlet.
1.    Plug the USB connector cord into your computer and the other end into the Oxy-10


![Oxy10 Back](https://github.com/Putnam-Lab/Lab_Management/blob/master/images/oxy10-back.JPG?raw=true)

# <a name="Software Setup"></a> **Software Setup**

### PreSens Measurement Studio 2 Software Setup

Perform instructions in the correct order!!

## Set up
1.    Connect `OXY10` to a power source

![Oxy10 Front](https://github.com/Putnam-Lab/Lab_Management/blob/master/images/oxy10_front.JPG?raw=true)

2.   Close all applications on the computer (PC ONLY)
3.    Connect `OXY10` to the computer
4.    Launch the `PreSens Measurement Studio 2` Program on the computer
5.    Remove sensor covers and connect to `OXY10`


## Oxygen sensor installation

1. Line up notch on the side of the cable to the opening in the port
1. Push in the metal part on the cord and guide the notch through the grooves
	- Be careful when inserting, never force it. If inserting correctly, the ports will align without resistance.

![Oxy10 Fiber Optic Probe Connections](https://github.com/Putnam-Lab/Lab_Management/blob/master/images/oxy10_fiberopticprobes.png?raw=true)


## Temperature sensor installation

1. Line up red dots on the cable and the port
1. Make sure to slide into the port straight
	- Be careful when inserting, never force it. If inserting correctly, the ports will align without resistance.

![Oxy10 Temperature Probe Connections](https://github.com/Putnam-Lab/Lab_Management/blob/master/images/oxy10_tempprobes.png?raw=true)


## When Software Opens

1.    Check side of screen for device name text indicating the device is connected:
```
OXY-10 ST, 02
SABD0000000001
```
2.    Click on device name and it will open the following screen

![Oxy10 Instrument Setup](https://github.com/Putnam-Lab/Lab_Management/blob/master/images/oxy10_setinstrument.png?raw=true)  

## Setting up channels

Each Channel will run an individual sensor. Each Channel requires the following 3 things to be set:
1. Measurement
2. Sensor
3. User
4. Running the program

#### 1. How to make a new Measurement:

Note: Before beginning your measurements, you must calculate the appropriate Oxygen Saturation Point for your samples collected.

1.		 Open the PreSens program on your computer
2.	 On the left sidebar, select "OXY-10 ST, O2" (The 10 available channels should show up in a drop down on the sidebar).
3.   Click `Measurements` on the top tool bar
4.    Then click `New`
		- If you are using all 10 sets of O2 and Temp, you will need to create and title 10 measurements per recording run.  Give unique, descriptive names to help manage and organize your data.
5.    Assign a new name and click `Save`
6.		 Once all your new measurements are created, you need to assign them to each channel on the Oxy-10.  Click on the measurement title you created for Channel 1, select Channel 1 on the sidebar, then click `Assign to` to link the channel with your new measurement data file.  Do this for all 10 channels with your 10 unique measurement files.
7.   When you click each Channel on the sidebar, the "Measurement" description should now show your assigned data file name, and "Sensor" should show the appropriate corresponding O2 and Temp probes (Ex. Channel 1 should show "Sensor: OXY_CH1"). If any Channels do not have the correct probe number assigned, you must recalibrate the sensor using the provided detail sheet from the probe and by following the Probe Calibration steps, detailed below.

#### 2. How to change a sensor:

![Oxy10 Adding sensors](https://github.com/Putnam-Lab/Lab_Management/blob/master/images/oxy10_addsensor.png?raw=true)  

1.   Locate the correct calibration information to the specific sensor
2.    Click `Sensors` on the tool bar
3.    Then click `New`
4.   Fill out the correct calibration information as on the sheet
  - **Sensor Name**: OXY_CHX, where x = channel name
	- **Sensor type**: Pst7-10
	- **Batch ID**: Found on the barcode and under Batch number at the top of the calibration sheet
	- **Lot Nr**: Leave this empty
	- Calibration Data
	- **pATM**: Atmospheric Pressure from calibration sheet
	- **pATM Unit**: hPA
	- **Mode**: Humid
	- **Cal0**
	- **T0**
	- **Cal2nd**
	- **T2nd**
	- **O2-Cal2nd**: Add the value of oxygen solubility for the temperature and salinity of the water you are using (e.g., 203.2 µmol L-1 for 36 ppt at 27°C) - Measure seawater temperature and salinity prior to setting this and input those values.
	- **Oxygen unit**: μmol/L
	- Sensor Constants
	- **f1**: fill with value on calibration sheet
	- **dPhi1**: fill with value on calibration sheet
	- **dKSV1**: fill with value on calibration sheet
	- **m**: fill with value on calibration sheet
	- **dPhi2**: fill with value on calibration sheet
	- **dKSV2**: fill with value on calibration sheet
5.    Click `Save`
	-    Make sure the new sensor is highlighted and click the desired channel you want to pair with
6. Click `Assign`
	-    Your new `Sensor` should be paired with the desired channel

#### 3. How to set a user
1.   Click `Users` on the tool bar
2.    Choose default user with default parameters

# <a name="Run_Program_Export_Data"></a> **Running the Program and Exporting Data**

#### Running the program:
Ensure the channel has a measurement, sensor, and user (default)

1.    Click on the channel and click `Live View`
2.    Make sure to change:
    	- Units to **μmol/L**
		- Set Salinity to the value of the seawater you are measuring  (e.g. 36%)
3.    Then click `Start` on each subsequent channel
4.   Sensors will record every 1 second until you stop the program.
5.    To stop recording, click on the same first Channel you selected when starting, and in the Live View tab, click `Stop`. Select each subsequent Channel and click `Stop` until all Channels have stopped recording.

![Oxy10 Channel Setup](https://raw.githubusercontent.com/Putnam-Lab/Lab_Management/master/images/oxy10_channelsetup.JPG)  

![Oxy10 Data Traces](https://raw.githubusercontent.com/Putnam-Lab/Lab_Management/master/images/oxy10_datatraces.JPG)  

#### Exporting data:

1.		 In the Measurements tab, select all data files that were just used to record data by holding Ctrl and clicking each file, then click “Export”.
2.	 For your first data file, select the file type as "CSV" or "Excel", then select a target location to store your exported file by clicking the “…” to the right of the Target field.  Click "Save".  Repeat for all subsequent files.
3.	 Once all files have been assigned to a target storage location (all lights next ot the file names will change from red to green as the corresponding file has been assigned), click "Export".  Once the export has finished, click "OK".
4. 	When files are downloaded, make sure to open a few of them to see that there is full data throughout the allotted time, there is consistency in the column names, etc. Sometimes files get distorted or download incorrectly so checking here you can resolve the issue by re-downloading them from PreSens.
5.  Save files from each run to Google Drive, or a flash drive, or both to make sure that if any files are lost from PreSens or on the computer you have a secure backup!


# <a name="Calibrate"></a> **Probe Calibration**

1.  In the Sensors tab, select "New".
2.  Type in the name for your sensor (Ex. OXY_CH1) and select the probe type listed on your probe description sheet (Ex. PSt7_10)
3.  Fill in the information as provided by the data sheet for the specific sensor you're calibrating.
4. Only use the information in the gray boxes for Phase Signal and Temperature.
5. Be sure to select the correct units for Temperature (Celcius) and Oxygen (umol/L or your preferrered units).
6. Note the User Signal Intensity: this value may be 0 or 1 depending on the specific sensor.
7. Batch ID breaks down into 4 number groups: first two digits are the Year, second two digits are the Month, third two digits are the Day, and the three digits after the dash are the Sequence.
8. Leave Lot Nr blank.
9.    Select the appropriate OXY_CH# probe and Channel #, then click “Assign to” to link the coupled O2 and Temp probes to each Channel.

# <a name="Stir"></a> **Stirring System Setup**
![Oxy10 Front](https://github.com/Putnam-Lab/Lab_Management/blob/master/images/oxy10_base.JPG?raw=true)  

Check all orings connecting the drive motor to the stirplate for cracks. Lubricate with silicon before each run as needed

1. Unscrew the cap of the sealed battery compartment on the underside of the respirometer and locate the red and black cables.  ADD PHOTO HERE Attach the red clip to the positive terminal (marked in red) on the battery and the black clip to the negative terminal (marked in black).  
	- The connection point of the black wire is very delicate.  Rough handing or too much tension on the wires from twisting may disconnect the wire from its base, requiring soldering to reattach the the metal foot of the wire to the metal point on the base.  If this disconnectin occurs, see [Troubleshooting](#Troubleshooting).  
1. Test your connection and battery power by turning the switch on the other side of battery compartment **clockwise**. ADD PHOTO HERE The stirring system should start moving at a quick pace.  Turn the switch off.  
    - If the system does not move or moves slowly, the battery needs to be switched out and recharged.  
    - As an additional check, you can unscrew a chamber base, insert a stir bar in the center divet of the base, then reseal the chamber.  Place the chamber in one of the chamber slots and note the rotation speed of the stir bar.  If the stir bar is spinning slowly or not at all, the battery needs to be switched out and recharged.  ADD PHOTO HERE

1. Place the connected battery inside the compartment **gently** and screw the lid on tightly, making sure the o-ring is properly positioned.  Use a boa grip to tighten the lid with 1-2 quarter turns, then wrap with parafilm around the lid to seal the cap. ADD PHOTO HERE

    -  Once the battery is placed inside, and everything is sealed, do one last check of power to make sure the motor is running (observe the black bands moving along their tracks at quick speed), then turn it off to conserve the battery until you're ready to start your runs.

1. Once you are sure the battery compartment is water tight, submerge the respirometer in the cooler's water bath and look for excessive bubbles.  

1. Situate the heater so it is fully submerged but not touching the respirometer stand or the Apex temp probe, and away from the battery compartment if possible.  
    - Consider the best placement of the temp probe, heater, and chiller outflow for adequate water monitoring and circulation.  Ex. Temp probe along the back of the cooler, centered.  The heater suction cupped on one far side of the cooler.  The chiller inflow and outflow placed on the opposide far side of the cooler. ADD PHOTO HERE

# <a name="Chambers"></a> **Filling and Securing Chambers**

![Oxy10 Front](https://github.com/Putnam-Lab/Lab_Management/blob/master/images/oxy10_singlechamber.JPG?raw=true)
![Oxy10 Front](https://github.com/Putnam-Lab/Lab_Management/blob/master/images/oxy10_chamberbase.JPG?raw=true)


1. Unscrew the bottom from a chamber and place a magnetic stir bar in the center divet. Once the source water is at the desired temperature, submerge the chamber top and bottom and shake off or wipe away any air bubbles.   - ADD PHOTO HERE
    - If including organisms, secure them in the bottom of the chamber before screwing the top and bottom together until **hand tight**.  Check again for bubbles and remove any as necessary.  **Record the time of when you seal each chamber** and leave submerged to maintain temperature until ready to secure on the respirometer.  ADD PHOTO HERE
    - The probes will need to reach the submerged chamber without straining the wire, [insert the probes into the chamber](#Probes) at this time before placing the chambers onto the respirometer.
- ADD PHOTO HERE

1. Use the screw key to loosen the bolts of the holding plates on the respirometer just until the plates are moveable but not detached.  
- ADD PHOTO HERE

1. Place the chamber in a chamber slot and then <a name="Probes"></a> insert the Oxy-10 probes.

![Oxy10 Chambers with Probes](https://github.com/Putnam-Lab/Lab_Management/blob/master/images/oxy10_chambers.JPG?raw=true)

- Be careful to not damage the probes or introduce bubbles to the chamber, insert the temperature probe into the larger probe port and gently guide it down until it fits snuggly and securely.
- Once the temperature probe is in place, gently guide the oxygen probe into its port, being careful to not scratch the probe tip.  The probe tip should be at least 2 cm into the chamber, but can be inserted farther, as long as the probe isn't touching any organisms or objects in the chamber.
    - ADD PHOTO HERE
1. Check for bubbles inside the chamber.  If any bubbles are present, remove them at this time.  
      - You may be able to guide small bubbles out of the airlock seal on the chamber lid by unscrewing the airlock seal and guiding the bubbles out, then rescrewing on the airlock finger tight.
      - ADD PHOTO HERE  
      - Note that if cooler water is not from the same source as your second bin water (used to fill the chambers), you must remove air bubbles only while submerging the chamber in the second bin's water.
      - If there are large bubbles or a large quantity of bubbles after moving the chamber, remove the chamber from the respirometer, place back into the source water, unscrew the bottom to wipe or shake away any bubbles, then close and re-secure the chamber.  Note the new time of when you sealed the chamber.  


2. Repeat for all 10 chambers, filling at least one chamber with only water, without any organisms, for a "BLANK" dataset to account for background oxygen flux.

1. Once all chambers are in place, with probes and no bubbles, tighten the screws on the respirometer finger tight, making sure the holding plates are over the chamber bottoms.  - ADD PHOTO HERE Test if the chambers are secure by attempting to gently move the chambers.  There should be no movement.  

1. Once all chambers are secure, turn the stir system power switch **clockwise** to on, and check for proper stir bar placement.  If any stir bars are not spinning or are out of place, loosen the bolt and gently jiggle the chamber until the bar is reset in the center of the divot.
    - If necessary, remove the chamber, place back into the source water, unscrew the bottom to move the stir bar into place, then close and re-secure the chamber.  Note the new time of when you seal the chamber.  

# <a name="Final_Checks"></a> **Final Chamber Checks**

Last checks before starting to record data using the PreSens program:  

1. Stir bars spinning in place and at normal speed (If not, the battery needs to be switched out and recharged - see [Take-Down](#Take-Down) instructions for proper procedures)  

1. Chambers are securely fastened on the respirometer stand  

1. No bubbles are present inside the chambers  

1. The correct probes are in the correct chambers (Every numbered temperature probe is with its corresponding numbered oxygen probe and in the numbered chamber you've assigned to the probe pair). Make sure you have recorded this on your datasheet.  

1. The probes are snug and secure in the chambers  


# <a name="Water_Change"></a> **Water Changeover for Additional Runs**

If using the respirometer at more than one temperature (i.e. Thermal Performance Curves)

1. Once all the chambers are out of the source water and you've started recording data for your current run, do a water change (if necessary) of your source water and program the Apex to your new desired temperature.  

1. Once you've stopped recording data for your current run, program the Apex for the water bath to your new desried temperature (same as the source water).  

1. While you wait for the temperature in your bath water to stabilize, collect water samples, if needed for your data set, or start [preparing the chambers](#Chambers) with the new source water using the same steps above.

# <a name="Removing"></a> **Removing Chambers from Respirometer**

1. Turn off the battery by turning the switch **counter-clockwise**.  

1. Remove the probes and carefully place or drape them in a secure location.  

1. Unscrew the holding plates and remove the chambers.  
1. **YOU MUST MEASURE THE TOTAL VOLUME OF WATER IN THE CHAMBER IN ORDER TO CALCULATE THE RATE TAKING INTO ACCOUNT THE SAMPLE WATER DISPLACEMENT**

1. If saving water samples, note the time when you either unscrew the airlock seal on the lid (best method for pouring the water into another container) or unscrew the bottom (keep the chamber upside down for this method).  

1. Unscrew the bottom of the chamber to fully drain the water, then place the two chamber parts in the source water.  
    1. If you have any organisms secured in the bottom of the chamber, be as swift as possible to minimize time spent out of the water.  

1. Keep the chamber lid very near or loosely on top of the chamber bottom, unscrewed, to not confuse which organism goes in which numbered chamber, while still allowing for water flow until you're ready to move the chambers to the water bath.

1. Once the source water and water bath are at the desired temperature, follow the same steps to [fill and secure the chambers](#Chambers) to prepare for your next run.  

# <a name="Take-Down"></a> **Respirometer Take-Down and CleanUp**

1. Turn off the Apex and
2. Turn off the power to the respirometer battery by turning the switch **counter-clockwise**.

1. Remove the probes and carefully place or drape them in a secure location.

1. Unscrew the holding plates and remove the chambers.  
    1. If collecting water samples, note the time when you either unscrew the airlock seal on the lid (best method for pouring the water into another container) or unscrew the bottom (keep the chamber upside down for this method).  

1. Remove any organisms from the chambers and store or dispose of those organisms as appropriate.

1. Drain the source water bin and fill with fresh water.

1. Place the unsealed chambers, stir bars, heaters, aquarium pumps, and temperature probes in the bin to soak, keeping all outlet plugs out and away from the water.  
    1. Let the pumps run for some time (without the chiller being on) to flush fresh water through the hoses.  

1. Taking the respirometer out of the water bath  
    1. When lifting the stand out of the bath, keep it tilted slightly so that the lid to the battery compartment is lower than the opposite side with the power switch.  
    1. If any water seeped into the battery compartment, this will force the water away from other electrical components of the compartment.  
    1. Drain the water bath and refill with fresh water.  Place the respirometer in the fresh water to soak.  

1. While letting everything soak, collect and organize the Oxy10 probes so the Oxygen probes are together and the temperature probes are together  
    1. Fill two beakers with DI water and gently drape the probes over a line or surface so the probe tips (any portion exposed to the water) are submerged in DI, with O2 probes in one beaker and temp probes in another.  

1. Breaking down the respirometer after soaking  
    1. Lift the respirometer out of the freshwater bath using the same tilt method as before.
    1. Remove the parafilm and use a boa grip to loosen the cap utnil you can unscrew it by hand.  
    1. Take out the battery and detach the positive and negative clips from the battery terminals.  
    1. Check for any leaked water by wiping a towel, cloth, or chemwipe around the inside of the compartment.  
    1. Place the respirometer on a stable surface to dry overnight (with the battery compartment opening-side down).  

1. Using a clean rag or chemwipe with ethanol, wipe down the cord of each Oxy10 probe to remove any remaining salt deposits or particulates, then recoil the probes and store in their original labeled bags.  
	- Be extremely careful when handling probes and make sure to avoid touching the Oxygen probe tips as they are the most sensitive.


12. Leave items to soak overnight if possible, then remove from the fresh water and place on a clean surface to dry.  


# <a name="Troubleshooting"></a> **Troubleshooting**

**If PreSens Measurement Studio 2 crashes after plugging in the Oy10, or PreSens shows this error message after plugging in the Oxy10 first: "Error while loading the sensors.  The application will now terminate."**  
- First, Shut down the program and reload it.
- If that doesn't work, shut down the computer and reboot, then open the program.
- If a connection still cannot be made, update the PreSens Measurement 2 software [here](https://www.presens.de/support-services/download-center/software.html)
- Uninstall the PreSens Software from your computer (once reinstalled, you will likely have to recalibrate the O2 probes)
- On the webpage, under O~2~, click the topmost link
- Login (or Register, if you prefer your own user login)
- The download should begin automatically, and once it's loaded, open the file and run through the guided download steps
- Open PreSens on your computer and plug in the Oxy10. The sensors should now display on the left sidebar
- Follow steps for [Probe Calibration](#Calibrate)

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

**Disconnected battery wire**

Access the battery compartment by simply unscrewing (rotating counterclockwise) the PVC tubing which holds the battery and connections. No screwdrivers are required.
A temporary hold may be aquired using electrical tape until you can solder the affected wire.
A soldering iron with a fine tip is needed to reconnect the end of the wire to a small square attachment point inside the battery compartment. Before soldering, test the appropriate connection point by holding the end of the wire to the metal connection point and turning the motor ON.
Do NOT touch any metal while the motor is on.
Once a connection point is found, use a heated soldering iron and solder to seal that connection. Let rest for a few minutes, then test the motor by turning it ON again.

# <a name="Chamber Oring Replacement"></a> **ChamberOring** (make video)

# <a name="Stir System Oring Replacement"></a> **StirSystemOrings** (make video)

<a name="references"></a> **References**  
* [Oxygen Dipping Probe DP-PSt7 specifications](https://www.presens.de/products/detail/oxygen-dipping-probe-dp-pst7)
* [Pt100 Temperature Sensor specifications](https://www.presens.de/products/detail/pt100-temperature-sensor)
* [Specification Brochure](#Images/Presens_O2_and_Temp_specs)
* [Oxygen Optical Sensors and Meters Brochure](https://www.presens.de/fileadmin/user_upload/brochures/190731_cawe_Presens_O2_Broschuere_07-19_dv3_web.pdf)
* [Silbiger Lab Protocol](https://github.com/SilbigerLab/Protocols/tree/master/Physiological_Parameter_Protocols/Protocols/Respirometry_Protocol)
