plot3 <- function() {
	
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
	png(filename="plot3.png")
	
	#Plot all 2880 values(for 2 days),for each variable requested, without xaxis tick marks.
	plot(1:2880,d$Sub_metering_1,col='black',type='l',xaxt='n',xlab='',	ylab='Energy sub metering')
	lines(1:2880,d$Sub_metering_2,col='red',type='l',xaxt='n',	ylab='Energy sub metering')
	lines(1:2880,d$Sub_metering_3,col='blue',type='l',xaxt='n',xlab='',	ylab='Energy sub metering')
	#Put tick marks and labels on xaxis
	axis(1,at=c(1,1440,2880),labels=c("Thu","Fri","Sat"))
	#Add legend
	legend('topright',lty=c(1,1,1),col=c('black','red','blue'),legend=c('Sub_metering_1','Sub_metering_2',
										'Sub_metering_3'		))
	dev.off()
	#plot is in file"plot3.png" in working directory.
}
