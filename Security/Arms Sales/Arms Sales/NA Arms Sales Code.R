library(tidyverse)
library(dplyr)
library(tidyr)

na_arms_sales <- arms_sales_full %>% group_by(Buyer, Seller, `Order date`) %>%
  mutate(unique_purchases = n_distinct(`Deal ID`))

na_sales_1 <- na_arms_sales %>% group_by(Seller, Buyer, `Order date`) %>%
  summarise(distinct = n_distinct(`Deal ID`))

na_sales_1_subset <- na_sales_1 %>% select(Buyer, `Order date`, distinct)

### This is the good stuff
na_sales_1_filled <- na_sales_1_subset %>%
  complete(Buyer, `Order date` = 1991:2018,
           fill = list(distinct = 0)) %>%
  as.data.frame()
write.csv(na_sales_1_filled, "NA arms sales.csv")




library(tidyverse)

testing <- NA_arms_sales %>% group_by(target_country, year) %>%
  mutate(right = sum(order)) 

testing1 <- testing %>% mutate(score = ifelse(order == 1 & right == 1, 1, ifelse(order == 1 & right == 2, .5, ifelse(order == 1 & right == 3, 1/3, 0))))

write.csv(testing1, "testing1.csv")

write.csv(me_as_filled, "ME FILLED AS.csv")