library(dplyr)
library(tidyverse)

##EXAMPLES OF HOW TO DO THIS
# From http://stackoverflow.com/questions/1181060
stocks <- tibble(
  time = as.Date('2009-01-01') + 0:9,
  X = rnorm(10, 0, 1),
  Y = rnorm(10, 0, 2),
  Z = rnorm(10, 0, 4)
)
gather(stocks, "stock", "price", -time)
stocks %>% gather("stock", "price", -time)

###Gather - Arms Sales
cas <- China_Arms_Sales %>% gather("target_country", "arms_sales", -year)
cas$super_power <- "China"

usas <- US_Arms_Sales %>% gather("target_country", "arms_sales", -year)
usas$super_power <- "United States"

ras <- Russia_Arms_Sales %>% gather("target_country", "arms_sales", -year)
ras$super_power <- "Russia"

gas <- Germany_Arms_Sales %>% gather("target_country", "arms_sales", -year)
gas$super_power <- "Germany"

arms_sales_all <- rbind(cas, usas, ras, gas)


###Gather - Defense Pacts

cdp <- China_Defense_Pacts %>% gather("target_country", "defense_pacts", -year)
cdp$super_power <- "China"

usdp <- US_Defense_Pacts %>% gather("target_country", "defense_pacts", -year)
usdp$super_power <- "United States"

rdp <- Russia_Defense_Pacts %>% gather("target_country", "defense_pacts", -year)
rdp$super_power <- "Russia"

gdp <- Germany_Defense_Pacts %>% gather("target_country", "defense_pacts", -year)
gdp$super_power <- "Germany"

defense_pacts_all <- rbind(cdp, usdp, rdp, gdp)


###Gather - Military Bases
cmb <- China_Military_Bases %>% gather("target_country", "military_bases", -year)
cmb$super_power <- "China"

usmb <- US_Military_Bases %>% gather("target_country", "military_bases", -year)
usmb$super_power <- "United States"

rmb <- Russia_Military_Bases %>% gather("target_country", "military_bases", -year)
rmb$super_power <- "Russia"

gmb <- Germany_Military_Bases %>% gather("target_country", "military_bases", -year)
gmb$super_power <- "Germany"

military_bases_all <- rbind(cmb, usmb, rmb, gmb)

###Gather - Import Dependence
cid <- China_Import_Dep %>% gather("target_country", "import_dep", -year)
cid$super_power <- "China"

usid <- US_Import_Dep %>% gather("target_country", "import_dep", -year)
usid$super_power <- "United States"

rid <- Russia_Import_Dep %>% gather("target_country", "import_dep", -year)
rid$super_power <- "Russia"

gid <- Germany_Import_Dep %>% gather("target_country", "import_dep", -year)
gid$super_power <- "Germany"

import_dep_all <- rbind(cid, usid, rid, gid)

###Gather - Export Dependence
ced <- China_Export_Dep %>% gather("target_country", "export_dep", -year)
ced$super_power <- "China"

used <- US_Export_Dep %>% gather("target_country", "export_dep", -year)
used$super_power <- "United States"

red <- Russia_Export_Dep %>% gather("target_country", "export_dep", -year)
red$super_power <- "Russia"

ged <- Germany_Export_Dep %>% gather("target_country", "export_dep", -year)
ged$super_power <- "Germany"

export_dep_all <- rbind(ced, used, red, ged)

###Gather - FDI Dependence
cfdi <- China_FDI_Dep %>% gather("target_country", "fdi_dep", -year)
cfdi$super_power <- "China"

usfdi <- US_FDI_Dep %>% gather("target_country", "fdi_dep", -year)
usfdi$super_power <- "United States"

rfdi <- Russia_FDI_Dep %>% gather("target_country", "fdi_dep", -year)
rfdi$super_power <- "Russia"

gfdi <- Germany_FDI_Dep %>% gather("target_country", "fdi_dep", -year)
gfdi$super_power <- "Germany"

fdi_dep_all <- rbind(cfdi, usfdi, rfdi, gfdi)

###Gather - PFI Scores
cpfi <- China_PFI %>% gather("target_country", "pfi_scores", -year)
cpfi$super_power <- "China"

uspfi <- US_PFI %>% gather("target_country", "pfi_scores", -year)
uspfi$super_power <- "United States"

rpfi <- Russia_PFI %>% gather("target_country", "pfi_scores", -year)
rpfi$super_power <- "Russia"

gpfi <- Germany_PFI %>% gather("target_country", "pfi_scores", -year)
gpfi$super_power <- "Germany"

pfi_scores_all <- rbind(cpfi, uspfi, rpfi, gpfi)

###Gather - DSP Scores
cdsp <- DSP_Scores %>% gather("target_country", "dsp_scores", -year)
cdsp$super_power <- "China"

