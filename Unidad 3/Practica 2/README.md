# Practica 2

# Exercise 1
``` r 
//1. Importing the dataset
dataset <- read.csv(file.choose())
dataset
```

# Exercise 2 
``` r
//2.Encoding categorical data 
dataset$State = factor(dataset$State,
                       levels = c('New York', 'California', 'Florida'),
                       labels = c(1,2,3))

dataset
```

# Exercise 3
``` r 
//3. Splitting the dataset into the Training set and Test set
Install.packages('caTools')
library(caTools)
set.seed(123)
split <- sample.split(dataset$Profit, SplitRatio = 0.8)
training_set <- subset(dataset, split == TRUE)
test_set <- subset(dataset, split == FALSE)
```

# Exercise 4
``` r 
//4. Fitting Multiple Linear Regression to the Training set
regressor = lm(formula = Profit ~ R.D.Spend + Administration + Marketing.Spend + State)
regressor <-lm(formula = Profit ~ .,
               data = training_set )
summary(regressor)
```

# Exercise 5
``` r 
//5. Prediction the Test set results
y_pred = predict(regressor, newdata = test_set)
y_pred
```

# Exercise 6
``` r 
//6. Assigment: visualize the siple liner regression model with R.D.Spend 
// Building the optimal model using Backward Elimination
regressor = lm(formula = Profit ~ R.D.Spend + Administration + Marketing.Spend + State,
               data = dataset )
summary(regressor)

regressor = lm(formula = Profit ~ R.D.Spend + Administration + Marketing.Spend,
               data = dataset )
summary(regressor)

regressor = lm(formula = Profit ~ R.D.Spend + Marketing.Spend,
               data = dataset )
summary(regressor)

regressor = lm(formula = Profit ~ R.D.Spend + Marketing.Spend,
               data = dataset )
summary(regressor)

y_pred = predict(regressor, newdata = test_set)
y_pred
```

# Exercise 7
``` r 
//7. Homework analise the follow atomation backwardElimination function 
backwardElimination <- function(x, sl) {
  numVars = length(x)
  for (i in c(1:numVars)){
    regressor = lm(formula = Profit ~ ., data = x)
    maxVar = max(coef(summary(regressor))[c(2:numVars), "Pr(>|t|)"])
    if (maxVar > sl){
      j = which(coef(summary(regressor))[c(2:numVars), "Pr(>|t|)"] == maxVar)
      x = x[, -j]
    }
    numVars = numVars - 1
  }
  return(summary(regressor))
}

SL = 0.05
```

# Exercise 8
``` r 
//8. dataset = dataset[, c(1,2,3,4,5)]
training_set
backwardElimination(training_set, SL)
```
