unga_all <- subset(unga, subset = ccode %in% c(2, 365, 710, 200, 205, 210, 211,212,220,230,235,255,290,305,310,316,317,325,338,
                                            344,349,350,352,355,360,366,367,368,375,380,390,359,369,370,371,372,373,
                                            701,702,703,705,704,339,232,346,395,343,341,385,225,640
                                        
))

unga_all<- subset(unga_all, subset = year %in% c(1991,1992,1993,1994,	1995,	1996,	1997,	1998,	1999,	2000,	2001,	2002,	2003,	2004,	2005,
                                                 2006,	2007,	2008,	2009,	2010,	2011,	2012,	2013,	2014,	2015,	2016,	2017,	2018
)) 

library(dplyr)



USdifideal<- apply(unga_all2$Idealpoint, 2, function(x) unga_all2 - unga_us_ideal)

USdifideal <- unga_all2$Idealpoint - unga_us_ideal

library(dplyr)

test <- unga_all %>% 
   group_by(year) %>% 
   mutate(DifIdealUS = abs(Idealpoint - Idealpoint[CountryName == 'United States of America'])) %>%
   mutate(DifIdealRUS = abs(Idealpoint - Idealpoint[CountryName == "Russia"])) %>%
   mutate(DifIdealGER = abs(Idealpoint - Idealpoint[CountryName == "German Federal Republic"])) %>%
   mutate(DifIdealCHN = abs(Idealpoint - Idealpoint[CountryName == 'China'])) 

DifIdealUS <- test %>% select(CountryName, year, DifIdealUS)  
library(tidyverse)
ggplot(data = test, mapping = aes(x = year, y = DifIdealRUS)) + geom_point() +
  facet_wrap( ~ CountryName)

difidealrus <- test %>% select(CountryName, year, DifIdealRUS)
difidealchn <- test %>% select(CountryName, year, DifIdealCHN)
difidealger <- test %>% select(CountryName, year, DifIdealGER)

difidealus_spread <- spread(DifIdealUS, key = CountryName, value = DifIdealUS)
difidealrus_spread <- spread(difidealrus, key = CountryName, value = DifIdealRUS)
difidealchn_spread <- spread(difidealchn, key = CountryName, value = DifIdealCHN)
difidealger_spread <- spread(difidealger, key = CountryName, value = DifIdealGER)

write_csv(difidealus_spread, "us ideal spread.csv")
write_csv(difidealrus_spread, "rus ideal spread.csv")
write_csv(difidealchn_spread, "chn ideal spread.csv")








testing <- unga %>% 
   group_by(year) %>% 
   mutate(DifIdealUS = abs(Idealpoint - Idealpoint[CountryName == 'United States of America']))
  