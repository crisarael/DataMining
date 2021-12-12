#Usamos nuestras bibliotecas ya instaladas con ctrl + enter
library(e1071)
library(naivebayes)
library(caret)
library(C50)
library(ggplot2)
library(lattice)
library(readxl)
library(dplyr)
library(psych)
library(caTools)
# Importing the dataset
dataset <- read.csv(file.choose())
dataset

#le indicamos como queremos nuestro dataset
dataset = dataset[3:5]

dataset$Purchased=factor(dataset$Purchased,levels = c(0,1))

set.seed(123)

split=sample.split(dataset$Purchased, SplitRatio = 0.45)
training_set=subset(dataset,split==TRUE)
test_set=subset(dataset,split==FALSE)
training_set[-3]=scale(training_set[-3])
test_set[-3]=scale(test_set[-])


#utilizamos la fórmula de naive bayes
classifier=naive_bayes(formula=Purchased ~ . ,
                       data=training_set,
                       type='C-classification',
                       kernel='linear')

y_pred=predict(classifier,newdata=test_set[-3])
y_pred

cm=table(test_set[, 3],y_pred)
cm

set = test_set

X1 = seq(min(set[, 1]) - 1, max(set[, 1]) + 1, by = 0.01)
X2 = seq(min(set[, 2]) - 1, max(set[, 2]) + 1, by = 0.01)

grid_set = expand.grid(X1, X2)

#guardamos en nuestra variable grid_set los nombres de las columnas
colnames(grid_set) = c('Age', 'EstimatedSalary')

#visualizamos la gráfica por la edad y el salario estimado
y_grid = predict(classifier, newdata = grid_set)

plot(set[, -3], main = 'Classifier (Test set)',
     xlab = 'Age', ylab = 'Estimated Salary',
     xlim = range(X1), ylim = range(X2))

#le agregamos la parábola a nuestra grafica
contour(X1, X2, matrix(as.numeric(y_grid), length(X1), length(X2)), add =
                TRUE)

#le asignamos colores a los puntos de dispersión y a otra la gráfica para una mayor mejor en cuanto a la visualización
points(grid_set, pch = '.', col = ifelse(y_grid == 1, 'pink',
                                         'red'))

points(set, pch = 21, bg = ifelse(set[, 3] == 1, 'yellow', 'green'))
