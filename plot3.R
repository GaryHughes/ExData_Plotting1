
data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?", colClasses = c("character", "character", "numeric"))
data <- subset(data, Date == "1/2/2007" | Date == "2/2/2007")
png(file = "plot3.png", width = 480, height = 480)
plot(data$Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = "", xaxt = "n")
lines(data$Sub_metering_2, col = "red")
lines(data$Sub_metering_3, col = "blue")
axis(1, c(0, nrow(data) / 2, nrow(data)), c("Thu", "Fri", "Sat"))
legend("topright",  
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lwd=c(2.5,2.5),
       col = c("black", "red", "blue")) 
dev.off()