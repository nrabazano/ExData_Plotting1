##Reading data
hpc_data <- read.table(file="household_power_consumption.txt", sep=";", header = TRUE, na.strings = "?")

##Subsetting data to analyze
hpc_data_rg <- subset(hpc_data,hpc_data$Date=="1/2/2007" | hpc_data$Date=="2/2/2007")
rm(hpc_data)

##Converting to date and time formats
##hpc_data_rg$Date <- as.Date(hpc_data_rg$Date, format="%d/%m/%Y")
hpc_data_rg$Datetime <- strptime(paste(hpc_data_rg$Date, hpc_data_rg$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

##Plot2
plot(hpc_data_rg$Datetime, hpc_data_rg$Global_active_power, ylab = "Global Active Power (kilowatts)", type = "l", xlab = "")

##Copy plot to png file
dev.copy(png, file="plot2.png", height=480, width=480)
dev.off()
