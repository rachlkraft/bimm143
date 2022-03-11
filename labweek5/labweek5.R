#installed ggplot2 package
library(ggplot2)
ggplot(cars)
ggplot(cars) +
  aes(x=speed, y=dist)+
  geom_point()+
  labs(title="Speed and Stopping Distance of Cars",
       x="Speed (Mph)",
       y="Stopping Distance (ft)",
       subtitle="subtitle",
       caption="Dataset: 'cars'") +
  geom_smooth(method="lm", se=FALSE)+
  theme_bw()

#code for drug testing dataset
url <- "https://bioboot.github.io/bimm143_S20/class-material/up_down_expression.txt"
genes <- read.delim(url)
head(genes)
nrow(genes)
colnames(genes)
ncol(genes)
table(genes$State)
round(table(genes$State)/nrow(genes)*100,2)
ggplot(genes)+
  aes(x=Condition1,y=Condition2)+
  geom_point()
#installed tinytex for making pdf reports


