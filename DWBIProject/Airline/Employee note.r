setwd("C:/Users/MOLAP/Documents/OneDrive - National College of Ireland/DWBIProject/Airline")
Employees = read.csv("StatistaData.csv")

Employees <- Employees[-c(1),]
Employees <- Employees[,-c(0, 3:22, 34:50)]
Employees <- Employees[,-c(4:12)]

colnames(Employees) <- c("Rank","Airline","Employees","Revenue")



Employees$Airline = sub(" ","_",Employees$Airline)
Employees$Airline = sub(" ","_",Employees$Airline)
Employees$Airline = sub(" ","_",Employees$Airline)
Employees$Airline = sub(" ","_",Employees$Airline)
Employees$Airline = sub(" ","_",Employees$Airline)

Employees$Airline = sub("Delta_Air_Lines__","Delta_Air_Lines",Employees$Airline)
Employees$Airline = sub("Jet_Airways__","Jet_Airways",Employees$Airline)
Employees$Airline = sub("WestJet_Airlines_","WestJet_Airlines",Employees$Airline)

Employees$Revenue = sub(",","",Employees$Revenue)
Employees$Employees = sub(",","",Employees$Employees)

write.csv(Employees, "RawData_Employees.csv", row.names = F)
