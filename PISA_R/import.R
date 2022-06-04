library(dplyr)
library(tidyverse)
install.packages("haven") #import spss data to R
library(haven)
getwd()

pisa2015 <- read_spss("PISA2015_CY6_MS_CMB_STU_QQQ.sav")
pisa2018 <- read_spss("PISA2018_CY07_MSU_STU_QQQ.sav")

head(pisa2015)
dim(pisa2015)
names(pisa2015)

head(pisa2018)
dim(pisa2018)
names(pisa2018)

#filter (Korea)
pisa2015_kor <- filter(pisa2015, CNTRYID == 410)
pisa2015_kor
pisa2018_kor <- filter(pisa2018, CNTRYID == 410)
pisa2018_kor


#select variables
pisa2015_kor_sel <- select(pisa2015_kor, CNTSTUID, HOMESCH, ENTUSE, USESCH, INTICT, COMPICT,
                           AUTICT, SOIAICT, ICTHOME, ICTSCH, ICTRES, IC014Q03NA, 
                           IC014Q04NA, IC014Q06NA, IC014Q08NA, IC014Q09NA,
                           ST094Q01NA:ST094Q05NA)

pisa2018_kor_sel <- select(pisa2018_kor, CNTSTUID, HOMESCH, ENTUSE, USESCH, INTICT, COMPICT,
                           AUTICT, SOIAICT, ICTHOME, ICTSCH, ICTRES, IC014Q03NA, 
                           IC014Q04NA, IC014Q06NA, IC014Q08NA, IC014Q09NA,
                           ST094Q01NA:ST094Q05NA)

head(pisa2015_kor_sel)
head(pisa2018_kor_sel)


