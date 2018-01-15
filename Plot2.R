## This is a script to create Plot 2

# Read the data
setwd("C:/Dev/datasciencecoursera/Exploratory Data Analysis")

# Clearing environment and reading full data
rm(list=ls())
powerconsumptiondata <- read.table("household_power_consumption.txt",sep=";",header=TRUE,stringsAsFactors = FALSE,dec = ".")

# Subsetting data from 2007-02-01 and 2007-02-02
dataToReview <- subset.data.frame(powerconsumptiondata,(powerconsumptiondata$Date == "1/2/2007" | powerconsumptiondata$Date == "2/2/2007"))

# Generating X-axis data
datetime <- strptime(paste(dataToReview$Date, dataToReview$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

# Opening png graphic device
png(filename = "Plot2.png", width = 480, height = 480)

# Generating plot
plot(datetime,dataToReview$Global_active_power,type="l",ylab = "Global Active Power (kilowatts)",xlab="")

# Closing png graphic device
dev.off()

# End of script