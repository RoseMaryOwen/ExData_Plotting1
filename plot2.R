plot2 <- function() {
	
	setwd("/Users/RMO/Documents/Coursera/ExploratoryDataAnalysis")
	
	#read data into variabl named data; first two columns to be character
	#and the rest are numeric.
	fileName<-"./Data/household_power_consumption.txt"
	dtypes <- c(rep("character",2),rep("numeric",7))
	data<-read.csv(fileName,sep=";",header=TRUE,colClasses= dtypes,na.strings="?")
	
	#select the subset of data needed for project.
	use <- data$Date=="1/2/2007"| data$Date == "2/2/2007"
	d <- data[use,]

	#open png device to receive the plot.
png(filename="plot2.png")

#Plot all 2880 values of data(for 2 days),without xaxis tick marks.
plot(1:2880,d$Global_active_power,type='l',xaxt='n',xlab='',ylab='Global Active Power (kilowatts)')

#Put tick marks and labels on xaxis
axis(1,at=c(1,1440,2880),labels=c("Thu","Fri","Sat"))
dev.off()
#plot is in file"plot2.png" in working directory.
}
