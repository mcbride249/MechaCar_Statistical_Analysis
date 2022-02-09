#Deliverable 1

#Step 3
library (dplyr)

#Step 4
library(tidyverse)
mechacar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

#Step 5
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg, data=mechacar_table) #generate linear regression model

#Step 6
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg, data=mechacar_table))#generate summary statistics


#Deliverable 2

#Step 2
suspension_coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

#Step 3
total_summary <- suspension_coil %>% summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI),Variance_PSI=var(PSI),SD=sd(PSI), .groups = 'keep') #create summary table with multiple columns

#Step 4
lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI),Variance_PSI=var(PSI),SD=sd(PSI), .groups = 'keep') #create summary table with multiple columns


#Deliverable 3

#Step 1
t.test(suspension_coil$PSI,mu=1500)

#Step 2

lot1 <- subset(suspension_coil, Manufacturing_Lot=="Lot1")
t.test(lot1$PSI,mu=1500)

lot2 <- subset(suspension_coil,Manufacturing_Lot=="Lot2")
t.test(lot2$PSI,mu=1500)

lot3 <- subset(suspension_coil, Manufacturing_Lot=="Lot3")
t.test(lot3$PSI,mu=1500)




