# Write output to a file
write.csv(sumData, file = "000sum.csv", row.names = FALSE)
read.csv("000sum.csv")

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
teamPitching <- allTables[[2]]
head(teamPitching)


