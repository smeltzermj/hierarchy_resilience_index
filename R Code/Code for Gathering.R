###Much of the data we've collected comes in a more spread out form of a spreadsheet
###We use the gather function to standarize the spreadsheet with particular columns
###Namely: year, target_country, super_power, and then all of the variables we have collected
###'Gathering' the data allows us to put all the indicators, measures, and models in a similar format of 
### Year      target_country       super_power      variable 
### This way it's easy to just simply add another column for variable 2 and so on.


### Military Bases Spreadsheet
library(tidyverse)
military_bases <- read.csv("")
military_bases <- gather(military_bases, "target_country", "military_bases", -year, -super_power)
write.csv(military_bases, "Asia Military Bases.csv")


### Defense Pacts Spreadsheet
library(tidyverse)
defense_pacts <- read.csv("")
defense_pacts <- gather(defense_pacts, "target_country", "defense_pacts", -year, -super_power)
write.csv(defense_pacts, "Asia Defense Pacts.csv")


##PFI Scores Spreadsheet
library(tidyverse)
pfi_rankings <- read.csv("")
pfi_rankings <- gather(PFI_Rankinigs, "year", "pfi_rankings", -Country)
write.csv(pfi_rankings, "PFI_Rankings_Gathered.csv")

###FDI Spreadsheet
library(tidyverse)
asia_FDI_Pcts <- read.csv("")
asia_fdi <- gather(Asia_FDI_Pcts, "super_power", "fdi_dep", -year, -target_country)
write.csv(asia_fdi, "Asia FDI Dependence.csv")

###Head of State Meetings
library(tidyverse)
HoS_meetings <- read.csv("")
hos_meetings <- gather(HoS_Meetings, "year", "HOS_meetings", -super_power, -target_country)
write.csv(hos_meetings, "HOS Meetings gathered.csv")