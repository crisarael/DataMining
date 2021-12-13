 # Practica Evaluatoria U4

For this exam we use the K-Means grouping method for the iris.csv file
```R
setwd("C:/")
setwd("/home/alejandro/Data_Mining/Unit 4/Evaluation/")
getwd()
```
We indicate the path in which we are going to be working, which is where our csv file is

```R
dataset = read.csv('iris.csv')
dataset = dataset[1:4]
dataset
```
We create the dataset with the data from iris.csv and we only select from column 1 to 4 because column 5 has string values

```R
set.seed(6)
wcss = vector()
                   
for (i in 1:10) wcss[i] = sum(kmeans(dataset, i)$withinss)
```
We implement the seed with the value of 6 and create the vector, wcss stands for "sum of the squares within each group", we create a for loop where i will go from 1 to 10, indicating the number of clusters, a Each vector is given the sum of wcss.

```R
plot(1:10,
     wcss,
     type = 'b',
     main = paste('The Elbow Method'),
     xlab = 'Number of clusters',
     ylab = 'WCSS')
```
We plot the Elbow method with the values of each cluster, the type refers to what is going to be plotted, l is linear, p is point, and b is both.
![Imgur](https://imgur.com/SiBcgLn.png)

This method serves to identify the optimal number of K, in the graph is the "elbow point", where the rate of descent is "sharpened".


So we conclude that the optimal value for K is 3


```R
set.seed(29)
kmeans = kmeans(x = dataset, centers = 3)
y_kmeans = kmeans$cluster
y_kmeans
```
We generate the random numbers with set.seed

We create the variable kmeans, where it will be equal to our dataset and the centers that is the result of the elbow.
In y_kmeans, it will be equal to our kmeans data, but we will only take the results of the cluster.

```R
library(cluster)
```
We load the cluster library

```R
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
```
In the clusplot, we will have our dataset, the result of y_kmeans, lines will be equal to zero.

shade: where if true, the ellipses will be shaded in relation to their density.

color: if true, each ellipse will have a different color.

labels: accepts only integer numbers, and is used to get an idea of the distances between ellipses.

plotchar: if true, the plot symbols differ for points belonging to different groups, in this case we will use false.

span: if true, then each group is represented by an ellipse with the smallest area containing all of its points.

Finally, in main, it is the main name of our graph, in xlab we have component two and in ylab we have component one

![plot_zoom_pn](https://i.imgur.com/YTGfd3A.png)

These two components explain 95.8 points of variability

We can see the setosa cluster perfectly explained, while virginica and versicolor have similar values between their ellipses.
