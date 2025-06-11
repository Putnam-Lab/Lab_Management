## Protocol for LICOR/logger calibration

### Materials and Equipment 

- LICOR LI-1500
- Apogee 
- Hobo Temperature/Light loggers + Hoboconnect app
- Lights + myAI app 
- Cooler
- Pump
- Chiller 
- PVC/egg crate 
- Zip ties 
- Windows computer


### Protocol 

1. Fill a tube with water and use the chiller to get the water to a specific temperature. Add the pump to circulate the water. 
2. Make some sort of stand using PVC and egg crate. Cut a hole in the center of the egg crate so the LICOR pendant can  be secured. Put the stand in the cooler.
3. Secure the lights to the cooler. Use the myAI app to set the light settings:
	- Sun up - 6am 
	- Sun down - 6pm
	- 4 hour ramp time 
	- 60% for all light intensities
4. Use the apogee to make sure the light is evenly spread over the stand. Move the lights around if neeced to evenly spread.
5. Follow the [LICOR LI-1500 Logging and Viewing Data Instructions](https://www.licor.com/env/support/LI-1500/topics/data.html)
6. On the LICOR, set it to log every 1 min. Set the logging to start +30mins from now. Once the LICOR is configured, ziptie it to a piece of PVC and put the LICOR/PVC through the bottom of the stand through the hole. 
	- Make sure the LICOR sensor standing up straight and is secure (ie won't fall over). 
	- Put the handheld LICOR device in a secure location where it won't fall or get wet. 
7. Using the HOBOmobile app and [User Guide](https://www.onsetcomp.com/sites/default/files/2023-05/21536-P%20MX2201%20and%20MX2202%20Manual.pdf), set the Hobo temperature/light loggers to log every 1 minute. Set the logging to start when the LICOR starts logging. Once all the loggers are configured, place them in the cooler on the stand around the LICOR sensor. 
8. Leave the setup for at least 24 hours. 
9. After 24 hours, stop the Hobo loggers and LICOR. Read off the data onto a windows computer (will not connect to a mac) following the [HOBOmobile](https://www.onsetcomp.com/sites/default/files/2023-05/21536-P%20MX2201%20and%20MX2202%20Manual.pdf) and [LICOR](https://www.licor.com/env/support/LI-1500/topics/data.html) manuals. 
10. Go [here](https://github.com/JillAshey/Astrangia_repo/blob/main/scripts/Light_Calibration.Rmd) to see the code for comparing Hobo and LICOR data.

### Pictures of set-up 

![](https://github.com/JillAshey/JillAshey_Putnam_Lab_Notebook/blob/master/images/licor_setup1.png?raw=true)

![](https://github.com/JillAshey/JillAshey_Putnam_Lab_Notebook/blob/master/images/licor_setup2.png?raw=true)

![](https://github.com/JillAshey/JillAshey_Putnam_Lab_Notebook/blob/master/images/licor_setup3.png?raw=true)

