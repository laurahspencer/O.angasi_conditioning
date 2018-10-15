heat.shock <- read.csv("HS-Survival.csv", header=T, stringsAsFactors = T)
heat.shock$Tank <- as.factor(heat.shock$Tank)
heat.shock$Day <- as.factor(heat.shock$Day)
heat.shock$Live <- as.numeric(as.character(heat.shock$Live))
heat.shock$Day <- as.numeric(as.character(heat.shock$Day))

heat.shock.totals <- aggregate(Live ~ Day + Group, subset(heat.shock, Tank!=6), sum)

library(ggplot2)
ggplot(data=heat.shock.totals, aes(x=Day, y=Live, group=Group, colour=Group)) + ylim(0, 10) + 
  geom_line() + ggtitle("37C 1hr heat shock mortality\nO. angasi") +
  geom_point()


