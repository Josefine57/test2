library(tidyverse)
onde <- data.table ::fread("donnees_ofb/onde_france_2022.csv",encoding = "UTF-8")
getwd()
summary(onde)

names(onde)


?data.table::fread
summary(onde)
class(onde)
typeof(onde)
class(names(onde))
typeof(names(onde))

nouveaux_noms <-stringr::str_replace(string = names(onde),pattern = "<",replacement = "")
nouveaux_noms <-stringr::str_replace(string = nouveaux_noms,pattern = ">",replacement = "")
head(onde)

names(onde) <- nouveaux_noms

1:8
onde[1:8,1:6]
test[1:8,1:6]
test <-onde[1:8,1:6]
test1<-onde[1:8,"CdSiteHydro"]
onde$LbRsObservationNat
summary(onde$LbRsObservationNat)
hist(onde$CoordXSiteHydro)
plot(onde$CoordXSiteHydro)
mean(onde$CoordXSiteHydro)
ggplot(data=onde,
       aes(x= LbRegion)) +
  geom_bar()+
  coord_flip()
?geom_bar
table(onde$LbRegion)
ggplot(data=onde,
       aes(x=CoordXSiteHydro))+ geom_histogram(fill="pink")# texte ajouté après mon premier commit
