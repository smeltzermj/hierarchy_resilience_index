###FDI Gathering
library(tidyverse)
asia_fdi_gather <- gather(Asia_FDI_Pcts, "super_power", "fdi_dep", -year, -target_country)

write.csv(asia_fdi_gather, "Asia FDI Dependence.csv")
unique(asia_fdi_gather$target_country)
