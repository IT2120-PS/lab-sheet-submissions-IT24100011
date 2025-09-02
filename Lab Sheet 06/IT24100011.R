setwd("C:\\Users\\IT24100011\\Desktop\\IT24100011")
getwd()

probability <- 1 - pbinom(46, size=50, prob=0.85)
print(probability)


probability <- dpois(15, lambda=12)
print(probability)
