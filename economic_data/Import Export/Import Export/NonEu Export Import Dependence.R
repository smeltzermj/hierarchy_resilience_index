### Non-EU Export Dependence Coding


## Importing Data sets
alb_exp <- read.csv("C:/Users/Msmeltzer/Desktop/2017 Export Import/Albania Export.csv", na = ":")
bos_exp <- read.csv("C:/Users/Msmeltzer/Desktop/2017 Export Import/BiH Export.csv", na = ":")
ice_exp <- read.csv("C:/Users/Msmeltzer/Desktop/2017 Export Import/Iceland Export.csv", na = ":")
mac_exp <- read.csv("C:/Users/Msmeltzer/Desktop/2017 Export Import/Macedonia Export.csv", na = ":")
mon_exp <- read.csv("C:/Users/Msmeltzer/Desktop/2017 Export Import/Montenegro Export.csv", na = ":")
nor_exp <- read.csv("C:/Users/Msmeltzer/Desktop/2017 Export Import/Norway Export.csv", na = ":")
ser_exp <- read.csv("C:/Users/Msmeltzer/Desktop/2017 Export Import/Serbia Export.csv", na = ":")
swi_exp <- read.csv("C:/Users/Msmeltzer/Desktop/2017 Export Import/Switzerland Export.csv", na = ":")
tky_exp <- read.csv("C:/Users/Msmeltzer/Desktop/2017 Export Import/Turkey Export.csv", na = ":")
arm_exp<- read.csv("C:/Users/Msmeltzer/Desktop/Post Soviet Hierarchy Data/Economic/Export Data/Armenia.csv", na = ":")
aze_exp<- read.csv("C:/Users/Msmeltzer/Desktop/Post Soviet Hierarchy Data/Economic/Export Data/Azerbaijan.csv", na = ":")
blr_exp<- read.csv("C:/Users/Msmeltzer/Desktop/Post Soviet Hierarchy Data/Economic/Export Data/Belarus.csv", na = ":")
est_exp<- read.csv("C:/Users/Msmeltzer/Desktop/Post Soviet Hierarchy Data/Economic/Export Data/Estonia.csv", na = ":")
geo_exp<- read.csv("C:/Users/Msmeltzer/Desktop/Post Soviet Hierarchy Data/Economic/Export Data/Georgia.csv", na = ":")
kaz_exp<- read.csv("C:/Users/Msmeltzer/Desktop/Post Soviet Hierarchy Data/Economic/Export Data/Kazakhstan.csv", na = ":")
kyr_exp<- read.csv("C:/Users/Msmeltzer/Desktop/Post Soviet Hierarchy Data/Economic/Export Data/Kyrgyzstan.csv", na = ":")
lat_exp<- read.csv("C:/Users/Msmeltzer/Desktop/Post Soviet Hierarchy Data/Economic/Export Data/Latvia.csv", na = ":")
lit_exp<- read.csv("C:/Users/Msmeltzer/Desktop/Post Soviet Hierarchy Data/Economic/Export Data/Lithuania.csv", na = ":")
mol_exp<- read.csv("C:/Users/Msmeltzer/Desktop/Post Soviet Hierarchy Data/Economic/Export Data/Moldova.csv", na = ":")
taj_exp<- read.csv("C:/Users/Msmeltzer/Desktop/Post Soviet Hierarchy Data/Economic/Export Data/Tajikistan.csv", na = ":")
trk_exp<- read.csv("C:/Users/Msmeltzer/Desktop/Post Soviet Hierarchy Data/Economic/Export Data/Turkmenistan.csv", na = ":")
ukr_exp<- read.csv("C:/Users/Msmeltzer/Desktop/Post Soviet Hierarchy Data/Economic/Export Data/Ukraine.csv", na = ":")
uzb_exp<- read.csv("C:/Users/Msmeltzer/Desktop/Post Soviet Hierarchy Data/Economic/Export Data/Uzbekistan.csv", na = ":")



