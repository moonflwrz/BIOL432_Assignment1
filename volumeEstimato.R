#loading dplyr library.. 
library(dplyr)

#importing data set.. 
measurDat<-read.csv("measurements.csv")

#calculating + adding a 'volume' column 
measurDat<-measurDat %>% 
  mutate(limb_vol=limb_width*(limb_length)^2)

#overriding the old vers. of measurDat
write.csv(measurDat,
          "measurementsV2.csv",
          row.names=F)
