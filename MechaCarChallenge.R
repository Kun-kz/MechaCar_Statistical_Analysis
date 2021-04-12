# deliverable1
MechaCar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
df <- data.frame(MechaCar_mpg)
print (df)
#create linear model
lm(mpg ~ vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,df) 
#Summary
summary(lm(mpg ~ vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,df))

# deliverable2
Suspension_Coil <- read.table(file='Suspension_Coil.csv', header= TRUE, sep= ",")
#the total summary
total_summary <- Suspension_Coil %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD= sd(PSI), .groups = 'keep')
#the summary of each lo
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD= sd(PSI), .groups = 'keep')

# deliverable3
# t-test for all lots
all_lots_t_test <- t.test(Suspension_Coil$PSI, mu = 1500)
print(all_lots_t_test)
# t-test for each lot
lot1_t_test <- t.test(subset(Suspension_Coil,Manufacturing_Lot=="Lot1")$PSI,mu = 1500)
print(lot1_t_test)

lot2_t_test <- t.test(subset(Suspension_Coil,Manufacturing_Lot=="Lot2")$PSI,mu = 1500)
print(lot2_t_test)

lot3_t_test <- t.test(subset(Suspension_Coil,Manufacturing_Lot=="Lot3")$PSI,mu = 1500)
print(lot3_t_test)
