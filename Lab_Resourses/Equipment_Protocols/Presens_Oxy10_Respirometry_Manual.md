# Respirometer Manual

[PreSens Oxy-10 ST](https://www.presens.de/products/detail/oxy-10-st-g2)

Protocol for set-up and take-down of the respirometer in conjunction with the Oxy-10 probes and PreSens program ([manual found here](/PreSens_SOP.md)), and using an Apex controller for temperature manipulation and control (separate manual).


**Contents**  
- [**Supplies**](#Supplies)
- [**Water Bath Setup**](#Bath)    
- [**Oxy10 Setup**](#Oxy10)
- [**Software Setup**](#Software_Setup)    
- [**Probe Calibration**](#Calibrate)       
- [**Stirring System Setup**](#Stir)  
- [**Filling and Securing Chambers**](#Chambers)  
- [**Inserting Oxy-10 Probes**](#Probes)  
- [**Final Chamber Checks**](#Final_Checks)  
- [**Water Changeover for Additional Runs**](#Water_Change)  
- [**Removing Chambers from Respirometer**](#Removing)  
- [**Take-Down and Clean Up**](#Take-Down)  
- [**Troubleshooting**](#Troubleshooting)
- [**Chamber Oring Replacement**](#ChamberOring)
- [**Stir System Oring Replacemen**](#StirSystemOrings)   


![Oxy10 Back](https://github.com/Putnam-Lab/Lab_Management/blob/master/images/oxy10-back.JPG?raw=true)
![Oxy10 Adding sensors](https://github.com/Putnam-Lab/Lab_Management/blob/master/images/oxy10_addsensor.png?raw=true)
![Oxy10 Sensor Box](https://github.com/Putnam-Lab/Lab_Management/blob/master/images/oxy10_box.JPG?raw=true)
![Oxy10 Chambers with Probes](https://github.com/Putnam-Lab/Lab_Management/blob/master/images/oxy10_chambers.JPG?raw=true)
![Oxy10 Channel Setup](https://github.com/Putnam-Lab/Lab_Management/blob/master/images/oxy10_channelsetup.JPG?raw=true)
![Oxy10 Data Traces](https://github.com/Putnam-Lab/Lab_Management/blob/master/images/oxy10_datatraces.JPG?raw=true)
![Oxy10 Fiber Optic Probe Connections](https://github.com/Putnam-Lab/Lab_Management/blob/master/images/oxy10_fiberopticprobes.JPG?raw=true)
![Oxy10 Front](https://github.com/Putnam-Lab/Lab_Management/blob/master/images/oxy10_front.JPG?raw=true)
![Oxy10 Instrument Setup](https://github.com/Putnam-Lab/Lab_Management/blob/master/images/oxy10_setinstrument.png?raw=true)
![Oxy10 Temperature Probe Connections](https://github.com/Putnam-Lab/Lab_Management/blob/master/images/oxy10_tempprobes.png?raw=true)
![Oxy10 Front](https://github.com/Putnam-Lab/Lab_Management/blob/master/images/oxy10_chamberbase.JPG?raw=true)
![Oxy10 Front](https://github.com/Putnam-Lab/Lab_Management/blob/master/images/oxy10_base.JPG?raw=true)
![Oxy10 Front](https://github.com/Putnam-Lab/Lab_Management/blob/master/images/oxy10_singlechamber.JPG?raw=true)




<a name="Supplies"></a> **Supplies**

- [Oxygen meter and Sensors PreSens Oxy10](https://www.presens.de/products/detail/oxy-10-st-g2)
- [Respirometer stand (with 4 screw-on legs) or underwater stirring plate](https://github.com/Putnam-Lab/Lab_Management/blob/master/images/oxy10_base.JPG?raw=true)
- [Silicon - DuPont Molykote 112 High Performance Silicon Food Grade](https://www.mcmaster.com/1204K42/)
- [Stir system large orings - Oil-Resistant Buna-N O-Ring
3 mm Wide, 165 mm ID](https://www.mcmaster.com/1302N209/)
- [Stir system small orings - Oil-Resistant Buna-N O-Ring
3 mm Wide, 125 mm ID](https://www.mcmaster.com/1302N183/)
- [Chamber orings]() 
- [Chambers](https://github.com/Putnam-Lab/Lab_Management/blob/master/images/oxy10_singlechamber.JPG?raw=true) (10 can be measured at any one time with the Presens)
- [Magnetic stir bars x10](https://www.mcmaster.com/5678K155/)
- Chamber screw key
- [Battery](https://www.mcmaster.com/7448K13/) 
	- Height	2.4" Width	5.3" Depth	1.3"
- [Battery Charger](https://www.mcmaster.com/76025K15/)
- [strap wrench](https://www.mcmaster.com/54325A63/)
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

<a name="Bath"></a> **Water Bath Setup**

1. Place the coolers in close proximity to their respective chillers and within reach of the heaters and probes connected to the temperature controllers.  ADD PHOTO HERE Here Fill the second bin with the water you'll use to fill the chambers (here called "source water") and set up an Apex controller to control the temperature of that water.  ADD LINK TO APEX SETUP AND CODE HERE
1. Fill the cooler with source water, enough to fully submerge the chambers once the stirring rack and chambers are placed inside, and set up the Apex controller to control the temperature of that water.

1. Connect tubing to the inflow and outflow ports on your chillers.  At the free end of the inflow tube, attach an aquarium pump.  Place the pump and the free end of the outflow tube in the cooler (repeat for the second bin).  Power on the pump and check for water flow.
ADD PHOTO HERE

1. Add the heater to the cooler **The heater(s) must be fully submerged to the indicated locations for your brand of heater before powering on, or they can melt or crack** 
ADD PHOTO HERE 

1. Place the Apex temperature probe in the water and check that the display (or apex.local dashboard on your computer) is showing an accurate current temperature reading.  
ADD PHOTO HERE
  
1. Before plugging the chiller and heater into the Apex EnergyBar, make sure the EnergyBar outlets are manually OFF.  Set these outlets to AUTO only once you've programmed the outlets for your desired temperature. 
ADD PHOTO HERE 

1. While you wait for the bath and source water to reach the desired temperature, set up the Oxy10 and prepare the stirring system and chambers.  

<a name="Oxy10"></a> **Oxy10 Setup**
ADD SECTION HERE ON SETUP AWAY FROM WATER AND ADDING ALL THE PROBES

<a name="Software Setup"></a> **Software Setup**

### PreSens Measurement Studio 2 Software Setup

Perform instructions in the correct order!!

Set up
Connect OXY10 to a power source
Close all applications on the computer (PC ONLY)
Connect OXY10 to the computer
Launch the PreSens Measurement Studio 2 Program on the computer
Remove sensor covers and connect to OXY10
Oxygen sensor installation
Line up notch on the side of the cable to the opening in the port
Push in the metal part on the cord and guide the notch through the grooves


Temperature sensor installation
Line up red dots on the cable and the port
Make sure to slide into the port straight


When Software Opens
Check side of screen for device name text indicating the device is connected:
OXY-10 ST, 02
SABD0000000001
Click on device name and it will open the following screen


Setting up channels
Each Channel will run an individual sensor. Each Channel requires the following 3 things to be set:

Measurement
Sensor
User
1. How to make a new Measurement:
Click Measurements on the top tool bar
Then click New
Assign a new name and click Save
Make sure the new Measurement is highlighted and click the desired channel you want to pair with
Click Assign
Your new Measurement should be paired with the desired channel
2. How to change a sensor:
Locate the correct calibration information to the specific sensor
Click Sensors on the tool bar
Then click New
Fill out the correct calibration information as on the sheet
Sensor Name: OXY_CHX, where x = channel name
Sensor type: Pst7-10
Batch ID: Found on the barcode and under Batch number at the top of the calibration sheet
Lot Nr: Leave this empty
Calibration Data
pATM: Atmospheric Pressure from calibration sheet
pATM Unit: hPA
Mode: Humid
Cal0
T0
Cal2nd
T2nd
O2-Cal2nd: Add the value of oxygen solubility for the temperature and salinity of the water you are using (e.g., 203.2 µmol L-1 for 36 ppt at 27°C) - Measure seawater temperature and salinity prior to setting this and input those values.
Oxygen unit: μmol/L
Sensor Constants
f1: fill with value on calibration sheet
dPhi1: fill with value on calibration sheet
dKSV1: fill with value on calibration sheet
m: fill with value on calibration sheet
dPhi2: fill with value on calibration sheet
dKSV2: fill with value on calibration sheet


Click Save
Make sure the new sensor is highlighted and click the desired channel you want to pair with
Click Assign
Your new Sensor should be paired with the desired channel
3. How to set a user
Click Users on the tool bar
Choose default user with default parameters
How to Launch and Record Measurements:
Ensure the channel has a measurement, sensor, and user (default)
Click on the channel and click Live View
Make sure to change:
Units to μmol/L
Set Salinity to the value of the seawater you are measuring (e.g. 36%)
The click Start


<a name="Calibrate"></a> **Probe Calibration**


<a name="Stir"></a> **Stirring System Setup**

Check all orings connecting the drive motor to the stirplate for cracks. Lubricate with X silicon

1. Unscrew the cap of the sealed battery compartment on the underside of the respirometer and locate the red and black cables.  ADD PHOTO HERE Attach the red clip to the positive terminal (marked in red) on the battery and the black clip to the negative terminal (marked in black).  
	1. The connection point of the black wire is very delicate.  Rough handing or too much tension on the wires from twisting may disconnect the wire from its base, requiring soldering to reattach the the metal foot of the wire to the metal point on the base.  If this disconnectin occurs, see [**Troubleshooting**](/Coral_Physiological_Parameter_Protocols/Protocols/Respirometry_Protocol/Troubleshooting_Guide.md).  
2. Test your connection and battery power by turning the switch on the other side of battery compartment **clockwise**. ADD PHOTO HERE The stirring system should start moving at a quick pace.  Turn the switch off.  
    1. If the system does not move or moves slowly, the battery needs to be switched out and recharged.  
    1. As an additional check, you can unscrew a chamber base, insert a stir bar in the center divet of the base, then reseal the chamber.  Place the chamber in one of the chamber slots and note the rotation speed of the stir bar.  If the stir bar is spinning slowly or not at all, the battery needs to be switched out and recharged.  ADD PHOTO HERE

1. Place the connected battery inside the compartment **gently** and screw the lid on tightly, making sure the o-ring is properly positioned.  Use a boa grip to tighten the lid with 1-2 quarter turns, then wrap with parafilm around the lid to seal the cap. ADD PHOTO HERE

    1.  Once the battery is placed inside, and everything is sealed, do one last check of power to make sure the motor is running (observe the black bands moving along their tracks at quick speed), then turn it off to conserve the battery until you're ready to start your runs.

1. Once you are sure the battery compartment is water tight, submerge the respirometer in the cooler's water bath and look for excessive bubbles.  

1. Situate the heater so it is fully submerged but not touching the respirometer stand or the Apex temp probe, and away from the battery compartment if possible.  
    1. Consider the best placement of the temp probe, heater, and chiller outflow for adequate water monitoring and circulation.  Ex. Temp probe along the back of the cooler, centered.  The heater suction cupped on one far side of the cooler.  The chiller inflow and outflow placed on the opposide far side of the cooler. ADD PHOTO HERE

<a name="Chambers"></a> **Filling and Securing Chambers**

1. Unscrew the bottom from a chamber and place a magnetic stir bar in the center divet. Once the source water is at the desired temperature, submerge the chamber top and bottom and shake off or wipe away any air bubbles.  
    1. If including organisms, secure them in the bottom of the chamber before screwing the top and bottom together until **hand tight**.  Check again for bubbles and remove any as necessary.  **Record the time of when you seal each chamber** and leave submerged to maintain temperature until ready to secure on the respirometer.  ADD PHOTO HERE
    1. The probes will need to reach the submerged chamber without straining the wire, [insert the probes into the chamber](#Probes) at this time before placing the chambers onto the respirometer.

1. Use the screw key to loosen the bolts of the holding plates on the respirometer just until the plates are moveable but not detached.  

1. Place the chamber in a chamber slot and then <a name="Probes"></a> insert the Oxy-10 probes.
    1. Careful to not damage the probes or introduce bubbles to the chamber, insert the temperature probe into the larger probe port and gently guide it down until it fits snuggly and securely.
    1. Once the temperature probe is in place, gently guide the oxygen probe into its port, being careful to not scratch the probe tip.  The probe tip should be at least 2 cm into the chamber, but can be inserted farther, as long as the probe isn't touching any organisms or objects in the chamber.  
    1. Check for bubbles inside the chamber.  If any bubbles are present, remove them at this time.  
        1. You may be able to guide small bubbles out of the airlock seal on the chamber lid by unscrewing the airlock seal and guiding the bubbles out, then rescrewing on the airlock finger tight.  
        1. Note that if cooler water is not from the same source as your second bin water (used to fill the chambers), you must remove air bubbles only while submerging the chamber in the second bin's water.
    1. If there are large bubbles or a large quantity of bubbles after moving the chamber, remove the chamber from the respirometer, place back into the source water, unscrew the bottom to wipe or shake away any bubbles, then close and re-secure the chamber.  Note the new time of when you sealed the chamber.  

1. Repeat for all 10 chambers, filling at least one chamber with only water, without any organisms, for a "background" dataset.

1. Once all chambers are in place, with probes and no bubbles, tighten the screws on the respirometer, making sure the holding plates are over the chamber bottoms.  Test if the chambers are secure by attempting to gently jiggle the chambers.  There should be no movement.  

1. Once all chambers are secure, turn the power switch **clockwise** to turn on, and check for proper stir bar placement.  If any stir bars are not spinning or are out of place, loosen the bolt and gently jiggle the chamber until the bar is reset.
    1. If necessary, remove the chamber, place back into the source water, unscrew the bottom to move the stir bar into place, then close and re-secure the chamber.  Note the new time of when you seal the chamber.  

<a name="Final_Checks"></a> **Final Chamber Checks**

Last checks before starting to record data using the PreSens program:  

1. Stir bars spinning in place and at normal speed (If not, the battery needs to be switched out and recharged - see [**Take-Down**](#Take-Down) instructions for proper procedures)  

1. Chambers are securely fastened on the respirometer stand  

1. No bubbles are present inside the chambers  

1. The correct probes are in the correct chambers (Every numbered temperature probe is with its corresponding numbered oxygen probe and in the numbered chamber you've assigned to the probe pair)  

1. The probes are snug and secure in the chambers  


<a name="Water_Change"></a> **Water Changeover for Additional Runs**

If using the respirometer at more than one temperature  

1. Once all the chambers are out of the source water and you've started recording data for your current run, do a water change (if necessary) of your source water and program the Apex to your new desired temperature.  

1. Once you've stopped recording data for your current run, program the Apex for the water bath to your new desried temperature (same as the source water).  

1. While you wait for the temperature in your bath water to stabilize, collect water samples, if needed for your data set, or start [preparing the chambers](#Chambers) with the new source water using the same steps above.

<a name="Removing"></a> **Removing Chambers from Respirometer**

1. Turn off the battery by turning the switch **counter-clockwise**.  

1. Remove the probes and carefully place or drape them in a secure location.  

1. Unscrew the holding plates and remove the chambers.  

1. If collecting water samples, note the time when you either unscrew the airlock seal on the lid (best method for pouring the water into another container) or unscrew the bottom (keep the chamber upside down for this method).  

1. Unscrew the bottom of the chamber to fully drain the water, then place the two chamber parts in the source water.  
    1. If you have any organisms secured in the bottom of the chamber, be as swift as possible to minimize time spent out of the water.  

1. Keep the chamber lid very near or loosely on top of the chamber bottom, unscrewed, to not confuse which organism goes in which numbered chamber, while still allowing for water flow until you're ready to move the chambers to the water bath.

1. Once the source water and water bath are at the desired temperature, follow the same steps to [fill and secure the chambers](#Chambers) to prepare for your next run.  
    

<a name="Take-Down"></a> **Respirometer Take-Down and CleanUp**

1. Turn off the Apex's and respirometer battery by turning the switch **counter-clockwise**.

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

1. While letting everything soak, collect and organize the Oxy-10 probes so the Oxygen probes are together and the temperature probes are together  
    1. Fill two beakers with DI water and gently drape the probes over a line or surface so the probe tips (any portion exposed to the water) are submerged in DI, with O2 probes in one beaker and temp probes in another.  

1. Breaking down the respirometer after soaking  
    1. Lift the respirometer out of the freshwater bath using the same tilt method as before.
    1. Remove the parafilm and use a boa grip to loosen the cap utnil you can unscrew it by hand.  
    1. Take out the battery and detach the positive and negative clips from the battery terminals.  
    1. Check for any leaked water by wiping a towel, cloth, or chemwipe around the inside of the compartment.  
    1. Place the respirometer on a stable surface to dry overnight (with the battery compartment opening-side down).  

1. Using a clean rag or chemwipe with ethanol, wipe down the cord of each Oxy-10 probe to remove any remaining salt deposits or particulates, then recoil the probes and store in their original labeled bags.  
    1. Refer to the [**PreSens SOP**](/Coral_Physiological_Parameter_Protocols/Protocols/Respirometry_Protocol/PreSens_SOP.md) for proper handling and storage of the probes.  

1. Leave items to soak overnight if possible, then remove from the fresh water and place on a clean surface to dry.  