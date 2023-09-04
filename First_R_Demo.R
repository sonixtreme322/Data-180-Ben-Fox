install.packages("randomForest") #This allows me to access the functions and data within this script
install.packages("MASS")
library("MASS")

head(Cars93) #Shows the first six rows of the given data set
?Cars93 # Shows details written into the summoned file to give you information about what the data means
ls(Cars93) #Tells you the column names of all the variables in the data

#Remember to use Command + Enter to execute single lines

Cars93$Type #Find the categorizations of each column where those specifications matter

#We can use the table function to find the frequency distribution for a variable by writing table(dataset$variable)
table(Cars93$AirBags)

table(Cars93$Manufacturer)

#We'll use round plus division in tables to find relative frequency distribution
round(table(Cars93$AirBags)/nrow(Cars93),3)

#colors 
colors() #This will show you every single color R has on file. All 657 of them.

#This list can be sliced by saying I want [first:last]
colors()[1:40]

#The color palette tells R which color is referred to by a specific integer
palette("default")
palette()

#We can change the palette like so
palette(c("red2","orchid1","yellow4","tomato2"))
palette()

#We can generate a bar graph through R too using this longass command (starting with barplot) I'll write more details about in the textbook
#We can also generate a pie chart with a similarly large command that starts with the word pie