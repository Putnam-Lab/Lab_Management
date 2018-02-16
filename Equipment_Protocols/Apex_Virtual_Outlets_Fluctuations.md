# 1) Log in to Apex Fusion

Navigate to Main Page

Main Page ![](C:\Users\Max.DESKTOP-KPBM0FK\Desktop\Github\Apex\Untitiled-2.tiff=250x)



# 2) Navigate to Outputs

Choose the "Gears" icon to expand settings options

Choose the "Outlet" icon

Outputs  ![](C:\Users\Max.DESKTOP-KPBM0FK\Desktop\Github\Apex\Untitiled-3.tiff=250x)



# 3) Add Virtual Outlets

First Choose the "outlet" icon

Second Choose "Add a Virtual Output"

Virtual Output  ![](C:\Users\Max.DESKTOP-KPBM0FK\Desktop\Github\Apex\Untitled-4.tiff=250x)

Add a name to the Virtual Output

Naming  ![](C:\Users\Max.DESKTOP-KPBM0FK\Desktop\Github\Apex\Untitled-5.tiff=250x)

Set new Configuration

Configuration  ![](C:\Users\Max.DESKTOP-KPBM0FK\Desktop\Github\Apex\Untitled-7.tiff=250x)

# 4) Send Configuration to Apex

Choose "Sending Configuration"

Push to Apex  ![](C:\Users\Max.DESKTOP-KPBM0FK\Desktop\Github\Apex\Untitled-6.tiff=250x)


# 5) Navigate back to Outputs

Click on name of new virtual outlet

# 6) Set control parameters

# 7) Send configuration to apex unit


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



