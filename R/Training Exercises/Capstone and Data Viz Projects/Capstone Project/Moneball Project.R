setwd('../Training Exercises/Capstone and Data Viz Projects/Capstone Project/')

library(ggplot2)
library(dplyr)
library(tidyr)

batting <- read.csv('Batting.csv')
head(batting)

str(batting)

head(batting$AB)
head(batting$X2B)

# Add additional statistics
# Batting Average
batting$BA <- batting$H / batting$AB 
tail(batting$BA, 5)
# On Base Percentage:
#   OBP = (H + BB + HBP) / (AB + BB + HBP + SF)
batting$OBP <- (batting$H + batting$BB + batting$HBP) / 
               (batting$AB + batting$BB + batting$HBP + batting$SF)

# Slugging Percentage:
#   SLG = (X1B + 2*X2B + 3*X3B + 4*HR) / AB
batting$X1B <- batting$H - batting$X2B - batting$X3B - batting$HR
batting$SLG <- (batting$X1B + 2*batting$X2B + 3*batting$X3B + 4*batting$HR) / 
               batting$AB

str(batting)


sal <- read.csv('Salaries.csv')


batting <- subset(batting, yearID >= 1985)
summary(batting)

combo <- merge(batting, sal, 
              by.x=c('playerID', 'yearID'), 
              by.y=c('playerID', 'yearID'))

summary(combo)

lost_players <- subset(combo, playerID %in% c('giambja01', 'damonjo01', 'saenzol01'))
lost_players <- subset(lost_players, yearID==2001)
lost_players <- lost_players[, c('playerID','H','X2B','X3B','HR','OBP','SLG','BA','AB')]
head(lost_players)

combo <- subset(combo, yearID == 2001)
str(combo)

ggplot(combo, aes(x=OBP, y=salary)) + geom_point(size=2, alpha=.5)

# Filter out player stats with low number of at-bats
combo <- subset(combo, AB>=350)
str(combo)
ggplot(combo, aes(x=OBP, y=salary)) + geom_point(size=2, alpha=.5)

