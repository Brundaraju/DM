data <- read.csv("4.csv")
View(data)
#split data
index <- sample(2, nrow(data), replace=TRUE, prob=c(0.7,0.3))
train <- data[index==1,]
test <- data[index==2,]
#columns as features
features <- class ~ V1+V2+V3+V4+V5+V6+V7+V8+V9
#decision tree
model <- ctree(features, data=train)
plot(model)
test_predictions <- predict(model, newdata=test)
confusionMatrix(test_predictions, test$class, positive="malignant")
#naive bayesian classifier
model2 <- naiveBayes(features, data=train)
print(model2)
test_predictions2 <- predict(model2, newdata = test)
confusionMatrix(test_predictions2, test$class, positive="malignant")
