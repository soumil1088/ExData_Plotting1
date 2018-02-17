#Read Data
data1 = read.table('household_power_consumption.txt', sep = ';', header = TRUE, stringsAsFactors =  FALSE)

#Subset Data:
data1$Date = as.Date(data1$Date, "%d/%m/%Y")
Data2 = data1[data1$Date >= as.Date("2007-02-01") & data1$Date <= as.Date("2007-02-02"),]

#Creating the plot:
png("plot3.png", width = 480, height = 480)
with(Data2,  plot(datetime, Sub_metering_1, type = "l", ylab = "Energy Submetering", xlab = ""))
with(Data2,  lines(datetime, Sub_metering_2, type = "l", col = "red"))
with(Data2,  lines(datetime, Sub_metering_3, type = "l", col = "blue"))
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1, lwd=2.5, col = c("black","red","blue"))
dev.off()