library(tidyverse)
try(setwd("./wrangling_ds"),silent = T)

path<- system.file("extdata",package = "dslabs")
filename<-file.path(path,"fertility-two-countries-example.csv")
file.copy(filename,"./data")

rm(list = ls())