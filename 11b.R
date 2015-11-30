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
library(dismo)
library(maps)
library(geocodeHERE)
library(ggmap)
library(maptools)
library(igraph)

consumerKey = "TnhFkCkWw5XiRjaaU6MVFJXrb"   # from your app name
consumerSecret = "8T2gfZ7hpCRAYcBQbkfURnyT3ylaHEa8BsO2akLz6gll6kN2OM"
accessToken = "377053028-LZYBzp2rcwn3sG103AVVdUvWHYrOBHLhNPP2wq5S"
accessSecret = "eFD67fq59GaltQj45I5F5eT8wEEdlCxEG3bRE3qod8ZVo"
setup_twitter_oauth(consumer_key = consumerKey, consumer_secret = consumerSecret,
                    access_token = accessToken, access_secret = accessSecret)

searchTerm <- "#cop21"
searchResults <- searchTwitter(searchTerm, n = 1000)  
tweetFrame <- twListToDF(searchResults)

userInfo <- lookupUsers(tweetFrame$screenName)  
userFrame <- twListToDF(userInfo)

users <- unique(userFrame[1])

for (i in 1:nrow(tweetFrame)) {
  if (length(grep("@",tweetFrame[1]))>0)
    #relation <- sapply(tweetFrame[1], function(x)gsub(".*\\@(.*)\\", "\\1", x))
    regmatches(tweetFrame[1], )
} 


#locatedUsers <- !is.na(userFrame$location)
#locations <- geocode(userFrame$location[locatedUsers])

#2p1 <- ggplot(worldMap)
#p2 <- p1 + geom_path(aes(x = long, y = lat, group = group),
 #                    colour = gray(2/3), lwd = 1/3)

#p3 <- p2 + geom_point(data = locations,
 #                     aes(x = lon, y = lat),
  #                    colour = "RED", alpha = 1/2, size = 1)
#print(p3)
