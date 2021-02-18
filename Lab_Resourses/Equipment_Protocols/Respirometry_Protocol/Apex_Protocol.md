# Connecting the Apex Jr. and Apex El to a PC/Mac computer

**Contents:**  
- [Connecting to Apex Jr.](#connect_apex_jr)  
  - [Changing computer network settings](#network_settings)  
    - [PC](#pc)  
    - [Mac](#mac)  
- [Connecting to Apex El](#connect_apex_el)  
  - [Wireless connection to Local Dashboard](#wireless_computer_connection)  
  - [Link ApexEl to Apex Fusion](#apex_fusion_link)  
- [Display Module settings](#display_module_settings)  
- [Accessing the Apex Classic Dashboard](#apex_classic_dashboard)  
- [Apex set Up and Operating Procedures](#setup_and_sop)
  - [Materials](#materials)
  - [Apex Display Configuration](#apex_display_configuration)
  - [Apex Classic Dashboard (no internet needed)](#classic_dashboard)
  
- [References](#references)  

<a name="connect_apex_jr"></a> **Connecting to Apex Jr**  

<a name="network_settings"></a> **Changing Computer Network Settings**  

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

<a name="connect_apex_el"></a> **Connecting to Apex El**

1. Connect the ApexEL (base unit) to the Energy Bar (EB8):
  1. Connect the AquaBus cable into one of the two AquaBus ports on the base unit
  1. Connect the other end of the cable into one of the three AquaBus ports on the EB8
  - **Do not plug in Ethernet or any other modules including the Display Module at this time**
1. Plug in the EB8 to a power outlet
  1. The base unit status light will go from Green > Purple > Green > Orange > Blue
  1. The EB8 status light will flash rapidly while establishing communications with the base, then will turn solid Orange
1. LED State and Status
  - Off: Aquabus is not powered
  - Blinking Yellow: Aquabus is in boot loader mode and has not been configured by the Apex
  - Solid Yellow: Aquabus is in boot loader mode and has been configured by the Apex
  - Blinking Green: Aquabus is running but has not received commands from the Apex.   Outlets are in Fallback mode
  - Solid Green: Aquabus is running and is receiving commands from the Apex base unit

<a name="wireless_computer_connection"></a> **Wireless connection to the Apex Local Dashboard**  

1. Wait for the light on the base to turn Blue (indicating it is ready for a wireless connection)
    1. If the base unit light turns solid Orange instead of solid Blue, use a pin to press Reset on the unit for 10 seconds or until you see a Blue light.  Release the reset and let the Apex run through the lights until it stabilizes on Blue.
1. PC:  
    1. Click on the network settings icon in the bottom right hand corner of your screen  
1. Mac:  
    1. Click the wifi icon in the upper right corner of your screen
1. Select the Wi-Fi network called Apex Setup_### (where ### is the ApexEL’s serial number), select Connect
    1. It’s recommended to not select the “connect automatically” option
1. Once connected, type into browser http://172.16.0.1 or http://apex.local
1. Login with Username: admin and Password: 1234 and select your local wifi.  Enter your local wifi’s password and press Connect
    1. Example: At Gump Station in Mo'orea: select wifi Gump Guest #8 (or whichever # is strongest in your location around the station) with Password eD7hI0yPht1K
1. Wait for the base light to turn Orange (light will turn from Off > Green > Purple > Green > Solid Orange), then in networks select your local wifi (if this does not happen automatically in a few seconds)
1. Close that browser window.  Open a new window, and again type into browser http://172.16.0.1 or http://apex.local

<a name="apex_fusion_link"></a> **Link ApexEL on Apex Fusion:**  

1. Type into browser http://www.apexfusion.com
1. If not already logged in, click Get Control on the Fusion Home Page to access the login screen.
1. If you haven’t already created an account, click Create Account and follow the steps through Fusion
1. Once logged in, you will be directed to a Home Page with your Linked Apex List
1. To link the Apex for the first time, click the upper left Link Apex icon (image of a link chain).  You will only need to do this once, after which your Apex will then always be available in your List
    1. To Link Apex to Fusion from the Apex Dashboard: Choose Link to Fusion on your Apex Dashboard
    1. To Link Apex to Fusion from the Apex Display Module: Go to Main Menu by pressing the Center Button on the Module, select ApexFusion: Link using the Center Button.
1. You’ll be provided a token ID
1. Within 10 minutes, enter that token in the box provided to link your Apex to Apex Fusion and click Link Apex
1. You should now see your apex in your Apex List
1. Select your Apex from your Apex List and begin controlling from your computer

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

<a name="materials"></a> **Materials:**
- Apex base unit
- Apex display screen
- Temperature probe
- Heater
- Chiller
- Computer with USB/Ethernet ports
- Ethernet cable
- Ethernet-USB adapter (if no integrated ethernet port on the computer)

**Removed label from Apex base unit: "Please read and remove: only plug AquaBus compatible equipment into these (ethernet, aquabus and temp plugs on side of apex unit) AquaBus connectors. Damage may result if USB devices are plugged into AquaBus or AquaBus devices are plugged into USB connectors. AquaBus looks like USB but is not USB."**

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

<a name="references"></a> **References:**  
- https://www.neptunesystems.com/getstarted/apex-el/
- https://www.neptunesystems.com/getstarted/apexng/apex-wifi/pc-wifi-el/
- Help Service: Neptune Systems Contact Number:
  - (408) 779-4090 (press 1, then press 1 again to be transferred to a Tech Representative)
- [Apex Jr. Get Started Guide](https://www.neptunesystems.com/getstarted/apexjr/)
- [Apex Comprehensive Reference Manual (Apex, Apex Lite, Apex Jr)](https://www.neptunesystems.com/downloads/docs/Comprehensive_Reference_Manual.pdf)
- [Aquacontroller Apex Jr Quick Start Guide](https://www.neptunesystems.com/downloads/docs/AquaController-Apex-Jr-Quickstart.pdf)
- [Apex Jr Ultra-Quick Setup Guide](https://www.neptunesystems.com/downloads/docs/Quick-Start-Apex-Jr-Fullsheet-v1-web.pdf)
- [EnergyBar 4 Setup Guide](https://www.neptunesystems.com/downloads/docs/EB4_manual.pdf)
