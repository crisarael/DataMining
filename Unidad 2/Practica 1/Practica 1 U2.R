# importing the data with which we are going to work
stats <- read.csv(file.choose())
stats


# installing an importing the library ggplot2 
library(ggplot2)

head(stats)

#1)creating a scatter plot
graphic_scatter<-ggplot(stats) +
  aes(x=Mean, y=N., color=Country) +
  geom_point()

#see scatter diagram
graphic_scatter



