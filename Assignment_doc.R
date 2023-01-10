#loading the dplyr package..
library(dplyr)

#setting up our organism names..
namesVec<-c("Thylacinus cynocephalus",
            "Raphus cucullatus",
            "Hydrodamalis gigas",
            "Equus quagga quagga",
            "Ectopistes migratorius")
#..then generating a random 100-size vector
speciesNom<-sample(namesVec, 100, 
                   replace=T)

limb_width<-abs(rnorm(100, 3, 1))
limb_length<-abs(rnorm(100, 6, 2))
#random normal distribution
  
observ<-c("H. Mason",
          "J. Sunderland",
          "A. Gillespie")

obserNom<-sample(observ, 100,
                 replace=T)
#..then adding observer names

measurDat<-data.frame(speciesNom, limb_width,
           limb_length, obserNom)
#putting everything into a data.frame..

measurDat %>% 
  rename(Organism = speciesNom) %>% 
  rename(Observer=obserNom)
#then tidying it up..

write.csv(measurDat,
          "measurements.csv",
          row.names=F)
#..and exporting it as .CSV