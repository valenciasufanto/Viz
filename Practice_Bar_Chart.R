#
# Valencia
# Practice Bar Chart
#

library(gcookbook)
library(ggplot2)

ggplot(pg_mean, aes(x=group, y=weight, fill = group))+
  geom_col() +
  labs(title = "Bar Chart",
       caption ="By Valencia, Data Visualization Course, Tunghai University, 2024")
  theme(plot.title = element_text(hjust = 0.5, size = 20))
  

ggplot(BOD, aes(x = Time, y = demand)) +
 geom_line() + 
  labs(title = "Line Chart",
       caption ="By Valencia, Data Visualization Course, Tunghai University, 2024")
theme(plot.title = element_text(hjust = 0.5, size = 20))

ggplot(diamonds, aes(x=carat)) +
  geom_bar()
labs(title = "Bar Chart",
     caption ="By Valencia, Data Visualization Course, Tunghai University, 2024")
theme(plot.title = element_text(hjust = 0.5, size = 20))


ggplot(diamonds, aes(x=carat)) +
  geom_histogram()
labs(title = "Histogram Chart",
     caption ="By Valencia, Data Visualization Course, Tunghai University, 2024")
theme(plot.title = element_text(hjust = 0.5, size = 20))

View (faithful)
ggplot(faithful, aes(x=waiting))
  geom_histogram()
  
ggplot(faithful, aes(x = waiting)) +
  geom_density()
