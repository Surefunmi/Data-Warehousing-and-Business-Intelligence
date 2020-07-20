setwd("C:/Users/MOLAP/Documents/OneDrive - National College of Ireland/DWBIProject/Airline")
install.packages("twitteR")
library(twitteR)


consumer_key <- 'yYf0zjyxgZqlu9j5MDOWq6okG'
consumer_secret <- 'OQtmCCacdDMJPNDgxhOFNy69LJEhIzzCRKQvn0HnsK7f8wRcLp'
access_token <- '328069252-DNksJDI286YcorHMRYDXMlNpo0nWFh4qwA4mds91' 
access_secret <- 'hUSBB0N9xzbpJ6Y8o2BRYVCVf3YXcG6P71BUljKSjUlmO'


setup_twitter_oauth(consumer_key, consumer_secret, access_token, access_secret)

tweets <- searchTwitter('AmericanAir',n = 30000, lang = "en")

tweets.df <-twListToDF(tweets)

#tweet1<-strip_retweets(tweets.df, strip_manual = TRUE, strip_mt = TRUE)



# Run only one of the two write.csv commands

#1: This will save the csv file to your working directory
write.csv(tweets.df, 'AmericanAir.csv', row.names=F)

