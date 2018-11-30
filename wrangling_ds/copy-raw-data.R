library(tidyverse)

#find the source file
path<-system.file("extdata",package = "dslabs")
filename<-"murders.csv"
sourcefile<-file.path(path,filename)

#copy to the destination folder
try(setwd("./wrangling_ds"),silent = T)
destfolder<-file.path(getwd(),"data")
file.copy(sourcefile,destfolder)

##########################################
#download option
###########################################

library(tidyverse)

fullpath<-file.path(getwd(),"data/murders.csv")
dat<-read_csv(fullpath)

head(dat) #is a tibble, though not sure what that is...
#apparently read.csv doesnt bring in as tibble, but read_csv does
dat2<-read.csv(fullpath) #is a df; not tibble.  Also columns come in as factors. use stingsasfactors=F to avoid
class(dat2)
class(dat2$state)
dat2<-read.csv(fullpath,stringsAsFactors = F)
class(dat2$state)


#Can download straight from the interwebs if desired,
#tempfile() creates a unique file name (not file) to temporarily download the file
#tempdir() also creates a unique location
url<-"https://raw.githubusercontent.com/rafalab/dslabs/master/inst/extdata/murders.csv"
tmp<-tempfile()           #get a temp file name
download.file(url,tmp)    #download the file to the temp location
dat<-read_csv(tmp)        #read in the data
file.remove(tmp)          #delete the temp file

rm(list=ls())