usdsp <- DSP_Scores %>% gather("target_country", "dsp_scores", -year)
usdsp$super_power <- "United States"

rdsp <- DSP_Scores %>% gather("target_country", "dsp_scores", -year)
rdsp$super_power <- "Russia"

gdsp <- DSP_Scores %>% gather("target_country", "dsp_scores", -year)
gdsp$super_power <- "Germany"

dsp_scores_all <- rbind(cdsp, usdsp, rdsp, gdsp)


###Gather - DRI Scores
cdri <- DRI_Scores_Else %>% gather("target_country", "dri_scores", -year)
cdri$super_power <- "China"

usdri <- DRI_Scores_Else %>% gather("target_country", "dri_scores", -year)
usdri$super_power <- "United States"

rdri <- DRI_Scores %>% gather("target_country", "dri_scores", -year)
rdri$super_power <- "Russia"

gdri <- DRI_Scores_Else %>% gather("target_country", "dri_scores", -year)
gdri$super_power <- "Germany"

dri_scores_all <- rbind(cdri, usdri, rdri, gdri)

###Gather - UNGA
cunga <- China_UNGA %>% gather("target_country", "unga_voting", -year)
cunga$super_power <- "China"

usunga <- US_UNGA %>% gather("target_country", "unga_voting", -year)
usunga$super_power <- "United States"

runga <- Russia_UNGA %>% gather("target_country", "unga_voting", -year)
runga$super_power <- "Russia"

gunga <- Germany_UNGA %>% gather("target_country", "unga_voting", -year)
gunga$super_power <- "Germany"

unga_voting_all <- rbind(cunga, usunga, runga, gunga)


###Gather - HoS Meetings
chos <- China_HOS %>% gather("target_country", "HOS_meetings", -year)
chos$super_power <- "China"

ushos <- US_HOS %>% gather("target_country", "HOS_meetings", -year)
ushos$super_power <- "United States"

rhos <- Russia_HOS %>% gather("target_country", "HOS_meetings", -year)
rhos$super_power <- "Russia"

ghos <- Germany_HOS %>% gather("target_country", "HOS_meetings", -year)
ghos$super_power <- "Germany"

HOS_meetings_all <- rbind(chos, ushos, rhos, ghos)

###Gather - Security Hierarchy
csech <- China_Security_Hierarchy %>% gather("target_country", "sec_hierarchy", -year)
csech$super_power <- "China"

ussech <- US_Security_Hierarchy %>% gather("target_country", "sec_hierarchy", -year)
ussech$super_power <- "United States"

rsech <- Russia_Security_Hierarchy %>% gather("target_country", "sec_hierarchy", -year)
rsech$super_power <- "Russia"

gsech <- Germany_Security_Hierarchy %>% gather("target_country", "sec_hierarchy", -year)
gsech$super_power <- "Germany"

security_hiearchy_all <- rbind(csech, ussech, rsech, gsech)

###Gather - Economic Hierarchy
cecoh <- China_Economic_Hierarchy %>% gather("target_country", "econ_hierarchy", -year)
cecoh$super_power <- "China"

usecoh <- US_Economic_Hierarchy %>% gather("target_country", "econ_hierarchy", -year)
usecoh$super_power <- "United States"

recoh <- Russia_Economic_Hierarchy %>% gather("target_country", "econ_hierarchy", -year)
recoh$super_power <- "Russia"

gecoh <- Germany_Economic_Hierarchy %>% gather("target_country", "econ_hierarchy", -year)
gecoh$super_power <- "Germany"

economic_hierarchy_all <- rbind(cecoh, usecoh, recoh, gecoh)

###Gather - Diplomatic Hierarchy

cdiph <- China_Diplomatic_Hierarchy %>% gather("target_country", "diplo_hierarchy", -year)
cdiph$super_power <- "China"

usdiph <- US_Diplomatic_Hierarchy %>% gather("target_country", "diplo_hierarchy", -year)
usdiph$super_power <- "United States"

rdiph <- Russia_Diplomatic_Hierarchy %>% gather("target_country", "diplo_hierarchy", -year)
rdiph$super_power <- "Russia"

gdiph <- Germany_Diplomatic_Hierarchy %>% gather("target_country", "diplo_hierarchy", -year)
gdiph$super_power <- "Germany"

diplomatic_hieararchy_all <- rbind(cdiph, usdiph, rdiph, gdiph)

###Gather - Informational Hierarchy
cinfh <- China_Informational_Hierarchy %>% gather("target_country", "info_hierarchy", -year)
cinfh$super_power <- "China"

usinfh <- US_Informational_Hierarchy %>% gather("target_country", "info_hierarchy", -year)
usinfh$super_power <- "United States"

