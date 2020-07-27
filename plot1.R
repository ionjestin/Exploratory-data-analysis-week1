library(base)
data<-read.table("C:/Users/Ion Jestin/Documents/datasla.txt",header=F,sep=";")
head(data)
colnames(data)<-data[1,]
data<-data[-c(1),]
data$Date<-as.Date(data$Date,"%d/%m/%Y")
x<-filter(data,(data$Date>="2007-02-01") & (data$Date<="2007-02-02"))
x[,3]<-as.numeric(x[,3])
png("plot1.png",width=480,height=480)
hist(x[,3],col="red",xlab="Global Active Power",main="Global Active Power")
dev.off()