## Binding them into one file
noneu_export <- rbind(alb_exp, bos_exp, ice_exp, mac_exp, mon_exp, nor_exp, ser_exp, swi_exp, tky_exp, arm_exp,
aze_exp,
blr_exp,
est_exp,
geo_exp,
kaz_exp,
kyr_exp,
lat_exp,
lit_exp,
mol_exp,
taj_exp,
trk_exp,
ukr_exp,
uzb_exp
)

library(dplyr)

###Creating Dependence for China, US, Russia
noneuexp_dep <- noneu_export %>%
  group_by(year) %>%
  group_by(country_origin_id, add=TRUE) %>%
  mutate(countT = sum(export_val)) %>%
  mutate(per=paste0(round(100*export_val/countT,2),'%'))
noneuexp_dep_3 <- subset(noneuexp_dep, country_destination_id %in% c("USA","CHN","RUS"))

write.csv(noneuexp_dep_3, file = "UPDATED Total NonEu Export Dependence Russia China USA.csv")



### Importing Import Data Sets
alb_imp <- read.csv("C:/Users/Msmeltzer/Desktop/2017 Export Import/Albania Import.csv", na = ":")
### Andorra was here
bos_imp <- read.csv("C:/Users/Msmeltzer/Desktop/2017 Export Import/BiH Import.csv", na = ":")
ice_imp <- read.csv("C:/Users/Msmeltzer/Desktop/2017 Export Import/Iceland Import.csv", na = ":")
mac_imp <- read.csv("C:/Users/Msmeltzer/Desktop/2017 Export Import/Macedonia Import.csv", na = ":")
mon_imp <- read.csv("C:/Users/Msmeltzer/Desktop/2017 Export Import/Montenegro Import.csv", na = ":")
nor_imp <- read.csv("C:/Users/Msmeltzer/Desktop/2017 Export Import/Norway Import.csv", na = ":")
ser_imp <- read.csv("C:/Users/Msmeltzer/Desktop/2017 Export Import/Serbia Import.csv", na = ":")
swi_imp <- read.csv("C:/Users/Msmeltzer/Desktop/2017 Export Import/Switzerland Import.csv", na = ":")
tky_imp <- read.csv("C:/Users/Msmeltzer/Desktop/2017 Export Import/Turkey Import.csv", na = ":")
arm_imp<- read.csv("C:/Users/Msmeltzer/Desktop/Post Soviet Hierarchy Data/Economic/Import Data/Armenia.csv", na = ":")
aze_imp<- read.csv("C:/Users/Msmeltzer/Desktop/Post Soviet Hierarchy Data/Economic/Import Data/Azerbaijan.csv", na = ":")
blr_imp<- read.csv("C:/Users/Msmeltzer/Desktop/Post Soviet Hierarchy Data/Economic/Import Data/Belarus.csv", na = ":")
est_imp<- read.csv("C:/Users/Msmeltzer/Desktop/Post Soviet Hierarchy Data/Economic/Import Data/Estonia.csv", na = ":")
geo_imp<- read.csv("C:/Users/Msmeltzer/Desktop/Post Soviet Hierarchy Data/Economic/Import Data/Georgia.csv", na = ":")
kaz_imp<- read.csv("C:/Users/Msmeltzer/Desktop/Post Soviet Hierarchy Data/Economic/Import Data/Kazakhstan.csv", na = ":")
kyr_imp<- read.csv("C:/Users/Msmeltzer/Desktop/Post Soviet Hierarchy Data/Economic/Import Data/Kyrgyzstan.csv", na = ":")
lat_imp<- read.csv("C:/Users/Msmeltzer/Desktop/Post Soviet Hierarchy Data/Economic/Import Data/Latvia.csv", na = ":")
lit_imp<- read.csv("C:/Users/Msmeltzer/Desktop/Post Soviet Hierarchy Data/Economic/Import Data/Lithuania.csv", na = ":")
mol_imp<- read.csv("C:/Users/Msmeltzer/Desktop/Post Soviet Hierarchy Data/Economic/Import Data/Moldova.csv", na = ":")
taj_imp<- read.csv("C:/Users/Msmeltzer/Desktop/Post Soviet Hierarchy Data/Economic/Import Data/Tajikistan.csv", na = ":")
trk_imp<- read.csv("C:/Users/Msmeltzer/Desktop/Post Soviet Hierarchy Data/Economic/Import Data/Turkmenistan.csv", na = ":")
ukr_imp<- read.csv("C:/Users/Msmeltzer/Desktop/Post Soviet Hierarchy Data/Economic/Import Data/Ukraine.csv", na = ":")
uzb_imp<- read.csv("C:/Users/Msmeltzer/Desktop/Post Soviet Hierarchy Data/Economic/Import Data/Uzbekistan.csv", na = ":")



