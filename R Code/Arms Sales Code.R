###Load the tidyverse
library(tidyverse)

###Read in the data
arms_sales_full <- read.csv("C:/Users/Msmeltzer/Desktop/FULL HRI DATA/Africa Asia Data/Asia/Security/ArmsSalesRAW.csv")


###Subsetting the data for only the relevant information and then adding a row that calculates the number of distinct arms sales
asia_arms_sales <- arms_sales_full %>% group_by(Buyer, Seller, `Order.date`) %>%
  mutate(unique_purchases = n_distinct(`Deal.ID`))

###So, this is finding out the number of distinct orders that a given country has with a super power in a given year
asia_sales_1 <- asia_arms_sales %>% group_by(Seller, Buyer, `Order.date`) %>%
  summarise(distinct = n_distinct(`Deal.ID`))

asia_sales_1_subset <- asia_sales_1 %>% select(Buyer, Seller, `Order.date`, distinct)

### R was having issues with the '.', so I changed it to 'year'
asia_sales_1_subset <- asia_sales_1_subset %>% rename(year = `Order.date`)

###Take distinct down to 0 or 1 (order). This simplifies to "was there a sale between these two countries in this year'
asia_sales_order <- asia_sales_1_subset %>% group_by(Buyer, Seller, year) %>%
  mutate(order = ifelse(distinct>0,1,0))

###This code then determines if sales were made between a country and multiple super powers in a year
asia_sales <- asia_sales_order %>% group_by(Buyer, year) %>%
  mutate(right = sum(order))

###This code then determines their score based on if a country bought arms from a super power, and if so, how many.
asia_scores <- asia_sales %>% mutate(score = ifelse(order == 1 & right == 1, 1, ifelse(order == 1 & right == 2, .5, ifelse(order == 1 & right == 3, 1/3, 0))))
write.csv(asia_scores, "Asia Arms Sales Scores.csv")





