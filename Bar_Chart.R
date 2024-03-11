library(ggplot2)
library(gcookbook)

ggplot(pg_mean, aes(x=group, y=weight)) +
  geom_col() +
  labs(title="Brian, Bar Chart")
  
