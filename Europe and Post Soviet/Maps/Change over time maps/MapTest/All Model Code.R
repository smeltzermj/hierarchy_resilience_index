library(plotly)
library(RColorBrewer)

Sys.setenv("plotly_username"="msmeltzer")
Sys.setenv("plotly_api_key"="6RNOclEIoYU7dvAkU95X")

map_data <- read.csv('C:/Users/Msmeltzer/Desktop/Europe and Post Soviet/hierarchy change for plotly.csv')


l <- list(color = toRGB("grey"), wdith = 0.5)
g <- list(
  showframe = FALSE,
  showcoastlines = FALSE,
  projection = list(type = 'Mercator')
)


### All Equal Models 

p <- plot_geo(map_data) %>%
  add_trace(
    z = ~ae_usa, color = ~ae_usa, colors = brewer.pal(7, "RdBu"),
    text = ~CountryName, locations = ~CODE, marker = list(line = l)
  ) %>%
  colorbar(title = 'Change') %>%
  layout(
    title = 'Change in US Hierarchy 2003-2017, All Equal Model', geo = g
  )

chart_link = api_create(p, filename = "US_All_Equal_Change")
chart_link

p <- plot_geo(map_data) %>%
  add_trace(
    z = ~ae_rus, color = ~ae_rus, colors = brewer.pal(7, "RdBu"),
    text = ~CountryName, locations = ~CODE, marker = list(line = l)
  ) %>%
  colorbar(title = 'Change') %>%
  layout(
    title = 'Change in Russian Hierarchy 2003-2017, All Equal Model', geo = g
  )

chart_link = api_create(p, filename = "RUS_All_Equal_Change")
chart_link

p <- plot_geo(map_data) %>%
  add_trace(
    z = ~ae_chn, color = ~ae_chn, colors = brewer.pal(7, "RdBu"),
    text = ~CountryName, locations = ~CODE, marker = list(line = l)
  ) %>%
  colorbar(title = 'Change') %>%
  layout(
    title = 'Change in Chinese Hierarchy 2003-2017, All Equal Model', geo = g
  )

chart_link = api_create(p, filename = "CHN_All_Equal_Change")
chart_link

### Security Models

p <- plot_geo(map_data) %>%
  add_trace(
    z = ~sec_usa, color = ~sec_usa, colors = brewer.pal(7, "RdBu"),
    text = ~CountryName, locations = ~CODE, marker = list(line = l)
  ) %>%
  colorbar(title = 'Change') %>%
  layout(
    title = 'Change in US Hierarchy 2003-2017, Security Model', geo = g
  )

chart_link = api_create(p, filename = "US_Security_Change")
chart_link

p <- plot_geo(map_data) %>%
  add_trace(
    z = ~sec_rus, color = ~sec_rus, colors = brewer.pal(7, "RdBu"),
    text = ~CountryName, locations = ~CODE, marker = list(line = l)
  ) %>%
  colorbar(title = 'Change') %>%
  layout(
    title = 'Change in Russian Hierarchy 2003-2017, Security Model', geo = g
  )

chart_link = api_create(p, filename = "RUS_Security_Change")
chart_link

p <- plot_geo(map_data) %>%
  add_trace(
    z = ~sec_chn, color = ~sec_chn, colors = brewer.pal(7, "RdBu"),
    text = ~CountryName, locations = ~CODE, marker = list(line = l)
  ) %>%
  colorbar(title = 'Change') %>%
  layout(
    title = 'Change in Chinese Hierarchy 2003-2017, Security Model', geo = g
  )

chart_link = api_create(p, filename = "CHN_Security_Change")
chart_link

### Economic Models

p <- plot_geo(map_data) %>%
  add_trace(
    z = ~eco_usa, color = ~eco_usa, colors = brewer.pal(7, "RdBu"),
    text = ~CountryName, locations = ~CODE, marker = list(line = l)
  ) %>%
  colorbar(title = 'Change') %>%
  layout(
    title = 'Change in US Hierarchy 2003-2017, Economic Model', geo = g
  )

chart_link = api_create(p, filename = "US_Economic_Change")
chart_link

p <- plot_geo(map_data) %>%
  add_trace(
    z = ~eco_rus, color = ~eco_rus, colors = brewer.pal(7, "RdBu"),
    text = ~CountryName, locations = ~CODE, marker = list(line = l)
  ) %>%
  colorbar(title = 'Change') %>%
  layout(
    title = 'Change in Russian Hierarchy 2003-2017, Economic Model', geo = g
  )

chart_link = api_create(p, filename = "RUS_Economic_Change")
chart_link

p <- plot_geo(map_data) %>%
  add_trace(
    z = ~eco_chn, color = ~eco_chn, colors = brewer.pal(7, "RdBu"),
    text = ~CountryName, locations = ~CODE, marker = list(line = l)
  ) %>%
  colorbar(title = 'Change') %>%
  layout(
    title = 'Change in Chinese Hierarchy 2003-2017, Economic Model', geo = g
  )

chart_link = api_create(p, filename = "CHN_Economic_Change")
chart_link

### Diplomatic Models

