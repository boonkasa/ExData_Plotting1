data <- read.table("household_power_consumption.txt",header=TRUE,sep=";")
date <- as.Date(data$Date,"%d/%m/%Y")
data <- data[(date=="2007-02-01")|(date=="2007-02-02"),]
png(file="plot2.png",width=480,height=480)
plot(strptime(paste(data$Date,data$Time,sep=" "),"%d/%m/%Y %H:%M:%S"),as.numeric(as.character(data$Global_active_power)),type="l",xlab="",ylab="Global Active Power (kilowatts)")
dev.off()