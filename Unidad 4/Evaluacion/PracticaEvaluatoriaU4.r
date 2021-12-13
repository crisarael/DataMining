setwd("C:/")
setwd("/home/alejandro/Data_Mining/Unit 4/Evaluation/")
getwd()

dataset = read.csv('iris.csv')
dataset = dataset[1:4]
dataset


set.seed(6)

wcss = vector()
#suma de cuadrados dentro de cada grupo
for (i in 1:10) wcss[i] = sum(kmeans(dataset, i)$withinss)

plot(1:10,
     wcss,
     type = 'b',
     main = paste('The Elbow Method'),
     xlab = 'Number of clusters',
     ylab = 'WCSS')


set.seed(29)
kmeans = kmeans(x = dataset, centers = 3)
y_kmeans = kmeans$cluster


y_kmeans

library(cluster)

clusplot(dataset,
         y_kmeans,
         lines = 0,
         shade = TRUE,
         color = TRUE,
         labels = 2,
         plotchar = FALSE,
         span = TRUE,
         main = paste('Clusters of iris'),
         xlab = 'Component Two',
         ylab = 'Component One')