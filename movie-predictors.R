library(ggplot2)

data <- read.csv('data-movies.csv')

source('https://raw.githubusercontent.com/strongio/strong-R/master/strong-ggplot.R')

ggplot(data, aes(x=rating_metacritic, y=rating_imdb)) +
                geom_point() +
                stat_smooth(method="lm", color='#00cbfe') +
                facet_wrap(~year) +
                theme_strong