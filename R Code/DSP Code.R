
###Load up the Tidyverse
library(tidyverse)
###Load in the DSP Data
DSP_Dataset_v1 <- read_csv("C:/Users/Msmeltzer/Desktop/DigitalSocietyProject-v1-R/DSP-Dataset-v1.csv")


## Subetting with just the countries we want based on their Corrolates of War ID numbers
dsp_subset <- subset(DSP_Dataset_v1, COWcode %in% c(900, 835, 775,811,950,850,740,
 946,812,820,983,987,712,970,920,731,986,910,840,990,830,940,732,713,800,860,955,947,935,816,700,
 771,760,750,781,790,770,780, 946))


### Subsetting with just the variables we want (as defined in Codebook)
dsp_subset2 <- dsp_subset %>%
  select(country_name, year, v2smgovdom_osp,
v2smgovab_osp,
v2smpardom_osp,
v2smparab_osp,
v2smfordom_osp, 
v2smforads_osp, 
v2smgovfilcap_osp, 
v2smgovfilprc_osp, 
v2smgovshutcap_osp, 
v2smgovshut_osp, 
v2smgovsm_osp, 
v2smgovsmalt_osp, 
v2smgovsmmon_osp, 
v2smgovsmcenprc_osp, 
v2smgovcapsec_osp, 
v2smpolcap_osp, 
v2smregcon_osp, 
v2smprivex_osp, 
v2smprivcon_osp, 
v2smregcap_osp, 
v2smregapp_osp,
v2smlawpr_osp, 
v2smdefabu_osp, 
v2smonex_osp, 
v2smonper_osp)

####Changing from the DSP Scale of 0-4 to ours of 0-1
dsp_subset3 <- dsp_subset2 %>% group_by(country_name, year) %>%
  mutate(v1 = v2smgovdom_osp/4) %>%
mutate(v2 = v2smgovab_osp/4) %>%
mutate(v3 = v2smpardom_osp/4) %>%
mutate(v4 = v2smparab_osp/4) %>%
mutate(v5 = v2smfordom_osp/4)  %>%
mutate(v6 = v2smforads_osp/4)  %>%
mutate(v7 = v2smgovfilcap_osp/3)  %>%
mutate(v8 = v2smgovfilprc_osp/4)  %>%
mutate(v9 = v2smgovshutcap_osp/4)  %>%
mutate(v10 = v2smgovshut_osp/4)  %>%
mutate(v11 = v2smgovsm_osp/4)  %>%
mutate(v12 = v2smgovsmalt_osp/4)  %>%
mutate(v13 = v2smgovsmmon_osp/4)  %>%
mutate(v14 = v2smgovsmcenprc_osp/4)  %>%
mutate(v15 = v2smgovcapsec_osp/4)  %>%
mutate(v16 = v2smpolcap_osp/4)  %>%
mutate(v17 = v2smregcon_osp/4)  %>%
mutate(v18 = v2smprivex_osp/2)  %>%
mutate(v19 = v2smprivcon_osp/4)  %>%
mutate(v20= v2smregcap_osp/4)  %>%
mutate(v21= v2smregapp_osp/4) %>%
mutate(v22 = v2smlawpr_osp/4)  %>%
mutate(v23 = v2smdefabu_osp/4)  %>%
mutate(v24 = v2smonex_osp/3)  %>%
mutate(v25 = v2smonper_osp/4) %>%
summarise(v1=v1,
v2=v2,
v3=v3,
v4=v4,
v5=v5,
v6=v6,
v7=v7,
v8=v8,
v9=v9,
v10=v10,
v11=v11,
v12=v12,
v13=v13,
v14=v14,
v15=v15,
v16=v16,
v17=v17,
v18=v18,
v19=v19,
v20=v20,
v21=v21,
v22=v22,
v23=v23,
v24=v24,
v25=v25
)


### Creating a a new column that gives all the variables equal weight and averages to a new variable comprised of all
new <- dsp_subset3 %>% group_by(country_name, year) %>%
  mutate(index = v1/25 + 
v2/25 + 
v3/25 + 
v4/25 + 
v5/25 + 
v6/25 + 
v7/25 + 
v8/25 + 
v9/25 + 
v10/25 + 
v11/25 + 
v12/25 + 
v13/25 + 
v14/25 + 
v15/25 + 
v16/25 + 
v17/25 + 
v18/25 + 
v19/25 + 
v20/25 + 
v21/25 + 
v22/25 + 
v23/25 + 
v24/25 + 
v25/25
) %>%
  summarise(index = index
            )

write_csv(new, "DSP Scores.csv")


