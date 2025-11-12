arm_exp <- read.csv("C:/Users/Msmeltzer/Desktop/Post Soviet Hierarchy Data/Economic/Export Data/Armenia.csv", na = ":")
aze_exp<- read.csv("C:/Users/Msmeltzer/Desktop/Post Soviet Hierarchy Data/Economic/Export Data/Azerbaijan.csv", na = ":")
bel_exp<- read.csv("C:/Users/Msmeltzer/Desktop/Post Soviet Hierarchy Data/Economic/Export Data/Belarus.csv", na = ":")
geo_exp<- read.csv("C:/Users/Msmeltzer/Desktop/Post Soviet Hierarchy Data/Economic/Export Data/Georgia.csv", na = ":")
kaz_exp<- read.csv("C:/Users/Msmeltzer/Desktop/Post Soviet Hierarchy Data/Economic/Export Data/Kazakhstan.csv", na = ":")
kyr_exp<- read.csv("C:/Users/Msmeltzer/Desktop/Post Soviet Hierarchy Data/Economic/Export Data/Kyrgyzstan.csv", na = ":")
mol_exp<- read.csv("C:/Users/Msmeltzer/Desktop/Post Soviet Hierarchy Data/Economic/Export Data/Moldova.csv", na = ":")
taj_exp<- read.csv("C:/Users/Msmeltzer/Desktop/Post Soviet Hierarchy Data/Economic/Export Data/Tajikistan.csv", na = ":")
tur_exp<- read.csv("C:/Users/Msmeltzer/Desktop/Post Soviet Hierarchy Data/Economic/Export Data/Turkmenistan.csv", na = ":")
ukr_exp<- read.csv("C:/Users/Msmeltzer/Desktop/Post Soviet Hierarchy Data/Economic/Export Data/Ukraine.csv", na = ":")
uzb_exp<- read.csv("C:/Users/Msmeltzer/Desktop/Post Soviet Hierarchy Data/Economic/Export Data/Uzbekistan.csv", na = ":")

totalexp <- rbind(arm_exp, aze_exp, bel_exp, geo_exp, kaz_exp, kyr_exp, mol_exp, taj_exp, tur_exp, ukr_exp, uzb_exp)
write.csv(totalexp, file = "TotalExport.csv")

library(tidyverse)
library(stringr)

# make a function to find hhi
# careful here are NA's are omitted
freq2 <- function(x) {
  sum(x^2, na.rm = TRUE)
}

# test it - looks okay, maybe? max of 10,000 if you get all your oil from one country?
freq2(c(20, 40, 40))
freq2(100)
freq2(c(33.33, 33.33, 33.33))

totalexp

exp_hhi <- totalexp %>% group_by(country_origin_id, year) %>%
  mutate(percent_imp = 100 * (export_val / sum(export_val, na.rm = TRUE))) %>%
  summarise(hhi = freq2(percent_imp))

write.csv(exp_hhi, file = "exp_hhi.csv")
