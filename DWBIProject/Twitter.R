install.packages("tidytext")

library(tidytext)
library(dplyr)

install.packages("reshape")
library(reshape)

install.packages("ggplot2")
library(ggplot2)
library(tidyr)

install.packages("RMySQL")
library(RMySQL)

airline <- dbConnect(MySQL(),
                     user=="twitter",password="password",
                     dbname="tweet_db", host="87.44.4.98")
on.exit(dbDisconnect(airline))

rs <- dbSendQuery(airline, "select tweet_text, created_at from tweets;")

data <- fetch(rs, n=Inf)
