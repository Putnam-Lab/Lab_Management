# PreSens Measurement Studio 2 Protocol
Last revised: 20180619 (K Wong)

**Perform instructions in the correct order!!**

## Set up
-	Connect `OXY10` to a power source
-	Close all applications on the computer (PC ONLY)
-	Connect `OXY10` to the computer
-	Launch the `PreSens Measurement Studio 2` Program on the computer
-	Remove sensor covers and connect to `OXY10`
-	Oxygen sensor installation
  - Line up notch on the side of the cable to the opening in the port
  - Push in the metal part on the cord and guide the notch through the grooves

![](https://github.com/Putnam-Lab/Lab_Management/blob/master/Equip_Images/oxy_probe.png?raw=true)


-	Temperature sensor installation
  - Line up red dots on the cable and the port
  - Make sure to slide into the port straight

![](https://github.com/Putnam-Lab/Lab_Management/blob/master/Equip_Images/temp_probes.png?raw=true)

## When Software Opens

-	Check side of screen for device name text indicating the device is connected:
```
OXY-10 ST, 02
SABD0000000001
```
-	Click on device name and it will open the following screen

![](https://github.com/Putnam-Lab/Lab_Management/blob/master/Equip_Images/software.png?raw=true)

## Setting up channels

Each Channel will run an individual sensor. Each Channel requires the following 3 things to be set:
1. Measurement
2. Sensor
3. User

#### 1. How to make a new Measurement:
-	Click `Measurements` on the top tool bar
-	Then click `New`
-	Assign a new name and click `Save`
-	Make sure the new Measurement is highlighted and click the desired channel you want to pair with
  - Click `Assign`
-	Your new `Measurement` should be paired with the desired channel

#### 2. How to change a sensor:
-	Locate the correct calibration information to the specific sensor
-	Click `Sensors` on the tool bar
-	Then click `New`
-	Fill out the correct calibration information as on the sheet
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

![](https://github.com/Putnam-Lab/Lab_Management/blob/master/Equip_Images/sensors.png?raw=true)

-	Click `Save`
-	Make sure the new sensor is highlighted and click the desired channel you want to pair with
  - Click `Assign`
-	Your new `Sensor` should be paired with the desired channel

#### 3. How to set a user
-	Click `Users` on the tool bar
  - Choose default user with default parameters

## How to Launch and Record Measurements:
-	Ensure the channel has a measurement, sensor, and user (default)
-	Click on the channel and click `Live View`
-	Make sure to change:
  - Units to **μmol/L**
  - Set Salinity to the value of the seawater you are measuring  (e.g. 36%)
-	The click `Start`
