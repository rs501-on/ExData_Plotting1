## This is a script to create Plot 1 Histogram

# Read the data
setwd("C:/Dev/datasciencecoursera/Exploratory Data Analysis")

# Clearing environment and reading full data
rm(list=ls())
powerconsumptiondata <- read.table("household_power_consumption.txt",sep=";",header=TRUE,stringsAsFactors = FALSE,dec = ".")

# Subsetting data from 2007-02-01 and 2007-02-02
dataToReview <- subset.data.frame(powerconsumptiondata,(powerconsumptiondata$Date == "1/2/2007" | powerconsumptiondata$Date == "2/2/2007"))

# Opening png graphic device
png(filename = "Plot1.png", width = 480, height = 480)

# Generating histogram plot
hist(as.numeric(dataToReview$Global_active_power),xlab = "Global Active Power (kilowatts)",main = "Global Active Power",col="red")

# Closing png graphic device
dev.off()

# End of script
