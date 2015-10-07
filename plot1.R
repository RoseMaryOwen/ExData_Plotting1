plot1 <- function() {

	setwd("/Users/RMO/Documents/Coursera/ExploratoryDataAnalysis")

#read data into variabl named data; first two columns to be character
#and the rest are numeric
fileName<-"./Data/household_power_consumption.txt"
dtypes <- c(rep("character",2),rep("numeric",7))
data<-read.csv(fileName,sep=";",header=TRUE,colClasses= dtypes,na.strings="?")

#select the subset of data needed for project.
use <- data$Date=="1/2/2007"| data$Date == "2/2/2007"
d <- data[use,]


#open png device to receive the plot and write a histogram to it.
png(filename="plot1.png")
hist(d$Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")

#close the png device.
dev.off()
#plot is in file"plot1.png" in working directory.
}
