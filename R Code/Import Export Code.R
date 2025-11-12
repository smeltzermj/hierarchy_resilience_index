library(tidyverse)

###Importing all of the downloaded files from AtlasLab
afg_exp <- read.csv("C:/Users/Msmeltzer/Desktop/Africa Asia Data/Asia/Economic/Export Data/afg_exp.csv", na = ":")
 aus_exp <- read.csv("C:/Users/Msmeltzer/Desktop/Africa Asia Data/Asia/Economic/Export Data/aus_exp.csv", na = ":")
 bgd_exp <- read.csv("C:/Users/Msmeltzer/Desktop/Africa Asia Data/Asia/Economic/Export Data/bgd_exp.csv", na = ":")
 brn_exp <- read.csv("C:/Users/Msmeltzer/Desktop/Africa Asia Data/Asia/Economic/Export Data/brn_exp.csv", na = ":")
 btn_exp <- read.csv("C:/Users/Msmeltzer/Desktop/Africa Asia Data/Asia/Economic/Export Data/btn_exp.csv", na = ":")
 fji_exp <- read.csv("C:/Users/Msmeltzer/Desktop/Africa Asia Data/Asia/Economic/Export Data/fji_exp.csv", na = ":")
 fsm_exp <- read.csv("C:/Users/Msmeltzer/Desktop/Africa Asia Data/Asia/Economic/Export Data/fsm_exp.csv", na = ":")
 idn_exp <- read.csv("C:/Users/Msmeltzer/Desktop/Africa Asia Data/Asia/Economic/Export Data/idn_exp.csv", na = ":")
 ind_exp <- read.csv("C:/Users/Msmeltzer/Desktop/Africa Asia Data/Asia/Economic/Export Data/ind_exp.csv", na = ":")
 jpn_exp <- read.csv("C:/Users/Msmeltzer/Desktop/Africa Asia Data/Asia/Economic/Export Data/jpn_exp.csv", na = ":")
 khm_exp <- read.csv("C:/Users/Msmeltzer/Desktop/Africa Asia Data/Asia/Economic/Export Data/khm_exp.csv", na = ":")
 kir_exp <- read.csv("C:/Users/Msmeltzer/Desktop/Africa Asia Data/Asia/Economic/Export Data/kir_exp.csv", na = ":")
 kor_exp <- read.csv("C:/Users/Msmeltzer/Desktop/Africa Asia Data/Asia/Economic/Export Data/kor_exp.csv", na = ":")
 lao_exp <- read.csv("C:/Users/Msmeltzer/Desktop/Africa Asia Data/Asia/Economic/Export Data/lao_exp.csv", na = ":")
 lka_exp <- read.csv("C:/Users/Msmeltzer/Desktop/Africa Asia Data/Asia/Economic/Export Data/lka_exp.csv", na = ":")
 mdv_exp <- read.csv("C:/Users/Msmeltzer/Desktop/Africa Asia Data/Asia/Economic/Export Data/mdv_exp.csv", na = ":")
 mhl_exp <- read.csv("C:/Users/Msmeltzer/Desktop/Africa Asia Data/Asia/Economic/Export Data/mhl_exp.csv", na = ":")
 mmr_exp <- read.csv("C:/Users/Msmeltzer/Desktop/Africa Asia Data/Asia/Economic/Export Data/mmr_exp.csv", na = ":")
 mng_exp <- read.csv("C:/Users/Msmeltzer/Desktop/Africa Asia Data/Asia/Economic/Export Data/mng_exp.csv", na = ":")
 mys_exp <- read.csv("C:/Users/Msmeltzer/Desktop/Africa Asia Data/Asia/Economic/Export Data/mys_exp.csv", na = ":")
 npl_exp <- read.csv("C:/Users/Msmeltzer/Desktop/Africa Asia Data/Asia/Economic/Export Data/npl_exp.csv", na = ":")
 nru_exp <- read.csv("C:/Users/Msmeltzer/Desktop/Africa Asia Data/Asia/Economic/Export Data/nru_exp.csv", na = ":")
 nzl_exp <- read.csv("C:/Users/Msmeltzer/Desktop/Africa Asia Data/Asia/Economic/Export Data/nzl_exp.csv", na = ":")
 pak_exp <- read.csv("C:/Users/Msmeltzer/Desktop/Africa Asia Data/Asia/Economic/Export Data/pak_exp.csv", na = ":")
 phl_exp <- read.csv("C:/Users/Msmeltzer/Desktop/Africa Asia Data/Asia/Economic/Export Data/phl_exp.csv", na = ":")
 plw_exp <- read.csv("C:/Users/Msmeltzer/Desktop/Africa Asia Data/Asia/Economic/Export Data/plw_exp.csv", na = ":")
 png_exp <- read.csv("C:/Users/Msmeltzer/Desktop/Africa Asia Data/Asia/Economic/Export Data/png_exp.csv", na = ":")
 prk_exp <- read.csv("C:/Users/Msmeltzer/Desktop/Africa Asia Data/Asia/Economic/Export Data/prk_exp.csv", na = ":")
 sgp_exp <- read.csv("C:/Users/Msmeltzer/Desktop/Africa Asia Data/Asia/Economic/Export Data/sgp_exp.csv", na = ":")
 slb_exp <- read.csv("C:/Users/Msmeltzer/Desktop/Africa Asia Data/Asia/Economic/Export Data/slb_exp.csv", na = ":")
 tha_exp <- read.csv("C:/Users/Msmeltzer/Desktop/Africa Asia Data/Asia/Economic/Export Data/tha_exp.csv", na = ":")
 tls_exp <- read.csv("C:/Users/Msmeltzer/Desktop/Africa Asia Data/Asia/Economic/Export Data/tls_exp.csv", na = ":")
 ton_exp <- read.csv("C:/Users/Msmeltzer/Desktop/Africa Asia Data/Asia/Economic/Export Data/ton_exp.csv", na = ":")
 tuv_exp <- read.csv("C:/Users/Msmeltzer/Desktop/Africa Asia Data/Asia/Economic/Export Data/tuv_exp.csv", na = ":")
 vnm_exp <- read.csv("C:/Users/Msmeltzer/Desktop/Africa Asia Data/Asia/Economic/Export Data/vnm_exp.csv", na = ":")
 vut_exp <- read.csv("C:/Users/Msmeltzer/Desktop/Africa Asia Data/Asia/Economic/Export Data/vut_exp.csv", na = ":")
 wsm_exp <- read.csv("C:/Users/Msmeltzer/Desktop/Africa Asia Data/Asia/Economic/Export Data/wsm_exp.csv", na = ":")

