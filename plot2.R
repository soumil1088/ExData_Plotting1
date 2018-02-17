#Read Data
data1 = read.table('household_power_consumption.txt', sep = ';', header = TRUE, stringsAsFactors =  FALSE)

#Subset Data:
data1$Date = as.Date(data1$Date, "%d/%m/%Y")
Data2 = data1[data1$Date >= as.Date("2007-02-01") & data1$Date <= as.Date("2007-02-02"),]

#Create Plot 2

Data2$datetime <- strptime(paste(as.character(Data2$Date), Data2$Time, sep=" "), "%Y-%m-%d %H:%M:%S") 

png("plot2.png", width = 480, height = 480)
with(Data2, plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)"))
dev.off()
