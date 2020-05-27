# Log in to Apex Fusion

# Navigate to Main Page

Main Page ![](https://github.com/Putnam-Lab/Lab_Management/blob/master/Equip_Images/1_Apex_dashboard.jpg?raw=true)



# Navigate to Outputs

# Choose the "Gears" icon to expand settings options

# Choose the "Output" icon

Outputs  ![](https://github.com/Putnam-Lab/Lab_Management/blob/master/Equip_Images/2_Dashboard_Options.jpg?raw=true)



# Add Virtual Outlets

# First, choose the "Output" icon

# Second Choose "Add a Virtual Output"

Virtual Output  ![](https://github.com/Putnam-Lab/Lab_Management/blob/master/Equip_Images/3_Add_Virtual_Outlet.jpg?raw=true)

# Add a name to the Virtual Output

Naming  ![](https://github.com/Putnam-Lab/Lab_Management/blob/master/Equip_Images/4_Name_Virtual_Outlet.jpg?raw=true)

# Set new Configuration

Configuration  ![](https://github.com/Putnam-Lab/Lab_Management/blob/master/Equip_Images/5_Send_Config_Outlet.jpg?raw=true)


# Navigate back to Outputs

# Click on name of new virtual outlet

Virtual Output  ![](https://github.com/Putnam-Lab/Lab_Management/blob/master/Equip_Images/6_Virtual_Outlets.jpg?raw=true)

# Set control parameters and Send configuration to apex unit

Send info to device  ![](https://github.com/Putnam-Lab/Lab_Management/blob/master/Equip_Images/8_Settings.jpg?raw=true)

# Link the real outputs to the virtual outputs

# Navigate back to Outputs

# Click on name of real outlet

Output List  ![](https://github.com/Putnam-Lab/Lab_Management/blob/master/Equip_Images/9_real_outlet.jpg?raw=true)


# Add statements linking to virtual output names

# Send configuration info to apex

Real to Virtual Link  ![](https://github.com/Putnam-Lab/Lab_Management/blob/master/Equip_Images/10_real_to_virtual.jpg?raw=true)


# Example code for setting a diurnal temperature flucation using a heater and a chiller

### Real Outlet Chill1
Set OFF

If Output Time1-Chill = ON Then ON

If Output Time2-Chill = ON Then ON

If Output Time3-Chill = ON Then ON

If Output Time4-Chill = ON Then ON

If Output Time5-Chill = ON Then ON

###  Real Outlet Heat1
Set OFF

If Output Time1-Heat = ON Then ON

If Output Time2-Heat = ON Then ON

If Output Time3-Heat = ON Then ON

If Output Time4-Heat = ON Then ON

If Output Time5-Heat = ON Then ON


### Virtual Outlets


### Time1-Chill
Set OFF

If Tmp < 16.0 Then OFF

If Tmp > 16.0 Then ON

If Time 08:15 to 20:14 Then OFF

### Time1-Heat
Set OFF

If Tmp > 16.0 Then OFF

If Tmp < 16.0 Then ON

If Time 08:15 to 20:14 Then OFF

### Time2-Chill
Set OFF

If Tmp < 16.4 Then OFF

If Tmp > 16.4 Then ON

If Time 00:00 to 08:14 Then OFF

If Time 09:45 to 18:44 Then OFF

If Time 20:15 to 23:59 Then OFF

### Time2-Heat
Set OFF

If Tmp > 16.4 Then OFF

If Tmp < 16.4 Then ON

If Time 00:00 to 08:14 Then OFF

If Time 09:45 to 18:44 Then OFF

If Time 20:15 to 23:59 Then OFF

### Time3-Chill
Set OFF

If Tmp < 16.8 Then OFF

If Tmp > 16.8 Then ON

If Time 00:00 to 09:44 Then OFF

If Time 11:15 to 17:14 Then OFF

If Time 18:45 to 23:59 Then OFF

### Time3-Heat
Set OFF
If Tmp > 16.8 Then OFF

If Tmp < 16.8 Then ON

If Time 00:00 to 09:44 Then OFF

If Time 11:15 to 17:14 Then OFF

If Time 18:45 to 23:59 Then OFF

### Time4-Chill
Set OFF

If Tmp < 17.0 Then OFF

If Tmp > 17.0 Then ON

If Time 00:00 to 11:14 Then OFF

If Time 13:15 to 15:14 Then OFF

If Time 17:15 to 23:59 Then OFF

### Time4-Heat
Set OFF

If Tmp > 17.0 Then OFF

If Tmp < 17.0 Then ON

If Time 00:00 to 11:14 Then OFF

If Time 13:15 to 15:14 Then OFF

If Time 17:15 to 23:59 Then OFF

### Time5-Chill
Set OFF

If Tmp < 17.2 Then OFF

If Tmp > 17.2 Then ON

If Time 00:00 to 13:14 Then OFF

If Time 15:15 to 23:59 Then OFF

### Time5-Heat
Set OFF

If Tmp < 17.2 Then ON

If Tmp > 17.2 Then OFF

If Time 00:00 to 13:14 Then OFF

If Time 15:15 to 23:59 Then OFF



