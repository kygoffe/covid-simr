
setwd("C:/corona v2/c/")

source("covid_simr.R")

cases<-read.csv("hospitalisations.csv")

cases_flattened<-read.csv("hospitalisations_flattened.csv")


# baseline example
covid_simr(cases=cases,los_median=3,los_95=30,cap=300,pfat=0.3,nreps=500)

# example mitigation 1 - increase capacity
covid_simr(cases=cases,los_median=3,los_95=30,cap=450,pfat=0.3,nreps=500)

# example mitigation 2 - flatten curve
covid_simr(cases=cases_flattened,los_median=3,los_95=30,cap=300,pfat=0.3,nreps=500)


