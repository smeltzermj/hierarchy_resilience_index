library(dplyr)
library(tidyverse)

read.csv("C:/Users/Msmeltzer/Desktop/2017 Export Import/Albania Export.csv", na = ":")

aus_exp <- read.csv("C:/Users/Msmeltzer/Desktop/Europe and Post Soviet/Germany/Economic/Import Export/EU Export/aus_exp.csv", na = ":")
bel_exp<- read.csv("C:/Users/Msmeltzer/Desktop/Europe and Post Soviet/Germany/Economic/Import Export/EU Export/bel_exp.csv", na = ":")
bul_exp<- read.csv("C:/Users/Msmeltzer/Desktop/Europe and Post Soviet/Germany/Economic/Import Export/EU Export/bul_exp.csv", na = ":")
cro_exp<- read.csv("C:/Users/Msmeltzer/Desktop/Europe and Post Soviet/Germany/Economic/Import Export/EU Export/cro_exp.csv", na = ":")
cyp_exp<- read.csv("C:/Users/Msmeltzer/Desktop/Europe and Post Soviet/Germany/Economic/Import Export/EU Export/cyp_exp.csv", na = ":")
cze_exp<- read.csv("C:/Users/Msmeltzer/Desktop/Europe and Post Soviet/Germany/Economic/Import Export/EU Export/cze_exp.csv", na = ":")
den_exp<- read.csv("C:/Users/Msmeltzer/Desktop/Europe and Post Soviet/Germany/Economic/Import Export/EU Export/den_exp.csv", na = ":")
est_exp<- read.csv("C:/Users/Msmeltzer/Desktop/Europe and Post Soviet/Germany/Economic/Import Export/EU Export/est_exp.csv", na = ":")
fin_exp<- read.csv("C:/Users/Msmeltzer/Desktop/Europe and Post Soviet/Germany/Economic/Import Export/EU Export/fin_exp.csv", na = ":")
fra_exp<- read.csv("C:/Users/Msmeltzer/Desktop/Europe and Post Soviet/Germany/Economic/Import Export/EU Export/fra_exp.csv", na = ":")
gre_exp<- read.csv("C:/Users/Msmeltzer/Desktop/Europe and Post Soviet/Germany/Economic/Import Export/EU Export/gre_exp.csv", na = ":")
hun_exp<- read.csv("C:/Users/Msmeltzer/Desktop/Europe and Post Soviet/Germany/Economic/Import Export/EU Export/hun_exp.csv", na = ":")
ire_exp<- read.csv("C:/Users/Msmeltzer/Desktop/Europe and Post Soviet/Germany/Economic/Import Export/EU Export/ire_exp.csv", na = ":")
ita_exp<- read.csv("C:/Users/Msmeltzer/Desktop/Europe and Post Soviet/Germany/Economic/Import Export/EU Export/ita_exp.csv", na = ":")
lat_exp<- read.csv("C:/Users/Msmeltzer/Desktop/Europe and Post Soviet/Germany/Economic/Import Export/EU Export/lat_exp.csv", na = ":")
lit_exp<- read.csv("C:/Users/Msmeltzer/Desktop/Europe and Post Soviet/Germany/Economic/Import Export/EU Export/lit_exp.csv", na = ":")
lux_exp<- read.csv("C:/Users/Msmeltzer/Desktop/Europe and Post Soviet/Germany/Economic/Import Export/EU Export/lux_exp.csv", na = ":")
mal_exp<- read.csv("C:/Users/Msmeltzer/Desktop/Europe and Post Soviet/Germany/Economic/Import Export/EU Export/mal_exp.csv", na = ":")
net_exp<- read.csv("C:/Users/Msmeltzer/Desktop/Europe and Post Soviet/Germany/Economic/Import Export/EU Export/net_exp.csv", na = ":")
pol_exp<- read.csv("C:/Users/Msmeltzer/Desktop/Europe and Post Soviet/Germany/Economic/Import Export/EU Export/pol_exp.csv", na = ":")
por_exp<- read.csv("C:/Users/Msmeltzer/Desktop/Europe and Post Soviet/Germany/Economic/Import Export/EU Export/por_exp.csv", na = ":")
rom_exp<- read.csv("C:/Users/Msmeltzer/Desktop/Europe and Post Soviet/Germany/Economic/Import Export/EU Export/rom_exp.csv", na = ":")
slo_exp<- read.csv("C:/Users/Msmeltzer/Desktop/Europe and Post Soviet/Germany/Economic/Import Export/EU Export/slo_exp.csv", na = ":")
slv_exp<- read.csv("C:/Users/Msmeltzer/Desktop/Europe and Post Soviet/Germany/Economic/Import Export/EU Export/svk_exp.csv", na = ":")
spa_exp<- read.csv("C:/Users/Msmeltzer/Desktop/Europe and Post Soviet/Germany/Economic/Import Export/EU Export/spa_exp.csv", na = ":")
swe_exp<- read.csv("C:/Users/Msmeltzer/Desktop/Europe and Post Soviet/Germany/Economic/Import Export/EU Export/swe_exp.csv", na = ":")
uni_exp<- read.csv("C:/Users/Msmeltzer/Desktop/Europe and Post Soviet/Germany/Economic/Import Export/EU Export/uni_exp.csv", na = ":")

