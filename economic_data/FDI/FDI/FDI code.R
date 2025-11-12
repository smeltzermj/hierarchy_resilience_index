library(tidyverse)
library(stringr)


fdi_pct_all <- fdi_data %>% group_by(country_inward, year) %>%
  mutate(fdi_us_pct =  us_average / world_average) %>%
  mutate(fdi_russia_pct = russia_average / world_average) %>%
  mutate(fdi_china_pct =  china_average / world_average) %>%
  summarise(us_fdi_pct = fdi_us_pct, china_fdi_pct = fdi_china_pct, russia_fdi_pct = fdi_russia_pct) 


fdi_pct_us <- fdi_data %>% group_by(country_inward, year) %>%
  mutate(fdi_us_pct =  us_average / world_average) %>%
   summarise(us_fdi_pct = fdi_us_pct)

fdi_pct_us_spread <- spread(fdi_pct_us, key = country_inward, value = us_fdi_pct)
write_csv(fdi_pct_us_spread, "US FDI.csv")

fdi_pct_china <- fdi_data %>% group_by(country_inward, year) %>%
  mutate(fdi_china_pct =  china_average / world_average) %>%
   summarise(china_fdi_pct = fdi_china_pct)

fdi_pct_china_spread <- spread(fdi_pct_china, key = country_inward, value = china_fdi_pct)
write_csv(fdi_pct_china_spread, "China FDI.csv")

fdi_pct_russia <- fdi_data %>% group_by(country_inward, year) %>%
  mutate(fdi_russia_pct =  russia_average / world_average) %>%
   summarise(russia_fdi_pct = fdi_russia_pct)

fdi_pct_russia_spread <- spread(fdi_pct_russia, key = country_inward, value = russia_fdi_pct)
write_csv(fdi_pct_russia_spread, "Russia FDI.csv")

### Germany
fdi_pct_ger <- German_FDI_2009_2017 %>% group_by(country_inward, year) %>%
  mutate(fdi_ger_pct = ger_average / world_average) %>%
  summarise(ger_fdi_pct = fdi_ger_pct)

fdi_pct_ger_spread <- spread(fdi_pct_ger, key = country_inward, value = ger_fdi_pct)
write.csv(fdi_pct_ger_spread, "Germany FDI.csv")
