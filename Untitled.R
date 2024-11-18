library(ggplot2)
pg <- ggplot(faithful, aes(x = eruptions, y = waiting))+ geom_point()
pg +
  annotate("text", x = 3, y = 48, label ="Group 1") +
    annotate("text", x = 4.5, y = 66, label = "Group 2")


#
# Add group column
# Group 1 : eruption < 3
# Group 2 : eruption > 3
#

my_faithful <- faithful

# Method 1
my_faithful$group <- ifelse(my_faithful$eruptions > 3, 2, 1)

# Method 2
library (dplyr)
my_faithful <- my_faithful %›%
  mutate group = ifelse (eruptions > 3, 2, 1))

#
# Change legend title text using labs ()
#
ggplot(my_faithful, aes(x = eruptions, y = waiting, color = group)) +
  geom_point() +
  labs (color = 'Group') +
  annotate("text", x = 3, y = 48, label = "Group 1") +
  annotate( "text", x = 4.5, y = 66, label = "Group 2") +
  labs(caption ="By Valencia, Data Visualization Course, Tunghai University, 2024") +
  theme(plot.title = element_text(hjust = 0.5, size = 20))

#
# Change legend title text using scale_color _discrete()
#

ggplot(my_faithful, aes (x = eruptions, y = waiting, color = group)) +
  geom_point() +
  scale_color_discrete(name = 'Group') +
  annotate ("text", x = 3, y = 48, label = "Group 1") +
  annotate("text", x = 4.5, y = 66, label = "Group 2") +
  
  ggplot(my_faithful, aes(x = eruptions, y = waiting, color = group)) +
  geom_point() +
  labs (color = 'Group') +
  annotate("text", x = 3, y = 48, label = "Group 1") +
  annotate( "text", x = 4.5, y = 66, label = "Group 2") +
  labs(title= "Faithful",
       captions = "By Valencia, Data Visualization course, Tunghai University, 2024") +
  theme(plot.title = element_text(hjust = 0.5, size=20))

my_faithful$group = as.factor(my_faithful$group)
ggplot(my_faithful, aes(x = eruptions, y = waiting, color = group)) +
  geom_point() +
  labs (color = 'Group') +
  annotate("text", x = 3, y = 48, label = "Group 1") +
  annotate( "text", x = 4.5, y = 66, label = "Group 2") +
  labs(title= "Faithful: Eruptions and Waiting",
       captions = "By Valencia, Data Visualization course, Tunghai University, 2024") +
  theme(plot.title = element_text(hjust = 0.5, size=20))
#

my_faithful$group = as.factor(my_faithful$group)
ggplot(my_faithful, aes(x = eruptions, y = waiting, color = group)) +
  geom_point() +
  labs (color = 'Group') +
  annotate("text", x = 3, y = 48, label = "Group 1") +
  annotate( "text", x = 4.5, y = 66, label = "Group 2") +
  labs(title= "Faithful: Eruptions and Waiting",
       x = "Eruptions",
       y = "Waiting",
       captions = "By Valencia, Data Visualization course, Tunghai University, 2024") +
  theme(plot.title = element_text(hjust = 0.5, size=20))

#Add geom text
library(ggrepel)
ggplot(mtcars, aes(wt,mpg))+
  geom_point()+
  labs(
    title= "Weight and Mileage",
    x = "Weight",
    y = "Mileage",
    caption = 'By Valencia, Data Visualization Course, Tunghai University, 2024')+
  theme(plot.title = element_text(hjust= 0.5, size = 20))+
  geom_label_repel(aes(label = rownames(mtcars)), size = 3.5)

#New
hawktuah <- data.frame(
  x = seq(-pi, pi, length.out = 100),
  sin_x = sin(seq(-pi, pi, length.out = 100)),
  cos_x = cos(seq(-pi, pi, length.out = 100))
)

ggplot(hawktuah) +
  geom_line(aes(x = x, y = sin_x), color = "blue") + 
  geom_line(aes(x = x, y = cos_x), color = "red") + 
  labs(title = "Sin and Cos", x = "X", y = "Y") +
  theme(plot.title = element_text(hjust = 0.5, size=20)) +
  labs(caption = "By Valencia, DV, THU, 2024")

