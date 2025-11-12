library(dplyr)
library(tidyverse)

totalexp_dep <- totalexp %>%
  group_by(year) %>%
  group_by(country_origin_id, add=TRUE) %>%
  mutate(countT = sum(export_val)) %>%
  mutate(per=paste0(round(100*export_val/countT,2),'%'))
write.csv(totalexp_dep, file = "Total Export Dependence.csv")
totalexp_dep_3 <- subset(totalexp_dep, country_destination_id %in% c("USA","CHN","RUS"))

write.csv(totalexp_dep_3, file = "Total Export Dependence Russia China USA.csv")

totalimp_dep <- totalimp %>%
  group_by(year) %>%
  group_by(country_origin_id, add=TRUE) %>%
  mutate(countT = sum(import_val)) %>%
  mutate(per=paste0(round(100*import_val/countT,2),'%'))
write.csv(totalimp_dep, file = "Total Import Dependence.csv")

totalimp_dep_3 <- subset(totalimp_dep, country_destination_id %in% c("USA","CHN","RUS"))
write.csv(totalimp_dep_3, file = "Total Import Dependence Russia China USA.csv")


yugexp_dep <- yug_export %>% group_by(year) %>%
  group_by(country_origin_id, add=TRUE) %>%
  mutate(countT = sum(export_val)) %>%
  mutate(per=paste0(round(100*export_val/countT,2),'%'))

yugexp_dep3 <- subset(yugexp_dep, country_destination_id %in% c("DEU"))
yugexp1 <- yugexp_dep3 %>% select(year, country_destination_id, per)
yugexp2 <- spread(yugexp1, key = country_destination_id, value = per)
write.csv(yugexp2, file = "GERMANY Yugoslavia Export Dependence.csv")


yugimp_dep <- yug_import %>% group_by(year) %>%
  group_by(country_origin_id, add=TRUE) %>%
  mutate(countT = sum(import_val)) %>%
  mutate(per=paste0(round(100*import_val/countT,2),'%'))

yugimp_dep3 <- subset(yugimp_dep, country_destination_id %in% c("DEU"))
yugimp1 <- yugimp_dep3 %>% select(year, country_destination_id, per)
yugimp2 <- spread(yugimp1, key = country_destination_id, value = per)
write.csv(yugimp2, file = "GERMANY Yugoslavia Import Dependence.csv")
