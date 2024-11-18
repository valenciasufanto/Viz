#
# Valencia
# 2024/10/21
#Draw Box Plot

plot(ToothGrowt$supp, ToothGrowth$len)

#Formula Syntax
boxplot(len ~ supp, data = ToothGrowth)

#Put the interaction between 2 variables
boxplot(len ~ supp + dose, data = ToothGrowth)

library(ggplot2)
ggplot(ToothGrowth, aes(x = supp, y = len)) +
  geom_boxplot()

#Use Supp, Dose
ggplot(ToothGrowth, aes(x = interaction (supp, dose),
                        y = len)) +
  geom_boxplot() +
labs(title = "Boxplot with ggplot", x='Supplement, Dose', y='Tooth Length',
     caption ="By Valencia, Data Visualization Course, Tunghai University, 2024") +
  theme(plot.title = element_text(hjust = 0.5, size = 20))
