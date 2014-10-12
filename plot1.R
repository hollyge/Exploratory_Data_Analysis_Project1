# 1. read data
powerData<-read.csv("./household_power_consumption.txt", 
                    header=T, 
                    sep=";", 
                    colClasses=c("Date"="character", 
                                 "Time"="character", 
                                 "Global_active_power"="numeric", 
                                 "Global_reactive_power"="numeric",
                                 "Voltage"="numeric", 
                                 "Global_intensity"="numeric",
                                 "Sub_metering_1"="numeric",
                                 "Sub_metering_2"="numeric",
                                 "Sub_metering_3"="numeric"),
                    na.strings="?"   # question mark as NA
)

# 2. Data from 1/2/2007 and 2/2/2007
powerDataFeb<-subset(powerData, Date=="1/2/2007" | Date=="2/2/2007")


# 3. plot 1
png(filename="plot1.png", width=480, height=480, units="px")
hist(powerDataFeb$Global_active_power, 
     col="red", 
     main="Golbal Active Power", 
     xlab="Global Active Power (kilowatts)",
     ylab="Frequency")
dev.off()