data <- read.table("household_power_consumption.txt",header=TRUE,sep=";")
date <- as.Date(data$Date,"%d/%m/%Y")
data <- data[(date=="2007-02-01")|(date=="2007-02-02"),]
png(file="plot1.png",width=480,height=480)
hist(as.numeric(as.character(data$Global_active_power)),col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")
dev.off()