p <- plot_geo(map_data) %>%
  add_trace(
    z = ~dip_usa, color = ~dip_usa, colors = brewer.pal(7, "RdBu"),
    text = ~CountryName, locations = ~CODE, marker = list(line = l)
  ) %>%
  colorbar(title = 'Change') %>%
  layout(
    title = 'Change in US Hierarchy 2003-2017, Diplomatic Model', geo = g
  )

chart_link = api_create(p, filename = "US_Diplomatic_Change")
chart_link

p <- plot_geo(map_data) %>%
  add_trace(
    z = ~dip_rus, color = ~dip_rus, colors = brewer.pal(7, "RdBu"),
    text = ~CountryName, locations = ~CODE, marker = list(line = l)
  ) %>%
  colorbar(title = 'Change') %>%
  layout(
    title = 'Change in Russian Hierarchy 2003-2017, Diplomatic Model', geo = g
  )

chart_link = api_create(p, filename = "RUS_Diplomatic_Change")
chart_link

p <- plot_geo(map_data) %>%
  add_trace(
    z = ~dip_chn, color = ~dip_chn, colors = brewer.pal(7, "RdBu"),
    text = ~CountryName, locations = ~CODE, marker = list(line = l)
  ) %>%
  colorbar(title = 'Change') %>%
  layout(
    title = 'Change in Chinese Hierarchy 2003-2017, Diplomatic Model', geo = g
  )

chart_link = api_create(p, filename = "CHN_Diplomatic_Change")
chart_link

### Informational Models

p <- plot_geo(map_data) %>%
  add_trace(
    z = ~inf_usa, color = ~inf_usa, colors = brewer.pal(7, "RdBu"),
    text = ~CountryName, locations = ~CODE, marker = list(line = l)
  ) %>%
  colorbar(title = 'Change') %>%
  layout(
    title = 'Change in US Hierarchy 2003-2017, Informational Model', geo = g
  )

chart_link = api_create(p, filename = "US_Informational_Change")
chart_link

p <- plot_geo(map_data) %>%
  add_trace(
    z = ~inf_rus, color = ~inf_rus, colors = brewer.pal(7, "RdBu"),
    text = ~CountryName, locations = ~CODE, marker = list(line = l)
  ) %>%
  colorbar(title = 'Change') %>%
  layout(
    title = 'Change in Russian Hierarchy 2003-2017, Informational Model', geo = g
  )

chart_link = api_create(p, filename = "RUS_Informational_Change")
chart_link

p <- plot_geo(map_data) %>%
  add_trace(
    z = ~inf_chn, color = ~inf_chn, colors = brewer.pal(7, "RdBu"),
    text = ~CountryName, locations = ~CODE, marker = list(line = l)
  ) %>%
  colorbar(title = 'Change') %>%
  layout(
    title = 'Change in Chinese Hierarchy 2003-2017, Informational Model', geo = g
  )

chart_link = api_create(p, filename = "CHN_Informational_Change")
chart_link


### Germany Maps
p <- plot_geo(map_data) %>%
  add_trace(
    z = ~ae_ger, color = ~ae_ger, colors = brewer.pal(7, "RdBu"),
    text = ~CountryName, locations = ~CODE, marker = list(line = l)
  ) %>%
  colorbar(title = 'Change') %>%
  layout(
    title = 'Change in German Hierarchy 2003-2017, All Equal Model', geo = g
  )

chart_link = api_create(p, filename = "Germany_AllEqual_Change")
chart_link

p <- plot_geo(map_data) %>%
  add_trace(
    z = ~sec_ger, color = ~sec_ger, colors = brewer.pal(7, "RdBu"),
    text = ~CountryName, locations = ~CODE, marker = list(line = l)
  ) %>%
  colorbar(title = 'Change') %>%
  layout(
    title = 'Change in German Hierarchy 2003-2017, Security Model', geo = g
  )

chart_link = api_create(p, filename = "Germany_Security_Change")
chart_link

p <- plot_geo(map_data) %>%
  add_trace(
    z = ~eco_ger, color = ~eco_ger, colors = brewer.pal(7, "RdBu"),
    text = ~CountryName, locations = ~CODE, marker = list(line = l)
  ) %>%
  colorbar(title = 'Change') %>%
  layout(
    title = 'Change in German Hierarchy 2003-2017, Economic Model', geo = g
  )

chart_link = api_create(p, filename = "Germany_Economic_Change")
chart_link

p <- plot_geo(map_data) %>%
  add_trace(
    z = ~dip_ger, color = ~dip_ger, colors = brewer.pal(7, "RdBu"),
    text = ~CountryName, locations = ~CODE, marker = list(line = l)
  ) %>%
  colorbar(title = 'Change') %>%
  layout(
    title = 'Change in German Hierarchy 2003-2017, Diplomatic Model', geo = g
  )

chart_link = api_create(p, filename = "Germany_Diplomatic_Change")
chart_link

p <- plot_geo(map_data) %>%
  add_trace(
    z = ~inf_ger, color = ~inf_ger, colors = brewer.pal(7, "RdBu"),
    text = ~CountryName, locations = ~CODE, marker = list(line = l)
  ) %>%
  colorbar(title = 'Change') %>%
  layout(
    title = 'Change in German Hierarchy 2003-2017, Informational Model', geo = g
  )

chart_link = api_create(p, filename = "German_Informational_Change")
chart_link
