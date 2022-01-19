#Selection of variables from dataset

# Libraries
install.packages("dplyr")
install.packages("ggplot2")
install.packages("ggExtra")
library(dplyr)
library(ggplot2)
library(ggExtra)

vehicle <- read.csv("VehicleFailureDataUS.csv", header = T)
str(vehicle)

# Histogram
hist(vehicle$lc)
hist(vehicle$lc, breaks = 30, xlim = c(0, 1500),
     ylim = c(0, 500), col = 'green',
     xlab = "Labour Cost", ylab = "frequency",
     main = "Histogram of Labour Cost")

# Box plot
boxplot(Mileage ~ State, vehicle)

# Scatter Plot
plot(vehicle$lh, vehicle$lc)

veh <- vehicle %>% filter(State == 'US-CA'|
                            State =='US-TX'| State=='US-FL') 
veh # Subset of data

veh %>% ggplot(aes(x=lh, y=lc))+
  geom_point() +
  facet_wrap(~ State) +
  ggtitle("Labor hours Vs Labor Cost",
          subtitle = 'Source: Vehiclefailure.csv') +
  geom_smooth(method = 'lm', col = 'red')+
  scale_x_continuous("Labor Hours", 
                     limits = c(0,40))+
  scale_y_continuous("Labor Cost in $",
                     limits = c(0, 3000)) +
  theme_bw()
