library(dslabs)
library(dplyr)
library(ggplot2)
past_year <- 2010
data("gapminder")
gapminder <- gapminder %>%
  mutate(dollars_per_day = gdp/population/365)
p <- gapminder %>%
  filter(year == past_year & !is.na(dollars_per_day)) %>%
  mutate(region = reorder(region, dollars_per_day, FUN = median)) %>%    # reorder
  ggplot(aes(region, dollars_per_day, fill = continent)) +    # color by continent
  geom_boxplot() +
  theme(axis.text.x = element_text(angle = 90, hjust = 1)) +
  xlab("")
p