eu_exp <- rbind(aus_exp, bel_exp, bul_exp, cro_exp, cyp_exp, cze_exp, den_exp, est_exp, fin_exp, fra_exp, gre_exp, hun_exp, ire_exp, ita_exp, lat_exp, lit_exp, lux_exp, mal_exp, net_exp, pol_exp, por_exp, rom_exp, slo_exp, slv_exp, spa_exp, swe_exp, uni_exp)

write.csv(eu_exp, "eu_exp.csv")

eu_dep_ger <- EU_Export_Dependence %>% select(PERIOD, REPORTER, Per)
eu_dep_ger_spread <- spread(eu_dep_ger, key = REPORTER, value = Per)
write.csv(eu_dep_ger_spread, "EU German Export Dependence Spread.csv")

noneuexp_dep <- noneu_export %>%
  group_by(year) %>%
  group_by(country_origin_id, add=TRUE) %>%
  mutate(countT = sum(export_val)) %>%
  mutate(per=paste0(round(100*export_val/countT,2),'%'))
noneuexp_dep_ger <- subset(noneuexp_dep, country_destination_id %in% c("DEU"))
noneuexp_dep_ger_mini <- noneuexp_dep_ger %>% select (year, country_origin_id, per)


noneu_exp_spread <- spread(noneuexp_dep_ger_mini, key = country_origin_id, value = per)
write.csv(noneu_exp_spread, "Non EU German Export Dependence Spread.csv")

noneuimp_dep <- noneu_import %>%
  group_by(year) %>%
  group_by(country_origin_id, add=TRUE) %>%
  mutate(countT = sum(import_val)) %>%
  mutate(per=paste0(round(100*import_val/countT,2),'%'))
noneuimp_dep_ger <- subset(noneuimp_dep, country_destination_id %in% c("DEU"))
noneuimp_dep_ger_mini <- noneuimp_dep_ger %>% select (year, country_origin_id, per)


noneu_imp_spread <- spread(noneuimp_dep_ger_mini, key = country_origin_id, value = per)
write.csv(noneu_imp_spread, "Non EU German Import Dependence Spread.csv")

