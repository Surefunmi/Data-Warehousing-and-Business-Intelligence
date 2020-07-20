setwd("C:/Users/MOLAP/Documents/OneDrive - National College of Ireland/DWBIProject/Airline")
Ranking = read.csv("Ranking.csv")

colnames(Ranking) <- c("Rank","Airline","Country","Punctuality","Service_Quality","Handling_of_passenger_rights",
                         "AirHelp_Score","Year")

#removed duplicate rows
Ranking <- Ranking[-c(72),]
#removed irrelvant column
Ranking <- Ranking[,-c(8)]

Ranking$Airline = sub(" ","_",Ranking$Airline)
Ranking$Airline = sub(" ","_",Ranking$Airline)
Ranking$Airline = sub(" ","_",Ranking$Airline)

Ranking$Airline = sub("WestJet_Airlines__","WestJet_Airlines",Ranking$Airline)
Ranking$Airline = sub("Swiss_International_Air_Lines_","Swiss_International_Air_Lines",Ranking$Airline)

write.csv(Ranking,"RawData_Ranking.csv", row.names = F)