####Asia Imports
 afg_imp <- read.csv("C:/Users/Msmeltzer/Desktop/Africa Asia Data/Asia/Economic/Import Data/afg_imp.csv", na = ":")
 aus_imp <- read.csv("C:/Users/Msmeltzer/Desktop/Africa Asia Data/Asia/Economic/Import Data/aus_imp.csv", na = ":")
 bgd_imp <- read.csv("C:/Users/Msmeltzer/Desktop/Africa Asia Data/Asia/Economic/Import Data/bgd_imp.csv", na = ":")
 brn_imp <- read.csv("C:/Users/Msmeltzer/Desktop/Africa Asia Data/Asia/Economic/Import Data/brn_imp.csv", na = ":")
 btn_imp <- read.csv("C:/Users/Msmeltzer/Desktop/Africa Asia Data/Asia/Economic/Import Data/btn_imp.csv", na = ":")
 fji_imp <- read.csv("C:/Users/Msmeltzer/Desktop/Africa Asia Data/Asia/Economic/Import Data/fji_imp.csv", na = ":")
 fsm_imp <- read.csv("C:/Users/Msmeltzer/Desktop/Africa Asia Data/Asia/Economic/Import Data/fsm_imp.csv", na = ":")
 idn_imp <- read.csv("C:/Users/Msmeltzer/Desktop/Africa Asia Data/Asia/Economic/Import Data/idn_imp.csv", na = ":")
 ind_imp <- read.csv("C:/Users/Msmeltzer/Desktop/Africa Asia Data/Asia/Economic/Import Data/ind_imp.csv", na = ":")
 jpn_imp <- read.csv("C:/Users/Msmeltzer/Desktop/Africa Asia Data/Asia/Economic/Import Data/jpn_imp.csv", na = ":")
 khm_imp <- read.csv("C:/Users/Msmeltzer/Desktop/Africa Asia Data/Asia/Economic/Import Data/khm_imp.csv", na = ":")
 kir_imp <- read.csv("C:/Users/Msmeltzer/Desktop/Africa Asia Data/Asia/Economic/Import Data/kir_imp.csv", na = ":")
 kor_imp <- read.csv("C:/Users/Msmeltzer/Desktop/Africa Asia Data/Asia/Economic/Import Data/kor_imp.csv", na = ":")
 lao_imp <- read.csv("C:/Users/Msmeltzer/Desktop/Africa Asia Data/Asia/Economic/Import Data/lao_imp.csv", na = ":")
 lka_imp <- read.csv("C:/Users/Msmeltzer/Desktop/Africa Asia Data/Asia/Economic/Import Data/lka_imp.csv", na = ":")
 mdv_imp <- read.csv("C:/Users/Msmeltzer/Desktop/Africa Asia Data/Asia/Economic/Import Data/mdv_imp.csv", na = ":")
 mhl_imp <- read.csv("C:/Users/Msmeltzer/Desktop/Africa Asia Data/Asia/Economic/Import Data/mhl_imp.csv", na = ":")
 mmr_imp <- read.csv("C:/Users/Msmeltzer/Desktop/Africa Asia Data/Asia/Economic/Import Data/mmr_imp.csv", na = ":")
 mng_imp <- read.csv("C:/Users/Msmeltzer/Desktop/Africa Asia Data/Asia/Economic/Import Data/mng_imp.csv", na = ":")
 mys_imp <- read.csv("C:/Users/Msmeltzer/Desktop/Africa Asia Data/Asia/Economic/Import Data/mys_imp.csv", na = ":")
 npl_imp <- read.csv("C:/Users/Msmeltzer/Desktop/Africa Asia Data/Asia/Economic/Import Data/npl_imp.csv", na = ":")
 nru_imp <- read.csv("C:/Users/Msmeltzer/Desktop/Africa Asia Data/Asia/Economic/Import Data/nru_imp.csv", na = ":")
 nzl_imp <- read.csv("C:/Users/Msmeltzer/Desktop/Africa Asia Data/Asia/Economic/Import Data/nzl_imp.csv", na = ":")
 pak_imp <- read.csv("C:/Users/Msmeltzer/Desktop/Africa Asia Data/Asia/Economic/Import Data/pak_imp.csv", na = ":")
 phl_imp <- read.csv("C:/Users/Msmeltzer/Desktop/Africa Asia Data/Asia/Economic/Import Data/phl_imp.csv", na = ":")
 plw_imp <- read.csv("C:/Users/Msmeltzer/Desktop/Africa Asia Data/Asia/Economic/Import Data/plw_imp.csv", na = ":")
 png_imp <- read.csv("C:/Users/Msmeltzer/Desktop/Africa Asia Data/Asia/Economic/Import Data/png_imp.csv", na = ":")
 prk_imp <- read.csv("C:/Users/Msmeltzer/Desktop/Africa Asia Data/Asia/Economic/Import Data/prk_imp.csv", na = ":")
 sgp_imp <- read.csv("C:/Users/Msmeltzer/Desktop/Africa Asia Data/Asia/Economic/Import Data/sgp_imp.csv", na = ":")
 slb_imp <- read.csv("C:/Users/Msmeltzer/Desktop/Africa Asia Data/Asia/Economic/Import Data/slb_imp.csv", na = ":")
 tha_imp <- read.csv("C:/Users/Msmeltzer/Desktop/Africa Asia Data/Asia/Economic/Import Data/tha_imp.csv", na = ":")
 tls_imp <- read.csv("C:/Users/Msmeltzer/Desktop/Africa Asia Data/Asia/Economic/Import Data/tls_imp.csv", na = ":")
 ton_imp <- read.csv("C:/Users/Msmeltzer/Desktop/Africa Asia Data/Asia/Economic/Import Data/ton_imp.csv", na = ":")
 tuv_imp <- read.csv("C:/Users/Msmeltzer/Desktop/Africa Asia Data/Asia/Economic/Import Data/tuv_imp.csv", na = ":")
 vnm_imp <- read.csv("C:/Users/Msmeltzer/Desktop/Africa Asia Data/Asia/Economic/Import Data/vnm_imp.csv", na = ":")
 vut_imp <- read.csv("C:/Users/Msmeltzer/Desktop/Africa Asia Data/Asia/Economic/Import Data/vut_imp.csv", na = ":")
 wsm_imp <- read.csv("C:/Users/Msmeltzer/Desktop/Africa Asia Data/Asia/Economic/Import Data/wsm_imp.csv", na = ":")

