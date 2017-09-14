#Question 1
# (a) Create the following vectors:
#       a = (5, 10, 15, 20, ..., 160)
#       b = (87, 86, 85, ..., 56)
#     Use vector arithmetic to multiply these vectors and call the result d. Select subsets of d to identify
#     the following.
# (b) What are the 19th, 20th, and 21st elements of d?
# (c) What are all of the elements of d which are less than 2000?
# (d) How many elements of d are greater than 6000?

a = seq(5, 160, 5)
b = seq(87,56,-1)
d = a*b
print(d[19:21]) #6555 6800 7035
print(d[d<2000])# There are 4 elements than 2000 
print(length(d[d>6000]))#no of elements of d are greater than 6000


#Question 2
#a) Importing the csv file into R.
csvData <-  read.csv(file="/Users/monicah/Desktop/Mini Assignment/quakes.csv", header=TRUE, sep=",")

#b) finding the mean of the variable ‘stations’
avg <- mean(csvData$stations, na.rm = TRUE)
print(avg)

#c) finding the number of numeric values for the variable ‘stations’ which are greater than the mean
count3 <- length(which(csvData$stations>avg))

#d) finding the standard deviation of the variable ‘depth’
de = csvData$depth
print(sd(de,na.rm = TRUE))

#e) finding the number of missing values for the variable ‘depth’
length(de[is.na(de)])

#g) finding the value of ‘depth’ corresponding to the row with the highest number of stations
csvData[which.max(csvData$stations),"depth"]

#f) Creating a new variable ‘Impact’ with values as:
#   ‘Low’ if value of ‘mag’ is less than or equal to 5.4
#   ‘High’ if value of ‘mag’ is greater than 5.4
Impact <- ifelse(csvData$mag  <=5.4,"Low",ifelse(csvData$mag >5.4,"High",NA))

#Recode the values of this new variable (to 0 & 1) and compute the mean of the re-coded variable.
#recode(Impact,"'Low' = 0;'High' = 1")
Impact[Impact=="Low"] <- 0
Impact[Impact=="High"] <- 1
Impact_avg <- mean(as.integer(Impact),na.rm = TRUE)
print(Impact_avg) #0.1176471

#Question 3
#install.packages('ggplot2')

library(ggplot2) 
ggplot(data=iris, aes(x=Sepal.Length, y=Sepal.Width,color=Species )) + geom_point()
ggplot(data=iris,aes(x=Petal.Length,color=Species)) + geom_dotplot(binwidth=.2)+ggtitle("Iris Count by Petal Length")

