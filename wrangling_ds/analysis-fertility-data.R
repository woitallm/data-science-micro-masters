library(tidyverse)
fertility<-read_csv("./rda/tidy-fertility-data.rda")

fertility%>%ggplot(aes(x=year,y=fertility,col=country))+geom_point()+theme_minimal()

ggsave("./figs/fertility-plot.png",width = 12,height = 6)

