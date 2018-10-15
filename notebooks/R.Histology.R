# HISTOLOGY 

Histology <- read.csv("Angasi-Histology.csv", header=T, stringsAsFactors = T, na.strings = "NA")
Histology$FEMALE.STAGE <- as.factor(Histology$FEMALE.STAGE)
Histology$WEEK <- as.factor(Histology$WEEK)
str(Histology)

Week.3.F <- table(subset(Histology, WEEK==3)$TREATMENT, subset(Histology, WEEK==3)$FEMALE.STAGE)
Week.3.M <- table(subset(Histology, WEEK==3)$TREATMENT, subset(Histology, WEEK==3)$MALE.STAGE)

Week.5.F <- table(subset(Histology, WEEK==5)$TREATMENT, subset(Histology, WEEK==5)$FEMALE.STAGE)
Week.5.M <- table(subset(Histology, WEEK==5)$TREATMENT, subset(Histology, WEEK==5)$MALE.STAGE)

Week.5.pre.F <- table(Histology$WEEK, Histology$FEMALE.STAGE)
Week.5.pre.M <- table(Histology$WEEK, Histology$MALE.STAGE)

fisher.test(Week.3.F) #no diff 
fisher.test(Week.3.M) #no diff 
fisher.test(Week.5.F) #no diff 
fisher.test(Week.5.M) #YES DIFF - males spawned 
chisq.test(Week.5.pre.F, simulate.p.value = T) #YES DIFF 
chisq.test(Week.5.pre.M, simulate.p.value = T) #YES DIFF 

# Stacked barplot showing different stage by tempertature 
par(mfrow=c(1, 1), mar=c(5, 5, 4, 12))
barplot(t(prop.table(Week.5.F,1)), main="Stage Week 5", xlab="Temperature", ylab="No. oysters", las=1, col=c("#E2E6BD",  "#EAAB28", "#E78A38","#D33F6A", "#DF6753", "lightsalmon"), cex.main=1.5, cex.lab=1.5, cex.axis = 1.5, cex.names = 1.5, legend.text = TRUE, args.legend = list(x = "topright", bty = "n", inset=c(-0.45, 0), title="Stage", cex=1.5))

barplot(t(prop.table(Week.5.M,1)), main="Stage Week 5", xlab="Temperature", ylab="No. oysters", las=1, col=c("#E2E6BD",  "#EAAB28", "#E78A38","#D33F6A", "#DF6753", "lightsalmon"), cex.main=1.5, cex.lab=1.5, cex.axis = 1.5, cex.names = 1.5, legend.text = TRUE, args.legend = list(x = "topright", bty = "n", inset=c(-0.45, 0), title="Stage", cex=1.5))

barplot(t(prop.table(Week.5.pre.F,1)), main="Stage Week 5", xlab="Temperature", ylab="No. oysters", las=1, col=c("#E2E6BD",  "#EAAB28", "#E78A38","#D33F6A", "#DF6753", "lightsalmon"), cex.main=1.5, cex.lab=1.5, cex.axis = 1.5, cex.names = 1.5, legend.text = TRUE, args.legend = list(x = "topright", bty = "n", inset=c(-0.45, 0), title="Stage", cex=1.5))

barplot(t(prop.table(Week.5.pre.M,1)), main="Stage Week 5", xlab="Temperature", ylab="No. oysters", las=1, col=c("#E2E6BD",  "#EAAB28", "#E78A38","#D33F6A", "#DF6753", "lightsalmon"), cex.main=1.5, cex.lab=1.5, cex.axis = 1.5, cex.names = 1.5, legend.text = TRUE, args.legend = list(x = "topright", bty = "n", inset=c(-0.45, 0), title="Stage", cex=1.5))
