
AllData <- read.table ("./household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?", stringsAsFactors=F)

dim(AllData)
head(AllData)
str(AllData)
AllData$Date <- as.Date(AllData$Date, format="%d/%m/%Y")
class(AllData$Date)
unique(AllData$Date)
Data <- subset (AllData, subset=(Date >= "2007-02-01" & Date<="2007-02-02"))
str(Data)
png(filename="plot1.png", width=480, height=480, units="px")
hist (Data$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
