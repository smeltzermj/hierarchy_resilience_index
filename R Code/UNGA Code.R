
###Load up the Tidyverse
library(tidyverse)

###Import the UN Data

unga_yeah <- read.csv("C:/Users/Msmeltzer/Desktop/Europe and Post Soviet/Political/UNIdealpoints-Full.csv")

###Subset the countries you are interested in based on their CoW ID codes
unga_asia <- subset(unga_yeah, subset = ccode %in% c(900, 835, 775,811,950,850,740,
 946,812,820,983,987,712,970,920,731,986,910,840,990,830,940,732,713,800,860,955,947,935,816,700,
 771,760,750,781,790,770,780, 946

))

###Subset the years you are interested in
unga_asia2<- subset(unga_asia, subset = year %in% c(1991,1992,1993,1994,	1995,	1996,	1997,	1998,	1999,	2000,	2001,	2002,	2003,	2004,	2005,
                                                 2006,	2007,	2008,	2009,	2010,	2011,	2012,	2013,	2014,	2015,	2016,	2017,	2018
)) 

### Grab that variables that you want in the spreadsheet
unga_votewith_asia<- unga_asia2 %>% select(year, CountryName, PctAgreeUS, PctAgreeRUSSIA, PctAgreeChina, PctAgreeIndia)
unga_asia_gather <- gather(unga_votewith_asia, "super_power", "unga_voting", -year, -CountryName)
write.csv(unga_asia_gather, "UNGA Voting Asia.csv")