ggplot(data.frame(x = c(-3,3)), aes(x=x))+
  stat_function(fun =dnorm)+
  annotate("text", x=2, y=0.3, parse =TRUE,
           label= "frac(1, sqrt(2*pi))* e^ {-x^2/2}")+ 
  theme(plot.title = element_text(hjust = 0.5, size=20)) +
  labs(title= "Normal Distribution",
       x = "x",
       y = "y",
       caption = "By Valencia, Data Visualization Course, Tunghai University, 2024")

ggplot(data.frame(x = c(-3,3)), aes(x=x))+
  stat_function(fun = dnorm, geom = 'polygon', color = "blue", fill = "red", alpha = 0.5) +
  annotate("text", x=2, y=0.3, parse =TRUE,
           label= "frac(1, sqrt(2*pi))* e^ {-x^2/2}")+
  labs(title = "Normal Distribution", x = "x", y = "y",
       caption = 'By Valencia, Data Vizualization Course, Tunghai University, 2024') +
  theme(plot.title = element_text(hjust = 0.5, size=20))

library (gcookbook)
# Load gookbook for the heightweight data set
ggplot(heightweight, aes(x = ageYear, y = heightIn, colour = sex)) +
  geom_point() +
  geom_hline (yintercept = 60) +
  geom_vline(xintercept = 14) +
  labs (title = 'Age and Height',
        x = 'Age(Year)',
        y = 'Height(Inch)',
        caption = 'By Valencia, DV, THU, 2024') +
  theme (plot.title = element_text(hjust = 0.5, size = 20))

library (gcookbook)
# Load gookbook for the heightweight data set
ggplot(heightweight, aes(x = ageYear, y = heightIn, colour = sex)) +
  geom_point() +
  geom_hline (yintercept = 60) +
  geom_vline(xintercept = 14) +
  labs (title = 'Age and Height',
        x = 'Age(Year)',
        y = 'Height(Inch)',
        caption = 'By James, Data Visualization course, Tunghai University, 2024') +
  theme (plot.title = element_text(hjust = 0.5, size = 20))

ggplot(heightweight, aes(x = ageYear, y = heightIn, colour = sex)) +
  geom_point() +
  geom_hline (yintercept = 60) +
  geom_vline(xintercept = 14) +
  geom_abline(intercept = 37.4, slope = 1.75)+
  labs (title = 'Age and Height',
        x = 'Age(Year)',
        y = 'Height(Inch)',
        caption = 'By Valencia, DV, THU, 2024') +
  theme (plot.title = element_text(hjust = 0.5, size = 20))

#
# Add line segment and arrow
# library(dplyr)
#

library(gcookbook) # Load gookbook for the climate data set
ggplot(filter (climate, Source == "Berkeley"), aes(x = Year, y = Anomaly10y)) +
  geom_line() +
  annotate( "segment", x = 1950, xend = 1980, y = -.25, yend =-.25) +
  annotate( "segment", x = 1850, xend = 1820, y = -.8, yend = -.95,
            colour= 'blue', size=2, arrow=arrow()) +
  annotate("segment", x = 1950, xend = 1980, y = -.25, yend = -.25, arrow = arrow(ends = "both", angle = 90, length = unit(.2, "cm"))) +
  labs (title = 'Year and Anomaly',
        caption = 'By Valencia, DV, THU, 2024') +
  theme (plot.title = element_text(hjust = 0.5, size = 20))

#
# Add line segment and arrow
# library(dplyr)
#

library(gcookbook) # Load gookbook for the climate data set
ggplot(filter (climate, Source == "Berkeley"), aes(x = Year, y = Anomaly10y)) +
  geom_line() +
  annotate( "segment", x = 1950, xend = 1980, y = -.25, yend =-.25) +
  annotate( "segment", x = 1850, xend = 1820, y = -.8, yend = -.95,
            colour= 'blue', size=2, arrow=arrow()) +
  annotate("segment", x = 1950, xend = 1980, y = -.25, yend = -.25, arrow = arrow(ends = "both", angle = 90, length = unit(.2, "cm"))) +
  labs (title = 'Year and Anomaly',
        caption = 'By Valencia, DV, THU, 2024') +
  theme (plot.title = element_text(hjust = 0.5, size = 20))

