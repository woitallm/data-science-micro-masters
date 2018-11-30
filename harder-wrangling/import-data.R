library(tidyverse)
try(setwd(".."))

path<-system.file("extdata",package = "dslabs")
filename<-file.path(path,"life-expectancy-and-fertility-two-countries-example.csv")
file.copy(filename,"./harder-wrangling/data/harder.csv")

rm(list=ls())
