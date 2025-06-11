
# Putnam Lab ImageJ Protocols

A series of analysis protocols in ImageJ.  
Contents:
- [**Color Score**](#Color_Score)
- [**Larvae_Size_Fecundity_Fertilization**](#Larvae_Size_Fecundity_Fertilization)
- [**Surface Area Measurement**](#Surface_Area_Measurement)

## ImageJ Download

Download the ImageJ application from the National Institute of Health's webpage:
https://imagej.nih.gov/ij/download.html.  

## <a name="Color_Score"></a> **Color Score**

Goal: To quantify bleaching from images taken of coral fragments next to a red, blue, green color standard ruler. Protocol written to analyze images taken in the field for the 2018-2019 Holobiont Integration project.

**Image Example**  
Limit the amount of shadow and atypical light reflection by placing a piece of white paper behind the coral fragments. Place the red, blue, and green standard ruler behind the coral fragments. The water needs to be clean to avoid any particles blocking the coral standard ruler and/or coral fragments.

**Quantifying Bleaching Score**
1. Open the ImageJ application. The application only appears as a tool bar until an image is opened.  
2. Open "Bleaching ImageJ" google spreadsheet.    
3. In ImageJ: "File" > "Open" > Choose the desired photo.

![imageJ](https://imagej.net/ij/download.html)

4. Open the histogram analysis option: "Analyze" > Histogram.  
5. Click "Live" and "RGB". Once in live, selecting different regions of the photo, the histogram will change intensity levels.  

![image](https://github.com/emmastrand/EmmaStrand_Notebook/blob/8cbb3a598e769d25816f0f8b0f19d4ca741e1115/images/ImageJ_3.png)

6. Select each of the three color standards and record the mean value given by the histogram.  
  1. Hover the mouse over a corner of the blue tape, right click to drag and select as much of the blue square as possible.  
  2. On the histogram window, click through the "RGB" options: "Intensity (unweighted), Intensity (weighted), "R+G+B", "Red", "Green", and stop at "Blue". Record the Mean value in "Bleaching ImageJ" spreadsheet under "Blue.Standard".  
  3. Repeat steps previous steps for both the red and green tape squares. Stop at the "Red" histogram when analyzing the red square, stop at the "Green" histogram when analyzing the green square, and record the mean values under the respective Color.Standard column.  

![example](https://github.com/emmastrand/EmmaStrand_Notebook/blob/master/images/ImageJ_5.png?raw=true)

7. Click the fourth drawing tool option on the main toolbar, freehand selections. Outline the **LIVE coral tissue only**. Do not select any portions of the coral fragment that have a shadow.
8. On the histogram window, click through the "RGB" options to record the mean red, blue, and green color concentration.

![ex](https://github.com/emmastrand/EmmaStrand_Notebook/blob/master/images/ImageJ_6.png?raw=true)

## <a name="Larvae_Size_Fecundity_Fertilization"></a> **Larvae Size Fecundity Fertilization**

Goal: To measure the size (diameter) of 50 eggs per photo, quantify fecundity by larval counts, and quantify fertilization by embryo counts.  

1. Open the ImageJ application. The application only appears as a tool bar until an image is opened.  
2. Open "Bleaching ImageJ" google spreadsheet.    
3. In ImageJ: "File" > "Open" > Choose the desired photo.

**Egg Size**  

**Fecundity**

1. Count all of the eggs in each photo.  
2. Record this total value in the spreadsheet.  

**Fertilization**  
1. Count all of the larvae in each category:  
  - Unfertilized: one cell  
  - Cleaved embryos: 2 cells  
  - Cleaved embryos: 4 cells  
  - Cleaved embryos: 4+ cells
2. Record each value in the spreadsheet.

## <a name="Surface Area Measurement"></a> **Surface Area Measurement**

Goal: Measure the surface area of a coral.

1. Open the ImageJ application. The application only appears as a tool bar until an image is opened.
2. In ImageJ: "File" > "Open" > Choose the desired photo. 
3. Using the line tool in the toolbar, draw a line between two points of known distance (ruler in the photo).

![image](https://raw.githubusercontent.com/JillAshey/JillAshey_Putnam_Lab_Notebook/master/images/ImageJ_1.png)

4. Click "Analyze" > "Set Scale". A Set Scale box will open.
5. In the Set Scale box, fill in the known distance (1.0, 1.5, etc) and the unit of length (cm, inch, etc) from the ruler. Click OK. 

![image](https://raw.githubusercontent.com/JillAshey/JillAshey_Putnam_Lab_Notebook/master/images/ImageJ_2.png)

Checking the global box will apply this scale setting to other images that are opened. Do **NOT** select global unless pictures were taken with camera at the same position for all images (i.e. camera did not move).

6. Back on the image, click the freehand selection tool in the tool bar. Outline the **LIVE** tissue only.  Do not select places where tissue is in a shadow. 

![image](https://raw.githubusercontent.com/JillAshey/JillAshey_Putnam_Lab_Notebook/master/images/ImageJ_3.png)

7. Click "Analyze" > "Measure". A measurement box will open showing the area of outlined selection. 

![image](https://raw.githubusercontent.com/JillAshey/JillAshey_Putnam_Lab_Notebook/master/images/ImageJ_4.png)

8. Record this value in the spreadsheet. 
