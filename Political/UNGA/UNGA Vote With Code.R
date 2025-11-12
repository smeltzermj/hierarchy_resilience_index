unga_ps_eu_3 <- rbind(eu_unga_plus3, ps_unga_minus_baltics[,-1])

unga_ps_eu <- rbind(eu_unga, ps_unga_minus_baltics[,-1])
write.csv(unga_ps_eu, "test2.csv")

library(tidyverse)


unga_ps_eu_votewithus<- unga_ps_eu %>% select(year, CountryName, PctAgreeUS)
unga_ps_eu_votewithus <- subset(unga_ps_eu_votewithus, year > 1991)
unga_votewith_us <- spread(unga_ps_eu_votewithus, key = CountryName, value = PctAgreeUS)
write.csv(unga_votewith_us, "UNGA Vote with US.csv")

unga_ps_eu_votewithrus<- unga_ps_eu %>% select(year, CountryName, PctAgreeRUSSIA)
unga_ps_eu_votewithrus <- subset(unga_ps_eu_votewithrus, year > 1991)
unga_votewith_rus <- spread(unga_ps_eu_votewithrus, key = CountryName, value = PctAgreeRUSSIA)
write.csv(unga_votewith_rus, "UNGA Vote with Russia.csv")

unga_ps_eu_votewithchina<- unga_ps_eu %>% select(year, CountryName, PctAgreeChina)
unga_ps_eu_votewithchina <- subset(unga_ps_eu_votewithchina, year > 1991)
unga_votewith_china <- spread(unga_ps_eu_votewithchina, key = CountryName, value = PctAgreeChina)
write.csv(unga_votewith_china, "UNGA Vote with China.csv")


