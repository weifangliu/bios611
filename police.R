library(tidyverse)

police <- read.csv(url("https://raw.githubusercontent.com/fivethirtyeight/data/master/police-locals/police-locals.csv"))

police %>% 
  filter(police_force_size > 1000) %>%
  ggplot(aes(x=all, y=police_force_size)) + 
  geom_point()

ggsave('police_plot.png', width=5, height=4)

ggplot()