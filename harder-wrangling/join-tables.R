library(dslabs)
data("murders")
data("polls_us_election_2016")

tab1<-slice(murders,1:6)%>%select(state,population)
tab2<-slice(results_us_election_2016,c(1:3,5,7:8))%>%select(state,electoral_votes)


left_join(tab1,tab2)
tab1%>%left_join(tab2)
tab1%>%right_join(tab2)
tab1%>%inner_join(tab2)
tab1%>%full_join(tab2)
tab1%>%semi_join(tab2)
tab1%>%anti_join(tab2)


intersect(c("a","b","c"),c("b",'c','d')) # = b c

intersect(tab1,tab2)
