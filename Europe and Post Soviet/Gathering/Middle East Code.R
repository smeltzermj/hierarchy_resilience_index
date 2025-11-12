library(tidyr)
library(tidyverse)


me_as_filled <- ME_arms_sales %>%
  complete(target_country, super_power, year = 1991:2018,
           fill = list(order = 0)) %>%
  as.data.frame()

library(dplyr)

testing <- me_as_filled %>% group_by(target_country, year) %>%
  mutate(right = sum(order)) 

testing1 <- testing %>% mutate(score = ifelse(order == 1 & right == 1, 1, ifelse(order == 1 & right == 2, .5, ifelse(order == 1 & right == 3, 1/3, 0))))

write.csv(testing1, "testing1.csv")

write.csv(me_as_filled, "ME FILLED AS.csv")

hos <- HoS_Meetings %>% gather("year", "scores", -super_power, -target_country)
write.csv(hos, "Head of State Meetings Middle East.csv")

mb_me <- Military_Bases %>% gather("target_country", "military_bases", -power, -year)
write.csv(mb_me, "Military Bases Middle East.csv")

dp_me <- Defense_Pacts %>% gather("target_country", "defense_pacts", -power, -year)
write.csv(dp_me, "Defense Pacts Middle East.csv")

### Doing the Joins Down HERE!!!!

###JK this is the gathering for the North Africa HoS meetings

hos_na <- hos_meetings_na %>% gather("year", "scores", -super_power, -target_country)
write.csv(hos_na, "hos_meetings_na.csv")
