#Read Data
data1 = read.table('household_power_consumption.txt', sep = ';', header = TRUE, stringsAsFactors =  FALSE)

#Subset Data:
data1$Date = as.Date(data1$Date, "%d/%m/%Y")
Data2 = data1[data1$Date >= as.Date("2007-02-01") & data1$Date <= as.Date("2007-02-02"),]

#Creating the plots:

png("plot4.png", width = 480, height = 480)
par(mfrow = c(2,2))

with( Data2, {
  plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
  plot(datetime, Voltage, type = "l")
  plot(datetime, Sub_metering_1, type = "l", ylab = "Energy Submetering", xlab = "")
  lines(datetime, Sub_metering_2, type = "l", col = "red")
  lines(datetime, Sub_metering_3, type = "l", col = "blue")
  plot(datetime, Global_reactive_power, type = "l" ) })

dev.off()