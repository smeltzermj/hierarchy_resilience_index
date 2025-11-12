library(dplyr)
library(tidyverse)
write.csv(Votesfull, "VotesFull.csv")

un_voting <- Votesfull %>% filter(year.x > 1990)
head(un_voting)

germany_voting <- un_voting %>% 
  filter(Country == "DEU") %>%
  select(Country, unres, vote, year.x)

un_voting <- un_voting %>% 
  filter(Country != "DEU") %>%
  inner_join(germany_voting, by = c("year.x", "unres")) %>% 
  mutate(SameVote = ifelse(vote.x == vote.y, 1, 0))

vote_w_germans <- un_voting %>% group_by(year.x, Countryname) %>%
  summarise(VoteGerman = mean(SameVote),
            Votes = n())

vote_w_germans

vote_w_germans %>% group_by(Countryname) %>% 
  summarise(top = max(VoteGerman)) %>%
  arrange((top))

vwg <- vote_w_germans %>% select(year.x, Countryname, VoteGerman)
vwg_subset<- subset(vwg, Countryname %in% c("Albania","Andorra","Armenia","Austria","Azerbaijan","Belarus","Belgium","Bosnia and Herzegovina", "Bulgaria", "Croatia","Cyprus","Czech Republic","Denmark","Estonia","Finland","France","Georgia","Greece","Hungary","Iceland","Ireland","Italy","Kazakhstan","Kyrgyzstan","Latvia","Lithuania","Luxembourg","The former Yugoslav Republic of Macedonia","Malta","Republic of Moldova","Montenegro","Netherlands","Norway","Poland","Portugal","Romania","Yugoslavia","Slovakia","Slovenia","Spain","Sweden","Switzerland","Tajikistan","Turkey","Turkmenistan","United Kingdom","Ukraine","Uzbekistan"))
vwg_spread <- spread(vwg_subset, key = Countryname, value = VoteGerman)
write.csv(vwg_spread, "Vote With Germany.csv")

ggplot(vote_w_germans %>% 
         filter(Countryname %in% 
                  c("Belgium", "Finland", "United States of America", "Russian Federation", "India", "China",
                    "Democratic Republic of the Congo", "Canada", "Mexico")), 
       aes(x = year.x, y = VoteGerman, group = Countryname)) + 
  geom_point() + geom_line() + facet_wrap(~ Countryname) + 
  theme(axis.text.x = element_text(angle=90))





