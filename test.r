Electricity<-c(96,171,202,178,147,102,153,197,127,82,157,185,90,116,172,111,148,213,130,165,141,149,206,175,123,128,144,168,109,167,95,163,150,154,130,143,187,166,139,149,108,119,183,151,114,135,191,137,129,158)
datapoints<-c(1:50)
Percentage<-c(Electricity/max(Electricity))
sortedElectricity<-sort(Electricity)
sortedPercentage<-c(sortedElectricity/max(Electricity))


numOfClass<-14

#histogram
hist(Electricity,xlab = "Electricity cost",col = "yellow",border = "blue",breaks=numOfClass)

#percentage polygon
plot(data, Percentage, type = "l",lwd = 3,col="blue")
polygon(c(1, datapoints, 50), c(0, Percentage, 0), col = "#1b98e0")

#cumulative polygon
plot(data, sortedPercentage, type = "l",lwd = 3,col="red")
polygon(c(1, data, 50), c(0, sortedPercentage, 0), col = "orange")


print(mean(Electricity))
print(median(Electricity))

#since the distribution is not significantly skewed to the left or right, then it can be represented by
f<-(mean(Electricity))
print(paste0("The most concentrated cost is ",f))


