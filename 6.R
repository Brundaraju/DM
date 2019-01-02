library(ggplot2)
write.csv(iris, "6.csv", row.names = FALSE)
iris<-read.csv("6.csv")

ggplot(iris, aes(Petal.Length, Petal.Width, color = iris$Species)) + geom_point()

#kmeans
set.seed(20)
irisCluster <- kmeans(iris[, 3:4], 3, nstart = 20)
irisCluster
predict_class <- fitted(irisCluster, method = c("classes"))
data <- data.frame(iris$Species, predict_class)
data
table(irisCluster$cluster, iris$Species)
irisCluster$cluster <- as.factor(irisCluster$cluster)
ggplot(iris, aes(Petal.Length, Petal.Width, color = irisCluster$cluster)) + geom_point()



#HEIRARCHIAL CLUSTERING
clusters <- hclust(dist(iris[, 3:4]), method = 'average')
plot(clusters)
# cut tree into 3 clusters
rect.hclust(clusters, k=3)
clusterCut <- cutree(clusters, 3)
table(clusterCut, iris$Species)
clusterCut <- as.factor(clusterCut)
ggplot(iris, aes(Petal.Length, Petal.Width, color = clusterCut)) + geom_point()
