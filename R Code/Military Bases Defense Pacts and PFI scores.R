### Military Bases Spreadsheet
library(tidyverse)

military_bases <- gather(military_bases_spread, "target_country", "military_bases", -year, -super_power)
write.csv(military_bases, "Asia Military Bases.csv")


### Defense Pacts Spreadsheet

defense_pacts <- gather(defense_pacts, "target_country", "defense_pacts", -year, -super_power)
write.csv(defense_pacts, "Asia Defense Pacts.csv")


##PFI Scores Spreadsheet
library(tidyverse)
pfi_rankings <- gather(PFI_Rankinigs, "year", "pfi_rankings", -Country)
write.csv(pfi_rankings, "PFI_Rankings_Gathered.csv")