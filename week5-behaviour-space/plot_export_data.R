library(dplyr)
library(readr)
library(ggplot2)


df <- read_delim('Uni/UCL CASA/CASA0011/week5-behaviour-space/fireflies_chart_export.txt', delim = ",")

p <- ggplot(df, aes(x, y)) +
  geom_line(col = "gold") +
  labs(x = "Time step", y = "Count", 
       title = "Fireflies flashing over time", 
       subtitle = "Parameters set at cycle length = 15, flash length = 4") +
  theme_minimal() +
  theme(plot.title = element_text(face = "bold"))

ggsave('Uni/UCL CASA/CASA0011/week5-behaviour-space/fireflies_chart_export.png', bg = "white")

p

