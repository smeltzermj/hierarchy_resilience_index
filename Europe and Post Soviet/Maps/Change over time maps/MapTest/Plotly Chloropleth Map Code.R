install.packages("plotly")
install.packages("RColorBrewer")
library(plotly)
library(RColorBrewer)

Sys.setenv("plotly_username"="msmeltzer")
Sys.setenv("plotly_api_key"="6RNOclEIoYU7dvAkU95X")

test <- read.csv('C:/Users/Msmeltzer/Desktop/Europe and Post Soviet/Maps/Change over time maps/Book2.csv')

l <- list(color = toRGB("grey"), wdith = 0.5)
g <- list(
  showframe = FALSE,
  showcoastlines = FALSE,
  projection = list(type = 'Mercator')
)

p <- plot_geo(test) %>%
  add_trace(
    z = ~chn_change, color = ~chn_change, colors = brewer.pal(7, "RdBu"),
    text = ~CountryName, locations = ~CODE, marker = list(line = l)
  ) %>%
  colorbar(title = 'Change') %>%
  layout(
    title = 'Change in Chinese Hierarchy 2003-2017', geo = g
  )

chart_link = api_create(p, filename = "CHN_Change")
chart_link

