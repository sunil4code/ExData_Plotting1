
powerdata  <- read.table("C:\\Users\\owner\\Dropbox\\Shared - Misc\\Cousera\\4\\data\\household_power_consumption.txt",sep=";",header=TRUE)
FebPowerData  <- subset(powerdata,powerdata$Date=='1/2/2007'|powerdata$Date=='2/2/2007')
FebPowerData$DateTime  <- strptime(paste(as.character(FebPowerData$Date),as.character(FebPowerData$Time)),"%d/%m/%Y %H:%M:%S")
png("Plot3.png")
plot(FebPowerData$DateTime,as.numeric(as.character(FebPowerData$Sub_metering_1)),type='l',ylab="Enerygy sub metering",xlab="")
lines(FebPowerData$DateTime,as.numeric(as.character(FebPowerData$Sub_metering_2)),col="red")
lines(FebPowerData$DateTime,as.numeric(as.character(FebPowerData$Sub_metering_3)),col="blue")
legend("topright", legend=c("Sub_Metering_1", "Sub_Metering_2","Sub_Metering_3"),col=c("black","red", "blue"), lty=1)