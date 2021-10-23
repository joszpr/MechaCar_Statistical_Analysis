# Import libraries
library(dplyr)
library(ggplot2)
library(tidyverse)

# Import MechaCar_mpg CSV file as a dataframe
ds_import <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

# Plot data to visualize variables relationship with mpg
  # Vehicle_length
plt1 <- ggplot(ds_import,aes(x=vehicle_length,y=mpg))
plt1 + geom_point()
  # vehicle_weight
plt2 <- ggplot(ds_import,aes(x=vehicle_weight,y=mpg))
plt2 + geom_point()
  # spoiler_angle
plt3 <- ggplot(ds_import,aes(x=spoiler_angle,y=mpg))
plt3 + geom_point()
  # ground_clearance
plt4 <- ggplot(ds_import,aes(x=ground_clearance,y=mpg))
plt4 + geom_point()
  # AWD
plt5 <- ggplot(ds_import,aes(x=AWD,y=mpg))
plt5 + geom_point()

# Perform linear regression on ds_import
linear_reg <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=ds_import)
summary(linear_reg)

#
# Suspension_Coil.csv Analysis
#

# Import the Suspension_coil.csv into a dataframe
sc_import <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

# Get the summary statistics of sc_import data
total_summary <- sc_import %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

# Get the summary statistics of sc_import data separated by Manufacturing_Lot
lot_summary <- sc_import %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

#
# T.Test
#

# T.Test for PSI across all manufacturing lots
t.test(sc_import$PSI, mu=1500)

# T.Test for PSI for Lot 1
t.test(sc_import$PSI, mu=1500, subset = sc_import$Manufacturing_Lot == Lot1)

# T.Test for PSI for Lot 2
t.test(sc_import$PSI, mu=1500, subset = sc_import$Manufacturing_Lot == Lot2)

# T.Test for PSI for Lot 3
t.test(sc_import$PSI, mu=1500, subset = sc_import$Manufacturing_Lot == Lot3)



