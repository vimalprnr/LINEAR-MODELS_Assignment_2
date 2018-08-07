setwd("D://ACADGILD//11 Linear Models//Assignments//INPUTS")
bank <- read.table("bank.csv", sep=";", header=T)
#Problem a
chisq.test(bank$job ,bank$default)
#data:  bank$job and bank$default
#X-squared = 9.3064, df = 11, p-value = 0.5936
# as p-value is > 0.05 there is no association between job and default

#Problem b
bank$duration<-as.numeric(bank$duration)
ggplot(bank, aes(x=bank$duration, fill=bank$loan))+geom_histogram()
ggplot(bank, aes(x=bank$loan,y=bank$duration, fill=bank$loan))+geom_point()
#As per the plots it is visible that duration taken is more fpr customers without loan.


#Problem C
# not able to find consumer price index and consumer variable considering Bank balance and Loan association
ggplot(bank, aes(x=bank$balance, y= bank$loan, fill=bank$loan))+geom_point()
# as the geom_points are more crouded towards low balance account, we can conclude that lower balance account may tend to the possibility that customer will take loan
#Problem D

#Problem E

ggplot(bank, aes(x=bank$job, y=bank$education))+geom_jitter()
#Employment variation rate is not same as per the above plot
# Higher the education, Higher job profile 

