library(tidyverse)

#Import mechacar MPG file
MechaCar_mpg <- read.csv(file="MechaCar_mpg.csv")

# Part 1
#Run linear regression to determine significance to mpgs for other columns in the table
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg))

#Import suspension coil data for all lots
Suspension_Coil <- read.csv(file="Suspension_Coil.csv")

#Summarize PSI informarion
Total_summary <- summarize(Suspension_Coil, mean(PSI), median(PSI), var(PSI), sqrt(var(PSI)))

#Part 2
#Group by lots
lot_group <- group_by(Suspension_Coil, Manufacturing_Lot)

#Create summary of information that was group by lots
lot_summary <- summarize(lot_group, mean(PSI), median(PSI), var(PSI), sqrt(var(PSI)))

#Part 3
# Create sample table of 50 entries to compare against population
sample_coil = sample(Suspension_Coil$PSI, 50)
# run ttest on PSI against entire population
t.test(sample_coil, mu=mean(Suspension_Coil$PSI))

#Get subset data to compare each lot against the population mean
lot_1 = subset(Suspension_Coil, Manufacturing_Lot == "Lot1")
lot_1_sample = sample(lot_1$PSI, 25)
t.test(lot_1_sample, mu=mean(Suspension_Coil$PSI))

#Get lot data and sample data for lot 2
lot_2 = subset(Suspension_Coil, Manufacturing_Lot == "Lot2")
lot_2_sample = sample(lot_2$PSI, 25)
t.test(lot_2_sample, mu=mean(Suspension_Coil$PSI))

#Get lot data and sample data for lot 3
lot_3 = subset(Suspension_Coil, Manufacturing_Lot == "Lot3")
lot_3_sample = sample(lot_3$PSI, 25)
t.test(lot_3_sample, mu=mean(Suspension_Coil$PSI))