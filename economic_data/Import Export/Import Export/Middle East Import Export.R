library(tidyverse)
library(dplyr)

### Middle East Exports
bah_exp <- read.csv("C:/Users/Msmeltzer/Desktop/Middle East Data/Economic/Export/bah_exp.csv", na = ":")
cyp_exp<- read.csv("C:/Users/Msmeltzer/Desktop/Middle East Data/Economic/Export/cyp_exp.csv", na = ":")
egy_exp<- read.csv("C:/Users/Msmeltzer/Desktop/Middle East Data/Economic/Export/egy_exp.csv", na = ":")
irn_exp<- read.csv("C:/Users/Msmeltzer/Desktop/Middle East Data/Economic/Export/irn_exp.csv", na = ":")
irq_exp<- read.csv("C:/Users/Msmeltzer/Desktop/Middle East Data/Economic/Export/irq_exp.csv", na = ":")
isr_exp<- read.csv("C:/Users/Msmeltzer/Desktop/Middle East Data/Economic/Export/isr_exp.csv", na = ":")
jor_exp<- read.csv("C:/Users/Msmeltzer/Desktop/Middle East Data/Economic/Export/jor_exp.csv", na = ":")
kwt_exp<- read.csv("C:/Users/Msmeltzer/Desktop/Middle East Data/Economic/Export/kwt_exp.csv", na = ":")
lbn_exp<- read.csv("C:/Users/Msmeltzer/Desktop/Middle East Data/Economic/Export/lbn_exp.csv", na = ":")
omn_exp<- read.csv("C:/Users/Msmeltzer/Desktop/Middle East Data/Economic/Export/omn_exp.csv", na = ":")
qat_exp<- read.csv("C:/Users/Msmeltzer/Desktop/Middle East Data/Economic/Export/qat_exp.csv", na = ":")
sau_exp<- read.csv("C:/Users/Msmeltzer/Desktop/Middle East Data/Economic/Export/sau_exp.csv", na = ":")
syr_exp<- read.csv("C:/Users/Msmeltzer/Desktop/Middle East Data/Economic/Export/syr_exp.csv", na = ":")
tur_exp<- read.csv("C:/Users/Msmeltzer/Desktop/Middle East Data/Economic/Export/tur_exp.csv", na = ":")
uae_exp<- read.csv("C:/Users/Msmeltzer/Desktop/Middle East Data/Economic/Export/uae_exp.csv", na = ":")
yem_exp<- read.csv("C:/Users/Msmeltzer/Desktop/Middle East Data/Economic/Export/yem_exp.csv", na = ":")


me_exports <- rbind(bah_exp, cyp_exp, egy_exp, irn_exp, irq_exp, isr_exp, jor_exp, 
                    kwt_exp, lbn_exp, omn_exp, qat_exp, sau_exp, syr_exp, tur_exp, uae_exp, yem_exp)

me_exp_dep <- me_exports %>%
 group_by(year) %>%
  group_by(country_origin_id, add=TRUE) %>%
  mutate(countT = sum(export_val)) %>%
  mutate(per=paste0(round(100*export_val/countT,2),'%'))
me_exp_dep_3 <- subset(me_exp_dep, country_destination_id %in% c("USA","CHN","RUS"))
write.csv(me_exp_dep_3, file = "Total ME Export Dependence Russia China USA.csv")


