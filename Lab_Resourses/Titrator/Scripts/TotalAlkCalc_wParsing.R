#Calculate total alkalinity using potentiometric titrations

#Uses a for loop to read in data exported as a titration file and calculate Total alkalinity

#At the end it exports your data as a .csv file. Comment the last line out if your don't want that.



### Files needed ######

# 1. pHCalibration.csv in your "Data" folder

#Inside the Data folder You must have a subfolder for each data set. In each subfolder there is:

#2. the mass file for your run  (exported directly from labx)

#3. a subfolder named "TitrationFiles" (where all of your titration files are) directly exported from LabX.

# 



#Created by Nyssa Silbiger 03/28/2014

#modified 03/18/2018 - N Silbiger

#------------------------------------------------------------


rm(list=ls())



#set working directory---------------------------------------------------------------------------------------------

main<-getwd()



#load libraries----------------------------------------------

library(seacarb)#used to calculate TA

library(tidyverse)



#CHANGE THESE VALUES EVERY DAY----------------------------------------------

path<-"Data/Mesocosm_Chiachi/Meso_12292020/" #the location of all your titration files

massfile<-"Mass_12292020.csv" # name of your file with masses

titrationfile<-'Titrations-12_29_2020-Silbiger TA (EP)r1.csv'# name of the last titration file run



# Date that the data were run

date<-'12/29/2020'






#DO NOT CHANGE ANYTHING BELOW THIS LINE UNLESS A NEW BOTTLE OF ACID IS USED

#load Data---------------------------------------------------

#load Mass Data

Mass<-read.csv(file.path(path,massfile), header=T, sep=",", na.string="NA", as.is=T, skip=2) 



#### pH Calibration #####

pHCal<-read.csv("Data/pHCalibration.csv") # read in the pH Calibration file



#select the calibration for the correct date

pHData<-pHCal[pHCal$Date==date,]



# calculate pH 3 and 3.5 based on the slope and intercept from pH 4, 7, and 10 calibration

mod.pH<-lm(c(pHData$pH4, pHData$pH7, pHData$pH10)~c(4,7,10)) # linear model



# print a plot of the relationship between pH and mV

png(paste0(path,"/",Sys.Date(),'pHmvplot.png'), height = 400, width = 400)

plot(c(4,7,10), c(pHData$pH4, pHData$pH7, pHData$pH10), xlab = 'pH', ylab = 'mv')

lines(c(4,7,10), predict(mod.pH))

R2<-summary(mod.pH)$r.squared

legend('topright', legend = bquote(R^2 == .(format(R2, digits = 3))), bty='n')

dev.off()



# Select the mV for pH=3 and pH=3.5 based on your probe calibration

pH35<-mod.pH$coefficients[1]+mod.pH$coefficients[2]*3.5

pH3<-mod.pH$coefficients[1]+mod.pH$coefficients[2]*3



##### titration###########

#create an empty matrix to put the TA values in

nrows<-nrow(Mass)-1 # -1 because there is an extra line in the mass file

TA <- data.frame(matrix(nrow = nrows, ncol = 4))

rownames(TA)<-Mass$Sample.ID1[1:nrows]

colnames(TA)<-c("SampleID",'TA','Mass','Sample.Index')



# only keep sample ID and weight and remove the extra stuff at the bottom

Mass<-Mass[1:nrows,c('Sample.ID1','Weight..g.','Sample.Index.In.Scope')]



#run a for loop to bring in the titration files one at a time and calculate TA

# read in the mega titration file

filename<-file.path(path,titrationfile)

AllData<-read.csv(filename, sep=",", na.string="NA",as.is=T, skip=5)[ ,1:5] 



# Identifies rows starting with "Scope" in column 1

sample_name_positions <- c(1,grep("^Scope", AllData[,1]), nrow(AllData))



## parse through all the data in the one file ###

sample_names<-Mass$Sample.ID1

# create a list with all the sample IDs

sample_names_list <- list()