noneu_import <- rbind(alb_imp, bos_imp, ice_imp, mac_imp, mon_imp, nor_imp, ser_imp, swi_imp, tky_imp,
arm_imp,
aze_imp,
blr_imp,
est_imp,
geo_imp,
kaz_imp,
kyr_imp,
lat_imp,
lit_imp,
mol_imp,
taj_imp,
trk_imp,
ukr_imp,
uzb_imp
)

noneuimp_dep <- noneu_import %>%
  group_by(year) %>%
  group_by(country_origin_id, add=TRUE) %>%
  mutate(countT = sum(import_val)) %>%
  mutate(per=paste0(round(100*import_val/countT,2),'%'))
noneuimp_dep_3 <- subset(noneuimp_dep, country_destination_id %in% c("USA","CHN","RUS"))

write.csv(noneuexp_dep_3, file = "UPDATED Total NonEu Import Dependence Russia China USA.csv")


library(tidyverse)
library(stringr)


noneuimp_dep_us <- subset(noneuimp_dep, country_destination_id %in% c("USA"))
noneuimp_dep_us2 <- select(noneuimp_dep_us, year, country_origin_id, per)
noneuimp_dep_us3 <- spread(noneuimp_dep_us2, key = country_origin_id, value = per)
noneuimp_dep_china <- subset(noneuimp_dep, country_destination_id %in% c("CHN"))
noneuimp_dep_china2 <- select(noneuimp_dep_china, year, country_origin_id, per)
noneuimp_dep_china3 <- spread(noneuimp_dep_china2, key = country_origin_id, value = per)
noneuimp_dep_rus <- subset(noneuimp_dep, country_destination_id %in% c("RUS"))
noneuimp_dep_rus2 <- select(noneuimp_dep_rus, year, country_origin_id, per)
noneuimp_dep_rus3 <- spread(noneuimp_dep_rus2, key = country_origin_id, value = per)

noneuexp_dep_us <- subset(noneuexp_dep, country_destination_id %in% c("USA"))
noneuexp_dep_us2 <- select(noneuexp_dep_us, year, country_origin_id, per)
noneuexp_dep_us3 <- spread(noneuexp_dep_us2, key = country_origin_id, value = per)

noneuexp_dep_china <- subset(noneuexp_dep, country_destination_id %in% c("CHN"))
noneuexp_dep_china2 <- select(noneuexp_dep_china, year, country_origin_id, per)
noneuexp_dep_china3 <- spread(noneuexp_dep_china2, key = country_origin_id, value = per)

noneuexp_dep_rus <- subset(noneuexp_dep, country_destination_id %in% c("RUS"))
noneuexp_dep_rus2 <- select(noneuexp_dep_rus, year, country_origin_id, per)
noneuexp_dep_rus3 <- spread(noneuexp_dep_rus2, key = country_origin_id, value = per)

write.csv(noneuimp_dep_us3, "UPDATED non eu us import dependcence.csv")
write.csv(noneuimp_dep_china3, "UPDATED non eu china import dependence.csv")
write.csv(noneuimp_dep_rus3, "UPDATED non eu russia import dependence.csv")
write.csv(noneuexp_dep_us3, "UPDATED non eu us export dependence.csv")
write.csv(noneuexp_dep_china3, "UPDATED non eu china export depdendence.csv")
write.csv(noneuexp_dep_rus3, "UPDATED non eu russia exprt dependence.csv")
