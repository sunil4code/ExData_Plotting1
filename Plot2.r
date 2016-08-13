
powerdata  <- read.table("C:\\Users\\owner\\Dropbox\\Shared - Misc\\Cousera\\4\\data\\household_power_consumption.txt",sep=";",header=TRUE)
FebPowerData  <- subset(powerdata,powerdata$Date=='1/2/2007'|powerdata$Date=='2/2/2007')
FebPowerData$DateTime  <- strptime(paste(as.character(FebPowerData$Date),as.character(FebPowerData$Time)),"%d/%m/%Y %H:%M:%S")
png("Plot2.png")
plot(FebPowerData$DateTime,as.numeric(as.character(FebPowerData$Global_active_power)),type='l',xlab="",ylab="Global Active Power (Kilowatts)")
dev.off()