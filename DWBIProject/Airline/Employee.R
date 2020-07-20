setwd("C:/Users/MOLAP/OneDrive - National College of Ireland/DWBIProject/Airline")

Employees = read.csv("StatistaData.csv")

Employees <- Employees[,-c(3:5, 7:22, 34:50)]
Employees <- Employees[,-c(5:12)]
Employees <- Employees[,-c(5)]

colnames(Employees) <- c("Rank","Airline","Country", "Employees","Revenue")

Employees$Airline = sub(" ","_",Employees$Airline)
Employees$Airline = sub(" ","_",Employees$Airline)
Employees$Airline = sub(" ","_",Employees$Airline)
Employees$Airline = sub(" ","_",Employees$Airline)
Employees$Airline = sub(" ","_",Employees$Airline)

Employees$Airline = sub("Delta_Air_Lines__","Delta_Air_Lines",Employees$Airline)
Employees$Airline = sub("Jet_Airways__","Jet_Airways",Employees$Airline)
Employees$Airline = sub("WestJet_Airlines_","WestJet_Airlines",Employees$Airline)
Employees$Airline = sub("El_Al_Israel_Airlines_","El_Al_Israel_Airlines",Employees$Airline)

Employees$Revenue = sub(",","",Employees$Revenue)
Employees$Employees = sub(",","",Employees$Employees)

Employees$Revenue = as.numeric(Employees$Revenue)
Employees$Employees = as.numeric(Employees$Employees)

write.csv(Employees, "RawData_Employees.csv")

Employees <- read.csv("RawData_Employees.csv")
df <- Employees
df <- data.frame(Employees)
df
library(RODBC)
connection=odbcDriverConnect("driver={SQL Server};server=localhost;database=Airline;Trusted_Connection=true;")
sqlSave(connection,Employees,tablename="RawData_Employees",rownames="Id",addPK=TRUE)
close(connection)