### Middle East imports
bah_imp<- read.csv("C:/Users/Msmeltzer/Desktop/Middle East Data/Economic/Import/bah_imp.csv", na = ":")
cyp_imp<- read.csv("C:/Users/Msmeltzer/Desktop/Middle East Data/Economic/Import/cyp_imp.csv", na = ":")
egy_imp<- read.csv("C:/Users/Msmeltzer/Desktop/Middle East Data/Economic/Import/egy_imp.csv", na = ":")
irn_imp<- read.csv("C:/Users/Msmeltzer/Desktop/Middle East Data/Economic/Import/irn_imp.csv", na = ":")
irq_imp<- read.csv("C:/Users/Msmeltzer/Desktop/Middle East Data/Economic/Import/irq_imp.csv", na = ":")
isr_imp<- read.csv("C:/Users/Msmeltzer/Desktop/Middle East Data/Economic/Import/isr_imp.csv", na = ":")
jor_imp<- read.csv("C:/Users/Msmeltzer/Desktop/Middle East Data/Economic/Import/jor_imp.csv", na = ":")
kwt_imp<- read.csv("C:/Users/Msmeltzer/Desktop/Middle East Data/Economic/Import/kwt_imp.csv", na = ":")
lbn_imp<- read.csv("C:/Users/Msmeltzer/Desktop/Middle East Data/Economic/Import/lbn_imp.csv", na = ":")
omn_imp<- read.csv("C:/Users/Msmeltzer/Desktop/Middle East Data/Economic/Import/omn_imp.csv", na = ":")
qat_imp<- read.csv("C:/Users/Msmeltzer/Desktop/Middle East Data/Economic/Import/qat_imp.csv", na = ":")
sau_imp<- read.csv("C:/Users/Msmeltzer/Desktop/Middle East Data/Economic/Import/sau_imp.csv", na = ":")
syr_imp<- read.csv("C:/Users/Msmeltzer/Desktop/Middle East Data/Economic/Import/syr_imp.csv", na = ":")
tur_imp<- read.csv("C:/Users/Msmeltzer/Desktop/Middle East Data/Economic/Import/tur_imp.csv", na = ":")
uae_imp<- read.csv("C:/Users/Msmeltzer/Desktop/Middle East Data/Economic/Import/uae_imp.csv", na = ":")
yem_imp<- read.csv("C:/Users/Msmeltzer/Desktop/Middle East Data/Economic/Import/yem_imp.csv", na = ":")

me_imports <- rbind(bah_imp, cyp_imp, egy_imp, irn_imp, irq_imp, isr_imp, jor_imp, 
                    kwt_imp, lbn_imp, omn_imp, qat_imp, sau_imp, syr_imp, tur_imp, uae_imp, yem_imp)

me_imp_dep <- me_imports %>%
 group_by(year) %>%
  group_by(country_origin_id, add=TRUE) %>%
  mutate(countT = sum(import_val)) %>%
  mutate(per=paste0(round(100*import_val/countT,2),'%'))
me_imp_dep_3 <- subset(me_imp_dep, country_destination_id %in% c("USA","CHN","RUS"))
write.csv(me_imp_dep_3, file = "Total ME import Dependence Russia China USA.csv")


####North Africa Exports
alg_exp <- read.csv("C:/Users/Msmeltzer/Desktop/Middle East Data/North Africa/Economic/alg_exp.csv", na = ":")
lib_exp<- read.csv("C:/Users/Msmeltzer/Desktop/Middle East Data/North Africa/Economic/lib_exp.csv", na = ":")
mor_exp<- read.csv("C:/Users/Msmeltzer/Desktop/Middle East Data/North Africa/Economic/mor_exp.csv", na = ":")
tun_exp<- read.csv("C:/Users/Msmeltzer/Desktop/Middle East Data/North Africa/Economic/tun_exp.csv", na = ":")

na_exports <- rbind(alg_exp, lib_exp, mor_exp, tun_exp)

na_exp_dep <- na_exports %>%
 group_by(year) %>%
  group_by(country_origin_id, add=TRUE) %>%
  mutate(countT = sum(export_val)) %>%
  mutate(per=paste0(round(100*export_val/countT,2),'%'))
na_exp_dep_3 <- subset(na_exp_dep, country_destination_id %in% c("USA","CHN","RUS"))
write.csv(na_exp_dep_3, file = "Total NA Export Dependence Russia China USA.csv")



###North Africa Imports
alg_imp<- read.csv("C:/Users/Msmeltzer/Desktop/Middle East Data/North Africa/Economic/alg_imp.csv", na = ":")
lib_imp<- read.csv("C:/Users/Msmeltzer/Desktop/Middle East Data/North Africa/Economic/lib_imp.csv", na = ":")
mor_imp<- read.csv("C:/Users/Msmeltzer/Desktop/Middle East Data/North Africa/Economic/mor_imp.csv", na = ":")
tun_imp<- read.csv("C:/Users/Msmeltzer/Desktop/Middle East Data/North Africa/Economic/tun_imp.csv", na = ":")


na_imports <- rbind(alg_imp, lib_imp, mor_imp, tun_imp)

na_imp_dep <- na_imports %>%
 group_by(year) %>%
  group_by(country_origin_id, add=TRUE) %>%
  mutate(countT = sum(import_val)) %>%
  mutate(per=paste0(round(100*import_val/countT,2),'%'))
na_imp_dep_3 <- subset(na_imp_dep, country_destination_id %in% c("USA","CHN","RUS"))
write.csv(na_imp_dep_3, file = "Total NA import Dependence Russia China USA.csv")
