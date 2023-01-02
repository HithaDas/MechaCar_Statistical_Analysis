# Import libraries
library(tidyverse)

# Import datasets

MechaCar_table <- read.csv("MechaCar_mpg.csv", header = TRUE, sep = ",")
Suspension_table <- read.csv("Suspension_Coil.csv", header = TRUE, sep = ",")

# MPG REGRESSION
# Create a multiple linear regression model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_table)

# Create summary statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_table))

# SUSPENSION COIL SUMMARY
# Create summary statistics
Suspension_table %>% 
  summarize(Mean = mean(PSI), 
            Median = median(PSI), 
            Variance = var(PSI),
            SD = sd(PSI))

# Create summary statistics based on Manufacturing Lots
Suspension_table %>% 
  group_by(Manufacturing_Lot) %>% 
  summarize(Mean = mean(PSI), 
            Median = median(PSI), 
            Variance = var(PSI),
            SD = sd(PSI))
