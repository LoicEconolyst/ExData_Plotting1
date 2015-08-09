source("loadData.R")
Exdata$DateTime <-strptime(paste(Exdata$Date, Exdata$Time, sep=" "), format="%d/%m/%Y %T") 
with(Exdata,{
  plot(DateTime,Sub_metering_1,type='l', ylab="Energy sub metering",xlab="")
  lines(DateTime,Sub_metering_2,type='l',col="red")
  lines(DateTime,Sub_metering_3,type='l', col="blue")
})
legend("topright",lty=c(1,1,1),col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.copy(png,file="plot3.png")
dev.off