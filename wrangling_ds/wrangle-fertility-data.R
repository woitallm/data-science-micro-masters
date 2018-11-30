library(tidyverse)
try(setwd("./wrangling_ds"),silent = T)

wide_data<-read_csv("./data/fertility-two-countries-example.csv")

new_tidy_data<-wide_data%>%
  gather(year,fertility,'1960':'2015')

#or we can use the following to gather by all except for country
new_tidy_data_2<-wide_data%>%
  gather(year,fertility,-country)

#use the convert arg to ensure that the classes are converted and not characters only
new_tidy_data_3<-wide_data%>%
  gather(year,fertility,-country,convert = T)
class(new_tidy_data_3$year)

#save to rda
write_csv(new_tidy_data_3,"./rda/tidy-fertility-data.rda")

rm(list=ls())
