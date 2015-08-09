source("loadData.R")
Exdata$DateTime <-strptime(paste(Exdata$Date, Exdata$Time, sep=" "), format="%d/%m/%Y %T") 
par(mfrow=c(2,2))
with(Exdata,{
  plot(DateTime,Global_active_power,type='l', ylab="Global Active Power",xlab="")
  plot(DateTime,Voltage,type='l', ylab="Global Active Power",xlab="datetime")
  plot(DateTime,Sub_metering_1,type='l', ylab="Energy sub metering",xlab="")
  lines(DateTime,Sub_metering_2,type='l',col="red")
  lines(DateTime,Sub_metering_3,type='l',col="blue")
  legend("topright",lty=c(1,1,1),col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
  plot(DateTime,Global_reactive_power,type='l',xlab="datetime")
})
dev.copy(png,file="plot4.png")
dev.off