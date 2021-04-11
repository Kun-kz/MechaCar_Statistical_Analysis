# deliverable1
MechaCar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
head(MechaCar_mpg)
df <- data.frame(MechaCar_mpg)
print (df)
lm(mpg ~ vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,df) #create linear model
summary(lm(mpg ~ vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,df))
# deliverable2
Suspension_Coil <- read.table(file='Suspension_Coil.csv', header= TRUE, sep= ",")
PSI_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD= sd(PSI), .groups = 'keep') #create summary table
