#Read Data
data1 = read.table('household_power_consumption.txt', sep = ';', header = TRUE, stringsAsFactors =  FALSE)

#Subset Data:
data1$Date = as.Date(data1$Date, "%d/%m/%Y")
Data2 = data1[data1$Date >= as.Date("2007-02-01") & data1$Date <= as.Date("2007-02-02"),]


# Creating the plot:
png("plot1.png", width = 480, height = 480)
hist(Data2$Global_active_power, col = "Red",main = "Global Active Power", xlab = "Global Active Power(Kilowatts)")
dev.off()