rinfh <- Russia_Informational_Hierarchy  %>% gather("target_country", "info_hierarchy", -year)
rinfh$super_power <- "Russia"

ginfh <- Germany_Informational_Hierarchy %>% gather("target_country", "info_hierarchy", -year)
ginfh$super_power <- "Germany"

informational_hierarchy_all <- rbind(cinfh, usinfh, rinfh, ginfh)


###Gather - All Equal Model Scores
cae <- China_All_Equal %>% gather("target_country", "allequal_model", -year)
cae$super_power <- "China" 

usae <- US_All_Equal %>% gather("target_country", "allequal_model", -year)
usae$super_power <- "United States" 

rae <- Russia_All_Equal %>% gather("target_country", "allequal_model", -year)
rae$super_power <- "Russia" 

gae <- Germany_All_Equal %>% gather("target_country", "allequal_model", -year)
gae$super_power <- "Germany" 

allequal_model_all <- rbind(cae, usae, rae, gae)


###Gather - Security Model Scores
csecm <- China_Security %>% gather("target_country", "security_model", -year)
csecm$super_power <- "China"

ussecm <- US_Security %>% gather("target_country", "security_model", -year)
ussecm$super_power <- "United States"

rsecm <- Russia_Security %>% gather("target_country", "security_model", -year)
rsecm$super_power <- "Russia"

gsecm <- Germany_Security %>% gather("target_country", "security_model", -year)
gsecm$super_power <- "Germany"

security_model_all <- rbind(csecm, ussecm, rsecm, gsecm)

###Gather - Economic Model Scores
cecom <- China_Economic %>% gather("target_country", "economic_model", -year)
cecom$super_power <- "China"

usecom <- US_Economic %>% gather("target_country", "economic_model", -year)
usecom$super_power <- "United States"

recom <- Russia_Economic %>% gather("target_country", "economic_model", -year)
recom$super_power <- "Russia"

gecom <- Germany_Economic %>% gather("target_country", "economic_model", -year)
gecom$super_power <- "Germany"

economic_model_all <- rbind(cecom, usecom, recom, gecom)

###Gather - Diplomatic Model Scores
cdipm <- China_Diplomatic %>% gather("target_country", "diplomatic_model", -year)
cdipm$super_power <- "China"

usdipm <- US_Diplomatic %>% gather("target_country", "diplomatic_model", -year)
usdipm$super_power <- "United States"

rdipm <- Russia_Diplomatic %>% gather("target_country", "diplomatic_model", -year)
rdipm$super_power <- "Russia"

gdipm <- Germany_Diplomatic %>% gather("target_country", "diplomatic_model", -year)
gdipm$super_power <- "Germany"

diplomatic_model_all <- rbind(cdipm, usdipm, rdipm, gdipm)


###Gather - Informational Model Scores
cinfom <- China_Informational %>% gather("target_country", "informational_model", -year)
cinfom$super_power <- "China"

usinfom <- US_Informational %>% gather("target_country", "informational_model", -year)
usinfom$super_power <- "United States"

rinfom <- Russia_Informational %>% gather("target_country", "informational_model", -year)
rinfom$super_power <- "Russia"

ginfom <- Germany_Informational %>% gather("target_country", "informational_model", -year)
ginfom$super_power <- "Germany"

informational_model_all <- rbind(cinfom, usinfom, rinfom, ginfom)

###Joining
test <- full_join(arms_sales_all, defense_pacts_all) %>%
  full_join(., military_bases_all)  %>%
    full_join(.,export_dep_all)  %>%
      full_join(.,import_dep_all) %>%
       full_join(.,fdi_dep_all)  %>%
        full_join(.,pfi_scores_all)  %>%
         full_join(.,dsp_scores_all)  %>%
          full_join(.,dri_scores_all)  %>%
            full_join(.,unga_voting_all)  %>%
             full_join(.,HOS_meetings_all)%>%
               full_join(.,security_hiearchy_all)%>%
                full_join(.,economic_hierarchy_all)%>%
                  full_join(.,diplomatic_hieararchy_all)%>%
                    full_join(.,informational_hierarchy_all)%>%
                      full_join(.,allequal_model_all)%>%
                        full_join(.,security_model_all)%>%
                          full_join(.,economic_model_all)%>%
                            full_join(.,diplomatic_model_all)%>%
                             full_join(.,informational_model_all)

full_data <- test %>% select(year, target_country, super_power, allequal_model, security_model, 
  economic_model, diplomatic_model, informational_model, sec_hierarchy, econ_hierarchy, diplo_hierarchy, info_hierarchy, 
  arms_sales, defense_pacts, military_bases, import_dep, export_dep, fdi_dep, pfi_scores, dsp_scores, dri_scores, unga_voting, HOS_meetings)
