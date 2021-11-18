# DataMining
Practica relizada en la unidad 1 la cual consiste en generar 3 graficas del tema elegido. En nuestro caso escogimos el tema sobre el indice de felicidad por paises

# Practica 2

# Exercise 1
``` scala
//importing the data with which we are going to work
stats <- read.csv(file.choose())
stats
//Installing an importing the library ggplot2 
library(ggplot2)

head(stats)
```
# Exercise 2
``` scala
//Creating a scatter diagram
graphic_scatter<-ggplot(stats) +
  aes(x=Mean, y=N., color=Country) +
  geom_point()
```
# Exercise 3
``` scala
//See scatter diagram
graphic_scatter
```

# Exercise 4
``` scala
//Creating a Facet Grid
graphic_scatter<-ggplot(stats) +
  aes(x=Mean, y=N., color=Country) +
  geom_point() + facet_grid(Gender~.)
```

# Exercise 5
``` scala
//See themed diagram
graphic_scatter+ theme_dark()
```
