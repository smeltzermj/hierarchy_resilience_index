library(tidyverse)
library(stringr)

fdi_pct_me <- cdis_2 %>% group_by(country_inward, year) %>%
  mutate(fdi_us_pct =  us_average / world_average) %>%
  mutate(fdi_russia_pct = russia_average / world_average) %>%
  mutate(fdi_china_pct =  chi_average / world_average) %>%
  summarise(us_fdi_pct = fdi_us_pct, china_fdi_pct = fdi_china_pct, russia_fdi_pct = fdi_russia_pct) 
write_csv(fdi_pct_me, "ME FDI.csv")
