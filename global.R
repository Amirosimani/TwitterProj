library(shiny)
library(datasets)
library(stats)
library(base)
library(xml2)
library(rvest)
library(dplyr)
library(sp)
library(raster)
library(twitteR)
library(lubridate) 
library(RJSONIO) 
library(ggplot2)

consumerKey = "TnhFkCkWw5XiRjaaU6MVFJXrb"   # from your app name
consumerSecret = "8T2gfZ7hpCRAYcBQbkfURnyT3ylaHEa8BsO2akLz6gll6kN2OM"
accessToken = "377053028-LZYBzp2rcwn3sG103AVVdUvWHYrOBHLhNPP2wq5S"
accessSecret = "eFD67fq59GaltQj45I5F5eT8wEEdlCxEG3bRE3qod8ZVo"
setup_twitter_oauth(consumer_key = consumerKey, consumer_secret = consumerSecret,
                    access_token = accessToken, access_secret = accessSecret)
