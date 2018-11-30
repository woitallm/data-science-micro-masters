rm(list = ls())
library(tidyverse)

path<- system.file("extdata",package = "dslabs")
filename<-file.path(path,"fertility-two-countries-example.csv")
file.copy(filename,"./data")

fertility<-read_csv("./data/fertility-two-countries-example.csv")

rm(path, filename)