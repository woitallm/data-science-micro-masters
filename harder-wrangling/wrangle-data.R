library(tidyverse)

raw_data<-read_csv("./harder-wrangling/data/harder.csv")
select(raw_data,1:5)

dat<-raw_data%>%gather(key,value,-country)
dat<-dat%>%separate(key,c("year","varname"),sep="_",extra="merge") 
  #split the key column into two new columns, year and varname.  Sep by _ and if there are more than the two _
  #columns specified (ie more _ than two) then merge any extras to the last column (ie varname)
dat<-dat%>%spread(key = varname,value = value)
  #spread varname back into fertility and life expectancy

#did not use unite() but it is an option
