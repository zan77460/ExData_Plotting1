

# the working directory is set to "UCI HAR Dataset"

setwd("~/Desktop/Coursera/Expolatory Data Analysis") 

library(chron)
library(lubridate)

# the dataset "household_power_consumption.txt" is saved there and read into a table.
pcons <- read.csv2(file = "household_power_consumption.txt", stringsAsFactors = F)

# the table is subset to the two days specified.
pcons <- subset(pcons, pcons$Date == "1/2/2007" | pcons$Date == "2/2/2007")

# convert data types
pcons$Date = dmy(pcons$Date)
pcons$Time = chron(times. = pcons$Time)
pcons$Global_active_power = as.numeric(pcons$Global_active_power)
pcons$Global_reactive_power = as.numeric(pcons$Global_reactive_power)
pcons$Voltage = as.numeric(pcons$Voltage)
pcons$Global_intensity = as.numeric(pcons$Global_intensity)
pcons$Sub_metering_1 = as.numeric(pcons$Sub_metering_1)
pcons$Sub_metering_2 = as.numeric(pcons$Sub_metering_2)
pcons$Sub_metering_3 = as.numeric(pcons$Sub_metering_3)

# drawing the plots
#Plot 1
hist(pcons$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col = "Red")
dev.copy(png, filename = "plot1.png", width = 480, height = 480, units = "px")
dev.off()

#Plot 2
#plot(pcons$Global_active_power, type = "l", xlab = "", xaxt = "n", ylab = "Global Active Power (kilowatts)")
#axis(side=1,at=c(0,1441,2881),labels=c('Thu','Fri','Sat'))
#dev.copy(png, filename = "plot2.png", width = 480, height = 480, units = "px")
#dev.off()

#Plot 3
#plot(pcons$Sub_metering_1, type = "l", xlab = "", xaxt = "n", ylab = "Energy sub metering")
#axis(side=1,at=c(0,1441,2881),labels=c('Thu','Fri','Sat'))
#lines(pcons$Sub_metering_2, col = "red")
#lines(pcons$Sub_metering_3, col = "blue")
#legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,col=c("black","red","blue"))
#dev.copy(png, filename = "plot3.png", width = 480, height = 480, units = "px")
#dev.off()

#Plot 4
#par(mfrow = c(2,2))

#Plot 4.1
#plot(pcons$Global_active_power, type = "l", xlab = "", xaxt = "n", ylab = "Global Active Power")
#axis(side=1,at=c(0,1441,2881),labels=c('Thu','Fri','Sat'))

#Plot 4.2
#with(pcons, plot(Voltage, type = "l", xlab = "datetime", xaxt = "n"))
#axis(side=1,at=c(0,1441,2881),labels=c('Thu','Fri','Sat'))

#Plot 4.3
#plot(pcons$Sub_metering_1, type = "l", xlab = "", xaxt = "n", ylab = "Energy sub metering")
#axis(side=1,at=c(0,1441,2881),labels=c('Thu','Fri','Sat'))
#lines(pcons$Sub_metering_2, col = "red")
#lines(pcons$Sub_metering_3, col = "blue")
#legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty=1, cex=.55, bty="n?", col=c("black","red","blue"))

#Plot 4.4
#with(pcons, plot(Global_reactive_power, type = "l", xlab = "datetime", xaxt = "n"))
#axis(side=1,at=c(0,1441,2881),labels=c('Thu','Fri','Sat'))
 
#dev.copy(png, filename = "plot4.png", width = 480, height = 480, units = "px")
#dev.off()
#par(mfrow = c(1,1))

