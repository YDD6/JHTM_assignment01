install.packages("ggplot2")
install.packages("lubridate")
install.packages("scatterplot3d")

library(ggplot2)
library(lubridate)
library(scatterplot3d)

cars <- read.csv("cars.csv", header = T)
str(cars)
View(cars)
#histogram
hist(cars$Dimensions.Height)

hist(cars$Dimensions.Height,
     breaks = 15,
     xlim = c(0,250),
     ylim = c(0, 800),
     col = "green",
     xlab = "Height of the cars",
     main = "Histogram of the Cars' Height"
)
 

View(iris)
iris
plot(iris$Species)

#pie plot
pie(table(cars$Engine.Information.Driveline))
pie(table(iris$Species))

#scatter plot
plot(cars$Dimensions.Height, cars$Dimensions.Width)
plot(iris$Sepal.Length, iris$Sepal.Width)

pairs(cars[1:3])


View(iris)


pairs(iris[1:4])

data()  # Builtin Datasets

#scatter plot 3d
scatterplot3d(iris$Sepal.Length, iris$Sepal.Width, iris$Petal.Length)

#counter plot for volcano
View(volcano)
filled.contour(volcano, color = terrain.colors, asp = 1,
               plot.axes = contour(volcano, add = T))

persp(volcano, theta = 25, phi = 30,
      expand = 0.5, col = "lightblue")

# For Help about the specific function
?persp
?plot
?xtabs