for (item in 1:length(sample_names)){
  
  sample_names_list[[item]] <- sample_names[item]
  
}



# fill the list with the data from each sample

for (i in 1:nrows){
  
  sample_names_list[[i]]<-data.frame(AllData[sample_name_positions[i]:sample_name_positions[i+1],])
  
  colnames(sample_names_list[[i]])<-c("Volume","Time",	"mV",	"Temperature",	"dV/dt")
  
}





for(i in 1:nrows) {
  
  #  Data<-read.csv(file.names[i], header=F, sep=",", na.string="NA",as.is=T, skip=10)[ ,1:5] 
  
  # colnames(Data) <-  c("Volume","Time",	"mV",	"Temperature",	"dV/dt")
  
  Data<-sample_names_list[[i]]
  
  # everything was brought in as a character because of the second line, converts back to numeric
  
  Data$mV<-suppressWarnings(as.numeric(Data$mV)) ## supress the warnings since NA will be produced
  
  Data$Temperature<-suppressWarnings(as.numeric(Data$Temperature))
  
  Data$Volume<-suppressWarnings(as.numeric(Data$Volume))
  
  #name of the file without .csv
  
  #name<-unlist(strsplit(file.names[i], split='.', fixed=TRUE))[1]
  
  name<-sample_names[i]
  
  
  
  #calculates the index of values between pH 2 and 3.5 
  
  mV<-which(Data$mV<pH3 & Data$mV>pH35) 
  
  
  
  #CHANGE ONLY WHEN NEW BOTTLE OF ACID IS USED----------------------------------
  
  #Bottle #72 #1/7/2020 , 
  
  #density of your titrant: change every time acid is changed
  
  
  
  #d<-100*(-0.00000410*mean(Data$Temperature[mV], na.rm=T)^2-0.0001067*mean(Data$Temperature[mV], na.rm=T)+1.02882)/1000 #03/8/18
  
  #d<-(-0.00000410*mean(Data$Temperature[mV], na.rm=T)^2-0.0001067*mean(Data$Temperature[mV], na.rm=T)+1.02882) #03/8/18
  d<-(-0.00000410*mean(Data$Temperature[mV], na.rm=T)^2-0.0001065*mean(Data$Temperature[mV], na.rm=T)+1.02884) #03/8/18
  
  
  
  #11/27/2019 & 1/7/2020 batch A16
 
  
  
  
  #concentration of your titrant: CHANGE EVERYTIME ACID IS CHANGED 
  
  c<-0.100010 #11/27/2019
 # c<-0.0973#10/5 back calculating

  
  
  
  #------------------------------------------------------------------------------
  
  
  
  #Salinity of your samples
  
  #s<-33.623
  s<-sample_sal
  
  #s<-Mass[name,2]
  
  #mass of sample in g: changed with every sample
  
  #mass<-Mass[name,1]
  
  mass<-Mass[Mass$Sample.ID1==name,2]
  
  sample.index<-Mass[Mass$Sample.ID1==name,3]# this is the order that the sample was run
  
  #-------------------------------------------------------------------
  
  #Calculate TA
  
  
  
  #at function is based on code in saecarb package by Steeve Comeau, Heloise Lavigne and Jean-Pierre Gattuso
  
  TA[i,1]<-name
  
  TA[i,2]<-1000000*at(S=s,T=mean(Data$Temperature[mV], na.rm=T), C=c, d=d, pHTris=NULL, ETris=NULL, weight=mass, E=Data$mV[mV], volume=Data$Volume[mV])
  
  TA[i,3]<-mass
  
  TA[i,4]<-sample.index
  
}

TA[,2:4]<-sapply(TA[,2:4], as.numeric) # make sure the appropriate columns are numeric

# Add line for controlling for evvaporation
salt<-seq(from = 35, length.out = length(sample_names), by = 0.02)
TA$TA_evap<-TA$TA*35/salt

#exports your data as a CSV file

write.table(TA,paste0(path,"/TA",Sys.Date(),".csv"),sep=",", row.names=FALSE)

