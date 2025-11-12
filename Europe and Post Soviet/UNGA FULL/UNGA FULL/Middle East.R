library(tidyverse)

###Middle East

unga_yeah <- read.csv("C:/Users/Msmeltzer/Desktop/Europe and Post Soviet/Political/UNIdealpoints-Full.csv")

unga_me <- subset(unga_yeah, subset = ccode %in% c(2, 710, 365, 692, 352, 651, 630, 645, 666, 663, 690, 660, 698, 694, 670, 652, 640, 696, 679
                                        
))

unga_me<- subset(unga_me, subset = year %in% c(1991,1992,1993,1994,	1995,	1996,	1997,	1998,	1999,	2000,	2001,	2002,	2003,	2004,	2005,
                                                 2006,	2007,	2008,	2009,	2010,	2011,	2012,	2013,	2014,	2015,	2016,	2017,	2018
)) 

unga_votewith_me<- unga_me %>% select(year, CountryName, PctAgreeUS, PctAgreeRUSSIA, PctAgreeChina)
unga_votewith_me <- subset(unga_votewith_me, year > 1990)
write.csv(unga_votewith_me, "UNGA Vote with Middle East.csv")




###North Africa
unga_na <- subset(unga_yeah, subset = ccode %in% c(615,616,620,600
))
unga_na<- subset(unga_na, subset = year %in% c(1991,1992,1993,1994,	1995,	1996,	1997,	1998,	1999,	2000,	2001,	2002,	2003,	2004,	2005,
                                                 2006,	2007,	2008,	2009,	2010,	2011,	2012,	2013,	2014,	2015,	2016,	2017,	2018
)) 
unga_votewith_na<- unga_na %>% select(year, CountryName, PctAgreeUS, PctAgreeRUSSIA, PctAgreeChina)
unga_votewith_na <- subset(unga_votewith_na, year > 1990)
write.csv(unga_votewith_na, "UNGA Vote with North Africa.csv")






unga_mena
unga_mena <- subset(unga_yeah, subset = ccode %in% c(692, 352, 651, 630, 645, 666, 663, 690, 660,
                                                     698, 694, 670, 652, 640, 696, 679, 615, 616, 620, 600
                                        
))

unga_mena<- subset(unga_mena, subset = year %in% c(1991,1992,1993,1994,	1995,	1996,	1997,	1998,	1999,	2000,	2001,	2002,	2003,	2004,	2005,
                                                 2006,	2007,	2008,	2009,	2010,	2011,	2012,	2013,	2014,	2015,	2016,	2017,	2018
)) 

rus_unga<-subset(unga_mena, subset = ccode %in% 365)
us_unga<-subset(unga_mena, subset = ccode %in% 2)
china_unga<-subset(unga_mena, subset = ccode %in% 710)

####Removing the CountryName column so that facet_wrap doesn't create a unique facet for each of Russia, US, China
###Used the following website to figure out how to do this: https://drsimonj.svbtle.com/plotting-background-data-for-groups-with-ggplot2
us_unga2 <- us_unga[,-7]
china_unga2 <- china_unga[,-7]
rus_unga2 <- rus_unga[,-7]




###Creating a new data set with the yearly UN Average Ideal Point Estimate
unga_mean <- unga_yeah %>% 
  group_by(year) %>%
  summarise(Idealpoint = mean(Idealpoint))

##Plotting AgreewithUS/RUS/CHN over time
ggplot(data = unga_mena, mapping = aes(x = year, y = PctAgreeUS)) + geom_point() + geom_smooth(se = FALSE) +
  facet_wrap( ~ CountryName)

ggplot(data = unga_mena, mapping = aes(x = year, y = PctAgreeRUSSIA)) + geom_point() + geom_smooth(se = FALSE) +
  facet_wrap( ~ CountryName)

ggplot(data = unga_mena, mapping = aes(x = year, y = PctAgreeChina)) + geom_point() + geom_smooth(se = FALSE) +
  facet_wrap( ~ CountryName)


###
ggplot(data = unga_mena) +
  geom_point(mapping = aes(x = year, y = PctAgreeRUSSIA), colour = "red") + 
  geom_smooth(mapping = aes(x = year, y = PctAgreeRUSSIA), colour = "red", se = FALSE) +
  geom_point(mapping = aes(x = year, y = PctAgreeUS), colour = "blue") +
   geom_smooth(mapping = aes(x = year, y = PctAgreeUS), colour = "blue", se = FALSE) +
  geom_point(mapping = aes(x = year, y = PctAgreeChina), colour = "orange") +
   geom_smooth(mapping = aes(x = year, y = PctAgreeChina), colour = "orange", se = FALSE) +
  facet_wrap( ~ CountryName)