### Binding the rows of all the files into one big spreadsheet
 asia_imports <- rbind(afg_imp,  aus_imp, bgd_imp, brn_imp, btn_imp,  fji_imp, fsm_imp,  idn_imp, ind_imp, jpn_imp, khm_imp, kir_imp, kor_imp, lao_imp, lka_imp, mdv_imp, mhl_imp,  mmr_imp,  mng_imp,  mys_imp,  npl_imp,  nru_imp,  nzl_imp,  pak_imp,  phl_imp,  plw_imp,  png_imp,  prk_imp,  sgp_imp,  slb_imp,  tha_imp,  tls_imp,  ton_imp,  tuv_imp, vnm_imp, vut_imp, wsm_imp
)
asia_exports <- rbind(afg_exp,  aus_exp, bgd_exp, brn_exp, btn_exp,  fji_exp, fsm_exp,  idn_exp, ind_exp, jpn_exp, khm_exp, kir_exp, kor_exp, lao_exp, lka_exp, mdv_exp, mhl_exp,  mmr_exp,  mng_exp,  mys_exp,  npl_exp,  nru_exp,  nzl_exp,  pak_exp,  phl_exp,  plw_exp,  png_exp,  prk_exp,  sgp_exp,  slb_exp,  tha_exp,  tls_exp,  ton_exp,  tuv_exp, vnm_exp, vut_exp, wsm_exp
)


### Export Code
###This code determines the export dependency of a country on a super power.
asia_exp_dep <- asia_exports %>%
 group_by(year) %>%
  group_by(country_origin_id, add=TRUE) %>%
  ###The next line sums up the export values in a given year to give you a total for exports for a target country in a year
  mutate(countT = sum(export_val)) %>%
  ### You then use that number as the denominator to determine the percentage of dependency a country has on another country
  mutate(per=paste0(round(100*export_val/countT,2),'%'))
###You then subset out the super powers that you are interested in
asia_exp_dep_4 <- subset(asia_exp_dep, country_destination_id %in% c("USA","CHN","RUS", "IND"))
###And write that file as a csv
write.csv(asia_exp_dep_4, file = "Asia Export Dependence.csv")


###Import Code - Same rationale as above
asia_imp_dep <- asia_imports %>%
 group_by(year) %>%
  group_by(country_origin_id, add=TRUE) %>%
  mutate(countT = sum(import_val)) %>%
  mutate(per=paste0(round(100*import_val/countT,2),'%'))
asia_imp_dep_4 <- subset(asia_imp_dep, country_destination_id %in% c("USA","CHN","RUS", "IND"))
write.csv(asia_imp_dep_4, file = "Asia Import Dependence.csv")
