##KLamath Falls STP RPA spreadsheet setup
#Load data

# load packages
library(tidyverse)
#setwd()
M<-read.csv("Metals_all.csv", header = TRUE,stringsAsFactors = TRUE)

Kfalls.Metals <- M %>%
  gather(Parameter, Result,-Number) %>%
    group_by(Parameter) %>%
        summarise(count = n(), mean = mean(Result, na.rm = TRUE),sd = sd(Result, na.rm = T), max = max(Result, na.rm = TRUE), geomean = exp(mean(log(Result)))) %>% 
  mutate(CV = sd/mean) 
  
ct<-M %>% group_by(Arsenic.Total) %>% tally()
view(ct)
#read in ambient data
A<-read.csv("LinkRiverData.csv", header = TRUE, stringsAsFactors = TRUE)

Link.data<- A %>% 
  gather(Parameter, Value) %>% 
  group_by(Parameter) %>% 
  summarise(Ninetyth = list(enframe(quantile(Value, na.rm = T, probs = (0.9))))) %>% 
  unnest

