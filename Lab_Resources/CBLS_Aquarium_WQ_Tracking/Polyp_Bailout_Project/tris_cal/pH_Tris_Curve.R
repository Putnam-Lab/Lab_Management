# modified for personal Lenovo PC at PT Whitney summer 2019
# last modification on 20210621 by RB
setwd("/Users/roxyr/Documents/GitHub/Lab_Management/WaterQuality/tris_cal/") #set working directory

Calib.Data <-read.table("20210816.csv", header=TRUE, sep=",", na.string="NA", as.is=TRUE) #reads in the data files
model <-lm(mVTris ~ TTris, data=Calib.Data) #runs a linear regression of mV as a function of temperature
coe <- coef(model) #extracts the coeffecients
R2<-summary(model)$r.squared
plot(mVTris ~ TTris, data=Calib.Data)
abline(lm(mVTris ~ TTris, data=Calib.Data))
legend('topleft', legend = bquote(R^2 == .(format(R2, digits = 3))), bty='n')
# make sure to export the figure


