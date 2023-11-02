# Using the "apply" function in R. 

Test<- matrix(sample(1:20,12, replace = T), nrow=3, byrow = T)
Test # This matrix will be different every time you run the line 3. 

#apply(dataset/matrix, margin(rows/columns or both), mean/sd/sum)
apply(Test,1,mean)
#1 means rows, 2 means columns. 0 means both.

apply(Test,2,mean)

apply(Test,2,sd)

apply(Test,2,sum)

apply(Test,1,sum)

apply(Test,2,sort, decreasing = T) #This one specifically sorts each column of the matrix so that their values are decreasing

v1<-c(2,6,4,1)
v2<-c(21,34,55,11)
v3<-c(75,50,100,80)

Data_M<-data.frame(v1,v2,v3)
Data_M

apply(Data_M,2,mean)
Data_M_scaled<-scale(Data_M)
#Gives us a z-score table, as well as its mean and standard deviation
Data_M_scaled

apply(Data_M,2,sd)

#This set of applications is finding the range by finding the maximum and minimum of the dataset
rng<-apply(Data_M,2,max)-apply(Data_M,2,min)
rng

#Scales the data and returns a vector of the column ranges and a table dividing each value in the data frame by the range of values of the column that it's in.
scale(Data_M, center = F, scale=rng)


#New data library to do with planets, funnnn
#install.packages("planets")
library(planets)

head(planets)

library(ggplot2)

