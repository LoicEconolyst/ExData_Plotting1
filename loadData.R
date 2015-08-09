start<- 66637
end <-69516

header <- read.table("household_power_consumption.txt", nrows = 1, header = FALSE, sep =';', stringsAsFactors = FALSE)
Exdata<-read.table("household_power_consumption.txt",skip=start, nrows= end -start +1, sep=";")
colnames(Exdata) <-header
#Exdata$Date <- as.Date(Exdata$Date)