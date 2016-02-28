##Reading data
hpc_data <- read.table(file="household_power_consumption.txt", sep=";", header = TRUE, na.strings = "?")

##Subsetting data to analyze
hpc_data_rg <- subset(hpc_data,hpc_data$Date=="1/2/2007" | hpc_data$Date=="2/2/2007")
rm(hpc_data)

##Plot3
png("plot3.png", width=480, height=480)
plot(hpc_data_rg$Datetime, hpc_data_rg$Sub_metering_1, type="l", ylab="Energy Submetering", xlab="")
lines(hpc_data_rg$Datetime, hpc_data_rg$Sub_metering_2, type="l", col="red")
lines(hpc_data_rg$Datetime, hpc_data_rg$Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()
