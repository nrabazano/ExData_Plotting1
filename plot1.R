##Reading data
hpc_data <- read.table(file="household_power_consumption.txt", sep=";", header = TRUE, na.strings = "?")

##Subsetting data to analyze
hpc_data_rg <- subset(hpc_data,hpc_data$Date=="1/2/2007" | hpc_data$Date=="2/2/2007")
rm(hpc_data)

##Plot1
hist(hpc_data_rg$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")

##Copy plot to png file
dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()
