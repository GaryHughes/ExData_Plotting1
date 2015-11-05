
data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?", colClasses = c("character", "character", "numeric"))
data <- subset(data, Date == "1/2/2007" | Date == "2/2/2007")
png(file = "plot2.png", width = 480, height = 480)
plot(data$Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "", xaxt = "n")
axis(1, c(0, nrow(data) / 2, nrow(data)), c("Thu", "Fri", "Sat"))
dev.off()