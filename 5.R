write.csv(Orange, "5.csv", row.names = FALSE)
data <- read.csv("5.csv")

age <- data[1:7,2:2]
circum <- data[1:7,3:3]

plot(age, circum, xlab = "age", ylab = "circumference", col = "red", pch = 19, main = "Circumference vs Age of Orange Trees")

data <- data.frame(age, circum)
model = lm(circum ~ age, data)
summary(model)

abline(model, cex=1)

new_data <- data.frame(age = 700)
result <- predict(model, new_data)
print(result)
