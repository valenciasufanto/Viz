---
  title: "Iris"
author: "Sean"
format: html
editor: visual
---
  
  This is a R code to visualization iris dataset. It splits the data into three subplot by Species.

___

**Step-by-step Explanation**
  
  ## 1. Load Required Library
  ```{r}
library(ggplot2)
```

- `ggplot2` is a package for drawing charts in R
- `library()` is a function to read a package

___

## 2. Create an Intital Scatter plot
```{r}
iris_plot <- ggplot(iris, aes(x=Sepal.Length, y = Sepal.Width))+
  geom_point() +
  facet_grid(. ~ Species)
```
- `geom_point` :
  - Draw a scatter plot
- `facet_grid(. ~ Species)` :
  - Splits the plot into seperate panels for each `Species`

___
## 3. Create a Data Frame for Custom Labels
```{r}
g_labels <- data.frame(Species = c("setosa", "versicolor", "virginica"), 
                       label=c("Setosa", "Versicolor", "Virginica"))
```
- `g_labels` :
  - A data frame that contains custom labels(`label`) for each `species`

___


## 4. Add Custom Labels to The Plot
```{r}
iris_plot +
  geom_text(x = 7, y = 4, aes(label = label), data = g_labels)
```

-`geom_text(...)` :
  
  - Adds text labels to the plot.
- `x = 7` , `y = 4` :
  
  - Specifies the position for the labels in each facet.
- `aes(label = label)`: 
  
  - Maps the `label`   column from `f_labels`  to the text labels.

___ 



## 5. Add text to the plot
```{r}
labs(title = "Iris",
     x = "Sepal length",
     y = "Sepal width",
     caption = "By Sean, Data Visualization course, Tunghai University, 2024")+
  theme(plot.title = element_text(hjust = 0.5, size = 20))
```
-`labs()` 

- for adding titles, axis labels, and captions to plots.

-`theme(plot.title)` 

- customizes the plot title's appearance, like size and alignment.

___ 
  
  

## 6. Customize Plot Theme(Complete Code)
```{r}
   theme(plot.title = element_text(hjust = 0.5, size = 20))
```
-`theme(plot.title)` :
  
  - customizes the plot title's appearance, like size and alignment.

___ 

```{r}

library(ggplot2)
iris_plot <- ggplot(iris, aes(x=Sepal.Length, y = Sepal.Width))+
  geom_point() +
  facet_grid(. ~ Species)
```
```{r}
g_labels <- data.frame(Species = c("setosa", "versicolor", "virginica"), 
                       label=c("Setosa", "Versicolor", "Virginica"))
```
```{r}
iris_plot +
  geom_text(x = 7, y = 4, aes(label = label), data = g_labels) +
  labs(title = "Iris",
       x = "Sepal length",
       y = "Sepal width",
       caption = "By Sean, Data Visualization course, Tunghai University, 2024")+
  theme(plot.title = element_text(hjust = 0.5, size = 20))
```
##
s