# importing the data with which we are going to work
stats <- read.csv(file.choose())
stats


# installing an importing the library ggplot2 
library(ggplot2)

head(stats)

#1)creating a scatter diagram
graphic_scatter<-ggplot(stats) +
  aes(x=Mean, y=N., color=Country) +
  geom_point()

#see scatter diagram
graphic_scatter

#creating a Facet Grid
graphic_scatter<-ggplot(stats) +
  aes(x=Mean, y=N., color=Country) +
  geom_point() + facet_grid(Gender~.)

#see Facet Grid 
graphic_scatter





