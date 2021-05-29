# Lipid assay of coral host tissue in 96-well plates

## Files included in folder
1. PDF version of protocol for lipid assay lab work (*Colorimetric Lipid Assay for Corals.pdf*)
2. Lipid correction/calculation Rmarkdown script (*Lipid Calculation Script.Rmd*)
4. Sample plate files to running the Rmarkdown script (*Lipid_P14_R1_18Oct19.csv and Lipid_P14_R2_18Oct19.csv*)


## Running the calculation script
1. Put the Rmarkdown file into a folder with the csv files from both the initial and final runs with the plate reader
2. Open the Rmarkdown file and run with the sample plates (*Lipid_P14_R1_18Oct19.csv and Lipid_P14_R2_18Oct19.csv*) to ensure it runs
3. If code runs successfully, input the following that correspond to your samples and run again:
    * **output_filename:** This is the output file name that the corrected/calculated values will populate
    * **filename1:** The name of the initial plate run 
    * **filename2:** The name of the final plate run
    * **coral_ID:** The sample names you wish each sample to be associated with and saved in the output as
 4. If issues occur with the code, check to make sure all required packages are installed and loaded, all files are correctly named, and all files are in the correct location. If errors still occur, please feel free to contact me with any questions (colleenbove@gmail.com).


## What the script does:
The Rmarkdown will correct for the blanks on each plate as well as correct the final plate values by the background noise from the initial read. It will then calculate a standard curve (see below for sample) that is used for calculating the concentration of lipids per well based off the absorbance values. The Rmarkdown output file will display the blank values from each plate to check for any weird values, the calculated standard equation and R<sup>2</sup>, an interactive standard curve plot, table including a subset of calculated lipid concentrations per sample, and the name of the output file.

Sample of the standard curve plot obtained from sample plate included:
![Plate14_lipid_21Oct19_STD plot_2021-05-27](https://user-images.githubusercontent.com/45176386/119900034-f4f55480-bf11-11eb-85ba-37ef247abbb4.png)



---

**For the published protocol, see [dx.doi.org/10.17504/protocols.io.bvcfn2tn](https://www.protocols.io/view/coral-lipid-assay-for-96-well-plates-bvcfn2tn)**

