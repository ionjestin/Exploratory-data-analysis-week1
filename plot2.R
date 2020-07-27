library(base)
data<-read.table("C:/Users/Ion Jestin/Documents/datasla.txt",header=F,sep=";")
head(data)
colnames(data)<-data[1,]
data<-data[-c(1),]
data$Date<-as.Date(data$Date,"%d/%m/%Y")
x<-filter(data,(data$Date>="2007-02-01") & (data$Date<="2007-02-02"))
x[,3]<-as.numeric(x[,3])
png("plot2.png",width=480,height=480)
plot(x[,3],type="l")
#sub<-subset(data,Date=="2007-02-02"|Date=="2007-02-02")
#with(sub,plot(x[,1],x[,3],type="l"))
dev.off()