aus_imp <- read.csv("C:/Users/Msmeltzer/Desktop/Europe and Post Soviet/Germany/Economic/Import Export/EU Import Eurostat/aus_imp.csv", na = ":")
bel_imp<- read.csv("C:/Users/Msmeltzer/Desktop/Europe and Post Soviet/Germany/Economic/Import Export/EU Import Eurostat/bel_imp.csv", na = ":")
bul_imp<- read.csv("C:/Users/Msmeltzer/Desktop/Europe and Post Soviet/Germany/Economic/Import Export/EU Import Eurostat/bul_imp.csv", na = ":")
cro_imp<- read.csv("C:/Users/Msmeltzer/Desktop/Europe and Post Soviet/Germany/Economic/Import Export/EU Import Eurostat/cro_imp.csv", na = ":")
cyp_imp<- read.csv("C:/Users/Msmeltzer/Desktop/Europe and Post Soviet/Germany/Economic/Import Export/EU Import Eurostat/cyp_imp.csv", na = ":")
cze_imp<- read.csv("C:/Users/Msmeltzer/Desktop/Europe and Post Soviet/Germany/Economic/Import Export/EU Import Eurostat/cze_imp.csv", na = ":")
den_imp<- read.csv("C:/Users/Msmeltzer/Desktop/Europe and Post Soviet/Germany/Economic/Import Export/EU Import Eurostat/den_imp.csv", na = ":")
est_imp<- read.csv("C:/Users/Msmeltzer/Desktop/Europe and Post Soviet/Germany/Economic/Import Export/EU Import Eurostat/est_imp.csv", na = ":")
fin_imp<- read.csv("C:/Users/Msmeltzer/Desktop/Europe and Post Soviet/Germany/Economic/Import Export/EU Import Eurostat/fin_imp.csv", na = ":")
fra_imp<- read.csv("C:/Users/Msmeltzer/Desktop/Europe and Post Soviet/Germany/Economic/Import Export/EU Import Eurostat/fra_imp.csv", na = ":")
gre_imp<- read.csv("C:/Users/Msmeltzer/Desktop/Europe and Post Soviet/Germany/Economic/Import Export/EU Import Eurostat/gre_imp.csv", na = ":")
hun_imp<- read.csv("C:/Users/Msmeltzer/Desktop/Europe and Post Soviet/Germany/Economic/Import Export/EU Import Eurostat/hun_imp.csv", na = ":")
ire_imp<- read.csv("C:/Users/Msmeltzer/Desktop/Europe and Post Soviet/Germany/Economic/Import Export/EU Import Eurostat/ire_imp.csv", na = ":")
ita_imp<- read.csv("C:/Users/Msmeltzer/Desktop/Europe and Post Soviet/Germany/Economic/Import Export/EU Import Eurostat/ita_imp.csv", na = ":")
lat_imp<- read.csv("C:/Users/Msmeltzer/Desktop/Europe and Post Soviet/Germany/Economic/Import Export/EU Import Eurostat/lat_imp.csv", na = ":")
lit_imp<- read.csv("C:/Users/Msmeltzer/Desktop/Europe and Post Soviet/Germany/Economic/Import Export/EU Import Eurostat/lit_imp.csv", na = ":")
lux_imp<- read.csv("C:/Users/Msmeltzer/Desktop/Europe and Post Soviet/Germany/Economic/Import Export/EU Import Eurostat/lux_imp.csv", na = ":")
mal_imp<- read.csv("C:/Users/Msmeltzer/Desktop/Europe and Post Soviet/Germany/Economic/Import Export/EU Import Eurostat/mal_imp.csv", na = ":")
net_imp<- read.csv("C:/Users/Msmeltzer/Desktop/Europe and Post Soviet/Germany/Economic/Import Export/EU Import Eurostat/net_imp.csv", na = ":")
pol_imp<- read.csv("C:/Users/Msmeltzer/Desktop/Europe and Post Soviet/Germany/Economic/Import Export/EU Import Eurostat/pol_imp.csv", na = ":")
por_imp<- read.csv("C:/Users/Msmeltzer/Desktop/Europe and Post Soviet/Germany/Economic/Import Export/EU Import Eurostat/por_imp.csv", na = ":")
rom_imp<- read.csv("C:/Users/Msmeltzer/Desktop/Europe and Post Soviet/Germany/Economic/Import Export/EU Import Eurostat/rom_imp.csv", na = ":")
slo_imp<- read.csv("C:/Users/Msmeltzer/Desktop/Europe and Post Soviet/Germany/Economic/Import Export/EU Import Eurostat/slo_imp.csv", na = ":")
slv_imp<- read.csv("C:/Users/Msmeltzer/Desktop/Europe and Post Soviet/Germany/Economic/Import Export/EU Import Eurostat/svk_imp.csv", na = ":")
spa_imp<- read.csv("C:/Users/Msmeltzer/Desktop/Europe and Post Soviet/Germany/Economic/Import Export/EU Import Eurostat/spa_imp.csv", na = ":")
swe_imp<- read.csv("C:/Users/Msmeltzer/Desktop/Europe and Post Soviet/Germany/Economic/Import Export/EU Import Eurostat/swe_imp.csv", na = ":")
uni_imp<- read.csv("C:/Users/Msmeltzer/Desktop/Europe and Post Soviet/Germany/Economic/Import Export/EU Import Eurostat/uni_imp.csv", na = ":")

eu_imp <- rbind(aus_imp, bel_imp, bul_imp, cro_imp, cyp_imp, cze_imp, den_imp, est_imp, fin_imp, fra_imp, gre_imp, hun_imp, ire_imp, ita_imp, lat_imp, lit_imp, lux_imp, mal_imp, net_imp, pol_imp, por_imp, rom_imp, slo_imp, slv_imp, spa_imp, swe_imp, uni_imp)
write.csv(eu_exp, "eu_imp.csv")

eu_impdep_ger <- EU_Import_Dependence %>% select(PERIOD, REPORTER, Per)
eu_impdep_ger_spread <- spread(eu_impdep_ger, key = REPORTER, value = Per)
write.csv(eu_dep_ger_spread, "EU German Import Dependence Spread.csv")
