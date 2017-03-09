## 4016 Lab #2 -- ##



## 1. Conduct an unpooled regression comparison.  ##


tgss = read.csv(file.choose()) ## choose gsstrends.csv from Courseworks ##

setwd("/Users/dariushbozorgmehri/Documents/My Work/Columbia Fall 2015/Time Series/LAB 2")

names(tgss)


## Recodes ##
#rowngun - own a gun or not, own gun = 1
tgss$yesgun=ifelse(tgss$rowngun==1,1,0) 

#want only strong and ery stron republian
tgss$repub=ifelse((tgss$partyid>=5 & tgss$partyid<=6), 1,0)


tgss$south=ifelse((tgss$region>=5 & tgss$region<=7), 1,0)


tgss$nyear=tgss$year-1973


## Regressions ##
#get rid of sci not
options(scipen=999)
#linear probability model for 1980s (not as accurate as logistic regression), 57% less chance own gun if women
gun80 = lm(yesgun ~ repub + age + as.factor(sex) + educ + south + nyear, data=tgss, subset=(year>1980 & year<=1990 & partyid<7))
summary(gun80)

#for 1990s
gun90 = lm(yesgun ~ repub + age + as.factor(sex) + educ + south + nyear, data=tgss, subset=(year>1990 & year<=2000 & partyid<7))
summary(gun90)


gun00 = lm(yesgun ~ repub + age + as.factor(sex) + educ + south + nyear, data=tgss, subset=(year>2000 & year<=2010 & partyid<7))
summary(gun00)


## Display regressions ##


install.packages("stargazer")
library(stargazer)

#puts regression models together on top of each other
#intepret, nyear, 0.8% less probability of of claiming gun
#as your own
stargazer(gun80, gun90, gun00, type= "text", omit.stat = c("rsq", "f"), add.lines = list(c("Years covered", "1981-1990", "1991-2000", "2001-2010")))


## Visualize the trend ##


install.packages("plyr")
library(plyr)


by.year <- ddply(tgss, # data frame to use
                 "year", # variable
                 summarise, # function to use 
                 mean = mean(yesgun, na.rm=T)) # create new variable "mean" 


plot(by.year, type = "l", lwd = 2, col = "navyblue", bty = "l")


## Compare coefficients ##


install.packages("broom")
library(broom)


g80 = tidy(gun80)
#rename and tidy up regression
g80 = rename(g80, c("estimate"="e80", "std.error"="se80"))
g90 = tidy(gun90)
g90 = rename(g90, c("estimate"="e90", "std.error"="se90"))
g00 = tidy(gun00)
g00 = rename(g00, c("estimate"="e00", "std.error"="se00"))

#puts all regression results together
new = cbind(g80, g90, g00)


#Applying the Z formula#
new$b1minusb28090 = new$e80-new$e90
new$denom8090 = sqrt((new$se80^2+new$se90^2))
new$Z8090=new$b1minusb28090/new$denom8090
new$pvalue8090 <- 2* pnorm(abs(new$Z8090), lower.tail=FALSE)


new$b1minusb29000 = new$e90-new$e00
new$denom9000 = sqrt((new$se90^2+new$se00^2))
new$Z9000=new$b1minusb29000/new$denom9000
new$pvalue9000 <- 2* pnorm(abs(new$Z9000), lower.tail=FALSE)


new$b1minusb28000 = new$e80-new$e00
new$denom8000 = sqrt((new$se80^2+new$se00^2))
new$Z8000=new$b1minusb28000/new$denom8000
new$pvalue8000 <- 2* pnorm(abs(new$Z8000), lower.tail=FALSE)


## Make your last dataset ##


newest <- new[, c("term", "e80", "e90", "e00", "Z8090", "pvalue8090", "Z9000", "pvalue9000", "Z8000", "pvalue8000")]


options(scipen=999)


## View the results ##

newest
