week2 <- read.csv("2-week-angasi-sampling.csv", header=T)
head(week2)
week2$Condition.Index <- (week2$Whole.Weight - week2$Shell.Weight)/(week2$Whole.Weight)*100
week2$Treatment <- as.factor(week2$Treatment)
summary(aov(Condition.Index ~ Group+Treatment, data=week2)) #no difference between treatment, both groups 
summary(aov(Condition.Index ~ Treatment, data=subset(week2, Group=="Port Stephens"))) 
summary(aov(Condition.Index ~ Treatment, data=subset(week2, Group=="Merimbula")))

plot(week2$Group, week2$Condition.Index, main="Wet Tissue CI, by groups")
plot(week2$Treatment, week2$Condition.Index, main="Wet Tissue CI, by treatment")
plot(week2$Tank, week2$Condition.Index, main="Wet Tissue CI, by treatment", col=week2$Group)


