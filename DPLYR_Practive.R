#install.packages("dplyr")
library(MASS) #You must run this before dplyr or problems happen. Such as select not existing anymore
library(dplyr)

#In R, order matters. A lot. A lot a lot. 

#Just got the MASS package going, it has the dataset Cars93 inside of it, so we'll manipulate that

#The select function allows us to pick out specific variables from a given dataset to observe and assigns it to a variable
Cars93_Exl <- select(Cars93, Type, EngineSize, DriveTrain, MPG.city) #Syntax is select(dataset, var1, var2, var..., varx)

Cars93_Exl

#Basic density plot and a logged version of it
plot(density(Cars93$Price)) #Looks like a skewed distribution
plot(density(log(Cars93$Price))) #Looks like a normal distribution

#Gives us the amount of each type in the dataset
table(Cars93$Type)

#Gives us only the Cars that fulfill that specific condition under that variable. In this case it must be a small car.
Cars93_Exl2<-filter(Cars93, Type=="Small") #Filter allows us to specify a condition. Syntax is filter(dataset, filter)
#As you can see this command gives all columns where that condition is true.
head(Cars93_Exl2)

#Gives specific columns where that condition is true.
Cars93_Ex3<-select(filter(Cars93, Type=="Small"), Model, EngineSize, Horsepower, MPG.highway)
head(Cars93_Ex3)

#Gives specific columns where a different kind of boolean is true. 
Cars93_Ex4<-select(filter(Cars93, Horsepower>150), Model, EngineSize, Horsepower, MPG.highway)
head(Cars93_Ex4)

#Note because I don't feel like writing more that I have to, multiple different conditions can be put in a filter if you write filter(dataset, condition1 & condition2)

#AND is represented as &, OR is |, NOT is !

#We have the %in% checks if a value is in a list of possible values, you do this for two things being the same variable, two different variables take |
Cars93_Ex5<-select(filter(Cars93, Type %in% c("Sporty","Compact") & Horsepower>= 120),
                   Model, Type, EngineSize, MPG.city)
head(Cars93_Ex5)

#The pipe operator aka %>% can result in more reasable code when you have several operations that need to be nested. It's an alternative to nesting.
Cars93_Ex6<-Cars93 %>% filter(Type %in% c("Sporty", "Compact") & Horsepower >= 120) %>%
  select(Model, Type, EngineSize)
head(Cars93_Ex6)
