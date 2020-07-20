
DROP TABLE IF EXISTS dbo.Fact 
Create Table Fact( Country_ID int ,Airline_ID int, Punctuality float,Service_Quality float,
				Passenger_Handling float, Employee_Count float, Revenue float, Passenger_Count float)
Insert into Fact(
Country_ID, Airline_ID, Punctuality, Service_Quality, Passenger_Handling, Employee_Count,Revenue, Passenger_Count)
select DC.Country_ID, DA.Airline_ID, R.[Punctuality], R.[Service_Quality],R.[Handling_of_passenger_rights],E.[Employees],E.[Revenue],P.[2018]
 from RawEmployee E
LEFT Join  Dim_Airline DA On DA.Airline = E.Airline
LEFT Join RawPassenger P ON  P.Airline= DA.Airline
LEFT Join Dim_Country DC ON DC.Country= P.Country
LEFT join Ranking R ON  R.Airline=DA.Airline and DC.Country=R.Country

