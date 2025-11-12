### Joining Asia Data
library(tidyverse)

###This will join all of the rows based on year, target country, and super power
asia_HRI_scores <- full_join(Asia_Arms_Sales, Asia_Defense_Pacts) %>%
  full_join(.,Asia_Military_Bases) %>%
  full_join(.,Asia_Export_Dependence) %>%
  full_join(.,Asia_Import_Dependence) %>%
  full_join(.,Asia_FDI_Dependence) %>%
  full_join(.,Asia_PFI_Scores) %>%
  full_join(.,Asia_DSP_Scores) %>%
  full_join(.,Asia_UNGA_Voting) %>%
  full_join(.,Asia_HoS_Meetings)

###Check for any mispelled/missing countries or extra/missing years
unique(asia_HRI_scores$target_country)
unique(asia_HRI_scores$super_power)
unique(asia_HRI_scores$year)

write.csv(asia_HRI_scores, "Asia Indicator Scores.csv")
