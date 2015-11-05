
data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?", colClasses = c("character", "character", "numeric"))
data <- subset(data, Date == "1/2/2007" | Date == "2/2/2007")
png(file = "plot4.png", width = 480, height = 480)

par(mfrow=c(2, 2))

plot(data$Global_active_power, type = "l", ylab = "Global Active Power", xlab = "", xaxt = "n")
axis(1, c(0, nrow(data) / 2, nrow(data)), c("Thu", "Fri", "Sat"))

plot(data$Voltage, type = "l", ylab = "Voltage", xlab = "datetime", xaxt = "n")
axis(1, c(0, nrow(data) / 2, nrow(data)), c("Thu", "Fri", "Sat"))

plot(data$Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = "", xaxt = "n")
lines(data$Sub_metering_2, col = "red")
lines(data$Sub_metering_3, col = "blue")
axis(1, c(0, nrow(data) / 2, nrow(data)), c("Thu", "Fri", "Sat"))
legend("topright",  
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lwd=c(2.5,2.5),
       col = c("black", "red", "blue"),
       bty = "n") 

plot(data$Global_reactive_power, type = "l", ylab = "Global_reactive_power", xlab = "datetime", xaxt = "n")
axis(1, c(0, nrow(data) / 2, nrow(data)), c("Thu", "Fri", "Sat"))

dev.off()