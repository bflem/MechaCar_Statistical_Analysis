# import packages
library(dplyr)
library(tidyverse)

# read in data
car_data <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

# perform linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=car_data)

# get summary statistics of linear regression
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=car_data))

# read in data
coil_data <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

# create variable and summarize PSI column
total_summary <- summarize(coil_data, Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

summarize_coil <- coil_data %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')

# t test
# view distribution to check if normal
plt <- ggplot(coil_data, aes(PSI))
plt + geom_density()

# t test for all lots
t.test(coil_data$PSI,mu=mean(coil_data$PSI))

# t test for Lot1
t.test(subset(coil_data$PSI,coil_data$Manufacturing_Lot == "Lot1"),mu=mean(coil_data$PSI))

# t test for Lot2
t.test(subset(coil_data$PSI,coil_data$Manufacturing_Lot == "Lot2"),mu=mean(coil_data$PSI))

# t test for Lot3
t.test(subset(coil_data$PSI,coil_data$Manufacturing_Lot == "Lot3"),mu=mean(coil_data$PSI))

