arm_imp <- read.csv("C:/Users/Msmeltzer/Desktop/Post Soviet Hierarchy Data/Economic/Import Data/Armenia.csv", na = ":")
aze_imp<- read.csv("C:/Users/Msmeltzer/Desktop/Post Soviet Hierarchy Data/Economic/Import Data/Azerbaijan.csv", na = ":")
bel_imp<- read.csv("C:/Users/Msmeltzer/Desktop/Post Soviet Hierarchy Data/Economic/Import Data/Belarus.csv", na = ":")
geo_imp<- read.csv("C:/Users/Msmeltzer/Desktop/Post Soviet Hierarchy Data/Economic/Import Data/Georgia.csv", na = ":")
kaz_imp<- read.csv("C:/Users/Msmeltzer/Desktop/Post Soviet Hierarchy Data/Economic/Import Data/Kazakhstan.csv", na = ":")
kyr_imp<- read.csv("C:/Users/Msmeltzer/Desktop/Post Soviet Hierarchy Data/Economic/Import Data/Kyrgyzstan.csv", na = ":")
mol_imp<- read.csv("C:/Users/Msmeltzer/Desktop/Post Soviet Hierarchy Data/Economic/Import Data/Moldova.csv", na = ":")
taj_imp<- read.csv("C:/Users/Msmeltzer/Desktop/Post Soviet Hierarchy Data/Economic/Import Data/Tajikistan.csv", na = ":")
tur_imp<- read.csv("C:/Users/Msmeltzer/Desktop/Post Soviet Hierarchy Data/Economic/Import Data/Turkmenistan.csv", na = ":")
ukr_imp<- read.csv("C:/Users/Msmeltzer/Desktop/Post Soviet Hierarchy Data/Economic/Import Data/Ukraine.csv", na = ":")
uzb_imp<- read.csv("C:/Users/Msmeltzer/Desktop/Post Soviet Hierarchy Data/Economic/Import Data/Uzbekistan.csv", na = ":")

totalimp <- rbind(arm_imp, aze_imp, bel_imp, geo_imp, kaz_imp, kyr_imp, mol_imp, taj_imp, tur_imp, ukr_imp, uzb_imp)


# make a function to find hhi
# careful here are NA's are omitted
freq2 <- function(x) {
  sum(x^2, na.rm = TRUE)
}

# test it - looks okay, maybe? max of 10,000 if you get all your oil from one country?
freq2(c(20, 40, 40))
freq2(100)
freq2(c(33.33, 33.33, 33.33))

totalimp

imp_hhi <- totalimp %>% group_by(country_origin_id, year) %>%
  mutate(percent_imp = 100 * (import_val / sum(import_val, na.rm = TRUE))) %>%
  summarise(hhi = freq2(percent_imp))

write.csv(imp_hhi, file = "imp_hhi.csv")
