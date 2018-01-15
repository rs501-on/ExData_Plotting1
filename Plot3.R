## This is a script to create Plot 3

# Read the data
setwd("C:/Dev/datasciencecoursera/Exploratory Data Analysis")

# Clearing environment and reading full data
rm(list=ls())
powerconsumptiondata <- read.table("household_power_consumption.txt",sep=";",header=TRUE,stringsAsFactors = FALSE,dec = ".")

# Subsetting data from 2007-02-01 and 2007-02-02
dataToReview <- subset.data.frame(powerconsumptiondata,(powerconsumptiondata$Date == "1/2/2007" | powerconsumptiondata$Date == "2/2/2007"))

# Generating X-axis data
datetime <- strptime(paste(dataToReview$Date, dataToReview$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

#Generating Y-axis data
subMetering1 <- as.numeric(dataToReview$Sub_metering_1)
subMetering2 <- as.numeric(dataToReview$Sub_metering_2)
subMetering3 <- as.numeric(dataToReview$Sub_metering_3)

# Opening png graphic device
png(filename = "Plot3.png", width = 480, height = 480)

# Generating plot
plot(datetime,subMetering1,type="l",ylab = "Energy sub metering",xlab="")
lines(datetime,subMetering2,type="l",col="red")
lines(datetime,subMetering3,type="l",col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,lwd=2.5, col=c("black","red","blue"))

# Closing png graphic device
dev.off()

# End of script