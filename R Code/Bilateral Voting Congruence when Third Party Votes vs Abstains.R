un_voting <- Votesfull %>% filter(year.x > 1990)
head(un_voting)



###WHEN THE THIRD PARTY ABSTAINS
###Set the third party you are interested in
us_abstain <- un_voting %>% group_by(unres) %>%
  filter(Country == "USA") %>%
  filter(vote == 2)

us_un_abstains <- us_abstain$rcid

all_us_abstain <- un_voting %>%
  filter(rcid %in% us_un_abstains)

###Set the Bilateral countries you are interested in
bilateral_abstained_voting <- all_us_abstain %>%
  filter(Country %in% c("TJK","KGZ"))

bilateral_abstain_count <- bilateral_abstained_voting %>%
  group_by(rcid, vote) %>%
  mutate(count = n())

### Count of NOT Voting the Same when US Abstains
abstain_not_together_count <- sum(bilateral_abstain_count$count == 1)/2
###Count of Voting the Same when US Abstains
abstain_together_count <- sum(bilateral_abstain_count$count == 2)/2

###Percentage of not voting the same when US abstains
abstain_not_together_pct <- abstain_not_together_count/(abstain_not_together_count + abstain_together_count)
###Percentage of voting the same when US abstains
abstain_together_pct <- abstain_together_count/(abstain_not_together_count + abstain_together_count)

matrix <- matrix(c(abstain_not_together_count, abstain_together_count, abstain_not_together_pct, abstain_together_pct), nrow = 2, ncol =2)
colnames(matrix) <- c("Count", "%")
rownames(matrix) <- c("Different", "Same")
matrix



####WHEN THE THIRD PARTY VOTES###

###Set the third party you are interested in
us_votes <- un_voting %>% group_by(unres) %>%
  filter(Country == "USA") %>%
  filter(vote == 1 | vote == 3)

us_un_votes <- us_votes$rcid

all_us_votes <- un_voting %>%
  filter(rcid %in% us_un_votes)

###Set the Bilateral countries you are interested in

bilateral_usvotes_voting <- all_us_votes %>%
  filter(Country %in% c("TJK","KGZ"))

bilateral_usvotes_count <- bilateral_usvotes_voting %>%
  group_by(rcid, vote) %>%
  mutate(count = n())

### Count of NOT Voting the Same when US Votes
usvotes_not_together_count <- sum(bilateral_usvotes_count$count == 1)/2
###Count of Voting the Same when US Abstains
usvotes_together_count <- sum(bilateral_usvotes_count$count == 2)/2

###Percentage of not voting the same when US abstains
usvotes_not_together_pct <- usvotes_not_together_count/(usvotes_not_together_count + usvotes_together_count)
###Percentage of voting the same when US abstains
usvotes_together_pct <- usvotes_together_count/(usvotes_not_together_count + usvotes_together_count)

matrix <- matrix(c(usvotes_not_together_count, usvotes_together_count, usvotes_not_together_pct, usvotes_together_pct), nrow = 2, ncol =2)
colnames(matrix) <- c("Count", "%")
rownames(matrix) <- c("Different", "Same")
matrix
