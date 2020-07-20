install.packages("rtweet")
install.packages("twitteR")
library("twitteR")

# Authonitical keys
consumer_key <- 'yYf0zjyxgZqlu9j5MDOWq6okG'
  consumer_secret <- 'OQtmCCacdDMJPNDgxhOFNy69LJEhIzzCRKQvn0HnsK7f8wRcLp'
  access_token <- '328069252-DNksJDI286YcorHMRYDXMlNpo0nWFh4qwA4mds91' 
  access_secret <- 'hUSBB0N9xzbpJ6Y8o2BRYVCVf3YXcG6P71BUljKSjUlmO'
  setup_twitter_oauth(consumer_key, consumer_secret, access_token, access_secret)
tweets <- searchTwitter("ryanair" OR #ryanair, n=100, lang = "en")
#tweets.df <- twListToDF(tweets)
#tweets<-twListToDF(tweets)

write.csv(tweets,"C:/tweetsDemo.csv)"
