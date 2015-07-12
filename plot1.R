setwd("~/git/Coursera/ExData_Plotting1")

dt=read.csv(unz('exdata-data-household_power_consumption.zip', "household_power_consumption.txt"),header=T, sep=';') # read the textfile which is formatted as a csv
dt[,1]=as.Date(dt$Date,'%d/%m/%Y') # convert the Date column's datatype from string to date 
dt = subset(dt, Date == '2007-02-01' | Date == '2007-02-02') 
dt[,3] = as.numeric(as.character(dt[,3])) # convert the Global Active Power's datatype from text  to numbers

png('plot1.png',width=480,height=480)
hist(dt$Global_active_power,col='red',xlab='Global Active Power (kilowatts)', ylab='Frequency',main='Global Active Power')
dev.off()
