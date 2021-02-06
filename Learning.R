# Write output to a file
write.csv(sumData, file = "000sum.csv", row.names = FALSE)
read.csv("000sum.csv")
install.packages("xml2")
library("xml2")
# Install and load necessary packages
install.packages("rvest")
library(rvest)
# Second example: 2019 San Francisco Giants Statistics
dataSFG <- read_html("https://www.baseball-reference.com/teams/SFG/2019.shtml")
dataSFG
SFGTables <- dataSFG %>% html_table(fill = TRUE)
# Read "Team Batting" table
teamBatting <- SFGTables[[1]]
head(teamBatting)
# Read "Team Pitching" table
teamPitching <- SFGTables[[2]]
head(teamPitching)
#Davor filtering
teamBatting<-subset(teamBatting, teamBatting$Rk!="Rk")
teamBatting<-subset(teamBatting, teamBatting$Rk!="")
tail(teamBatting)
rownames(teamBatting)<-NULL
teamBatting$Name<-gsub("\\*","",teamBatting$Name)
teamBatting$Name<-gsub("\\#","",teamBatting$Name)
teamBatting
#filtering data finished
write.csv(teamBatting, "teamBatting.csv", row.names = F)
