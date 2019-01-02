data <- read.csv("1.csv")

print(dim(data))
print(names(data))
print(str(data))

print(head(data,3))
print(tail(data,3))
print(data[1:3,])
print(data[1:4,"c1"])

print(attributes(data))
print(summary(data))
index <- sample(1:nrow(data), 3)
print (index)

mean(data$c4)
median(data$c3)
range(data$c4)
quantile(data$c5)
quantile(data$c2,c(0.1, 0.5, 0.65))

var(data$c2) 
cov(data$c2, data$c5)
cor(data$c2, data$c5)
aggregate(c3 ~ c4,summary,data=data)
par("mar")
par(mar=c(6,6,6,6))
hist(data$c5)
table(data$c3)
pie(table(data$c4))
barplot(table(data$c5))
boxplot(c2~c5,data=data)


