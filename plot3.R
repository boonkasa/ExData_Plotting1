data <- read.table("household_power_consumption.txt",header=TRUE,sep=";")
date <- as.Date(data$Date,"%d/%m/%Y")
data <- data[(date=="2007-02-01")|(date=="2007-02-02"),]
time <- strptime(paste(data$Date,data$Time,sep=" "),"%d/%m/%Y %H:%M:%S")
png(file="plot3.png",width=480,height=480)
plot(time,as.numeric(as.character(data$Sub_metering_1)),col="black",type="l",xlab="",ylab="Energy sub metering")
lines(time,as.numeric(as.character(data$Sub_metering_2)),col="red")
lines(time,as.numeric(as.character(data$Sub_metering_3)),col="blue")
legend("topright",lty=c(1,1),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"))
dev.off()