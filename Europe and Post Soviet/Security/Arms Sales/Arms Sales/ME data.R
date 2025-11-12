library(tidyverse)
library(dplyr)
library(tidyr)

me_sales <- me_arms_sales %>% group_by(Buyer, Seller, `Order date`) %>%
  mutate(unique_purchases = n_distinct(`Deal ID`))

me_sales_1 <- me_arms_sales %>% group_by(Seller, Buyer, `Order date`) %>%
  summarise(distinct = n_distinct(`Deal ID`))

me_sales_1_subset <- me_sales_1 %>% select(Buyer, `Order date`, distinct)

### This is the good stuff
me_sales_1_filled <- me_sales_1_subset %>%
  complete(Buyer, `Order date` = 1991:2018,
           fill = list(distinct = 0)) %>%
  as.data.frame()
write.csv(me_sales_1_filled, "ME arms sales.csv")





spread <- spread(me_sales_1_subset, key = Buyer, value = distinct)










df_china <- subset(me_sales_1, Seller == "China")
df_china2 <- df_china %>% select(Buyer, `Order date`, distinct)

df_US <- subset(me_sales_1, Seller == "United States")
df_US2 <- df_US %>% select(Buyer, `Order date`, distinct)

df_russia <- subset(me_sales_1, Seller == "Russia")            
df_russia2 <- df_russia %>% select(Buyer, `Order date`, distinct)



df_china2 <- spread(df_china, key = Buyer, value = distinct)
df_US2 <- spread(df_US, key = Buyer, value = distinct)
df_russia2 <- spread(df_russia, key = Buyer, value = distinct)