library(gcookbook) # Load gookbook for the climate data set
ggplot(filter (climate, Source == "Berkeley"), aes(x = Year, y = Anomaly10y)) +
  geom_line() +
  annotate("rect", xmin = 1950, xmax = 1980, ymin = -1, ymax = 1, alpha = .1, fill="blue" ) +
  labs (title = 'Year and Anomaly',
        caption = 'By Valencia, DV, THU, 2024') +
  theme (plot.title = element_text(hjust = 0.5, size = 20))

library(dplyr)
Pg_mod <- PlantGrowth %›%
mutate (hl = recode (group,
"otri" = "no", "trtl" = "nol
"trt2" =
"yes")|
ggplot(pg_mod, aes(x = group, y = weight, fill = hl)) +
geom_boxplot () +
scale_fill_manual (values = c("grey85",
"#FFDDCC"), guide = FALSE) +
labs (title = 'Group and Weight',
x= 'Group',
y = 'Weight',
caption = 'By James, Data Visualization course,
Tunghai University, 2024') +
theme (plot. title = element_texthjust = 0.5, size = 20))

#new
library(dplyr)
Pg_mod <- PlantGrowth %›%
mutate (hl = recode (group,
"otri" = "no", "trtl" = "nol
"trt2" =
"yes")|
ggplot(pg_mod, aes(x = group, y = weight, fill = hl)) +
geom_boxplot () +
scale_fill_manual (values = c("grey85",
"#FFDDCC"), guide = FALSE) +
labs (title = 'Group and Weight',
x= 'Group',
y = 'Weight',
caption = 'By James, Data Visualization course,
Tunghai University, 2024') +
theme (plot. title = element_texthjust = 0.5, size = 20))

#new
library (dplyr)
pg_mod <- PlantGrowth %>%
  mutate(h1 =recode(group, "ctrl" = "no", "trt1" = "no", "trt2" = "yes"))

ggplot(pg_mod, aes(x = group, y = weight, fill = h1)) +
  geom_boxplot () +
  scale_fill_manual (values = c("grey85",
                                "#FFDDCC"), guide = FALSE) +
  labs (title = 'Group and Weight',
        x= 'Group',
        y = 'Weight',
        caption = 'By Valencia, DV, THU, 2024') +
  theme(plot.title = element_text(hjust = 0.5, size = 20))

#new
# Adding error bars
#
ce_mod <- cabbage_exp %>%
  filter(Cultivar == 'c39')

# With a bar graph
ggplot(ce_mod, aes(x = Date, y = Weight)) +
  geom_col(fill = "white", colour = "black") +
  geom_errorbar (aes(ymin = Weight - se, ymax = Weight + se), width = .2) +
  labs(title = 'Date and Weight' ,
       caption = 'By Valencia, DV, THU, 2024') +
  theme (plot.title = element_text(hjust = 0.5, size = 20))

#
# Adding annotations to individual facets
#
# Create the base plot
mpg_plot <- ggplot(mpg, aes(x=displ, y = hwy))+
  geom_point() +
  facet_grid(. ~ drv)

# A data frame with labels for each facet
f_labels <- data.frame(drv = c("4","f","r"), label=c("4wd", "Front", "Rear"))

mpg_plot +
  geom_text(x = 6, y = 40, aes(label = label), data = f_labels) +
  labs(title = "Engine and Highway Mileage",
       x = "Engine Displacement",
       y = "Highway mileage",
       caption = "By Valencia, DV, THU, 2024")+
  theme(plot.title = element_text(hjust = 0.5, size = 20))

#New Iris
annotation_data <- data.frame(
  Species = c("setosa", "versicolor", "virginica"),
  Sepal.Length = c(7, 7, 7),  # Adjust these positions as needed
  Sepal.Width = c(4, 4, 4),   # Adjust these positions as needed
  label = c("Setosa", "Versicolor", "Virginica")
)

ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width)) +
  geom_point() +
  geom_text(data = annotation_data, aes(label = label), hjust = 0.5) +
  facet_wrap(~ Species) +
  labs(title = "Iris",
       x = "Sepal length",
       y = "Sepal width",
       caption = "By Valencia, DV, THU, 2024")+
  theme(plot.title = element_text(hjust = 0.5, size = 20))

