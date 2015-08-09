source("loadData.R")
Exdata$DateTime <-strptime(paste(Exdata$Date, Exdata$Time, sep=" "), format="%d/%m/%Y %T")  
with(Exdata,plot(DateTime,Global_active_power,type='l', ylab="Global Active Power (kilowatts)",xlab=""))
dev.copy(png,file="plot2.png")
dev.off