library(tsibble)
library(dplyr)
library(readr)
library(feather)
library(zoo)

# Datasets
# CO2 measurements
co2_df <- tibble(
  date=as.Date(as.yearmon(time(co2))),
  y=as.numeric(co2),
)
co2_df %>% write_csv('static/data/co2.csv')
co2_df %>% write_feather('static/data/co2.feather')
