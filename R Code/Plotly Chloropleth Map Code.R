install.packages("plotly")
install.packages("RColorBrewer")
library(plotly)
library(RColorBrewer)

###The following code is determined by your Plotly Username and the API Key Provided Online###
Sys.setenv("plotly_username"="msmeltzer")
Sys.setenv("plotly_api_key"="6RNOclEIoYU7dvAkU95X")


###This will read in the data used to make the maps
test <- read.csv('C:/Users/Msmeltzer/Desktop/Europe and Post Soviet/Maps/Change over time maps/Book2.csv')

###This is just setting the parameters of the maps. I don't recommend toying with this
l <- list(color = toRGB("grey"), wdith = 0.5)
g <- list(
  showframe = FALSE,
  showcoastlines = FALSE,
  projection = list(type = 'Mercator')
)


####Here is where you determine which column of the data you want to map
####Set 'z' and 'color' to the column you are interested in
####Change the 'title' to what you want
p <- plot_geo(test) %>%
  add_trace(
    z = ~chn_change, color = ~chn_change, colors = brewer.pal(7, "RdBu"),
    text = ~CountryName, locations = ~CODE, marker = list(line = l)
  ) %>%
  colorbar(title = 'Change') %>%
  layout(
    title = 'Change in Chinese Hierarchy 2003-2017', geo = g
  )

###This will send the above code through the API and create the map on the Plotly Website
###You should change the file name for each new map, so they don't overwrite each other online.
chart_link = api_create(p, filename = "CHN_Change")
chart_link

