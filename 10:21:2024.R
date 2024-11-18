#
#10/21/2024

View (faithful)
ggplot(faithful, aes(x=waiting))
geom_histogram()

ggplot(faithful, aes(x = waiting)) +
  geom_density() + 
  labs(title = "Density Chart", x='Waiting', y='Density',
       caption ="By Valencia, Data Visualization Course, Tunghai University, 2024") +
theme(plot.title = element_text(hjust = 0.5, size = 20))

ggplot(faithful, aes(x = waiting)) +
    geom_density(fill = "blue", alpha = .2) +
    labs(title = "Density Chart", x='Waiting', y='Density',
         caption ="By Valencia, Data Visualization Course, Tunghai University, 2024") +
  theme(plot.title = element_text(hjust = 0.5, size = 20))

#Density chart
ggplot(faithful, aes(x = waiting)) +
  geom_density(fill = "blue", alpha = .2) +
  xlim(35, 105) +
  labs(title = "Density Chart", x='Waiting', y='Density',
      caption ="By Valencia, Data Visualization Course, Tunghai University, 2024") +
  theme(plot.title = element_text(hjust = 0.5, size = 20))

# Histogram and Density chart
ggplot(faithful, aes(x = waiting, y = ..density..)) +
  geom_histogram(fill ="cornsilk", colour ="grey60", size = .2) +
  geom_density() +
  xlim(35, 105) +
  labs(title = "Density Chart", x='Waiting', y='Density',
       caption ="By Valencia, Data Visualization Course, Tunghai University, 2024") +
  theme(plot.title = element_text(hjust = 0.5, size = 20))

#Stock Density Chart
library(readr)
library(ggplot2)
Stocks <- read_csv("Desktop/DATA/Stocks.csv")
View(Stocks)
ggplot(Stocks, aes(x = Price, y = ..density..)) +
  geom_histogram(fill ="cornsilk", colour ="grey60", size = .2) +
  geom_density() +
  xlim(35, 105) +
  labs(title = "Stock Price: Histogram and Density Chart", 
       x='Waiting', 
       y='Density',
       caption ="By Valencia, Data Visualization Course, Tunghai University, 2024") +
  theme(plot.title = element_text(hjust = 0.5, size = 20))

# Load necessary libraries
library(ggplot2)
library(readr)

# Sample data for stock prices (replace with your actual dataset)
set.seed(123)
stock_prices <- data.frame(Price = rnorm(1000, mean = 100, sd = 15))

# Create the density plot with vertical line
ggplot(stock_prices, aes(x = Price)) +
  # Density plot with lightblue and transparency alpha=0.6
  geom_density(color = "lightblue", alpha = 0.6) +
  # Vertical line at a specific price (modify xintercept to your desired value)
  geom_vline(xintercept = 90, color = "red", linetype = "dashed", size = 1) +
  # Add labels and title
  labs(title = "Stock Price with Key Price Range", 
       x = "Price", 
       y = "Density",
       caption = "By James, Data Visualization Course, Tunghai University, 2024") +
  # Center the title and set its size
  theme(plot.title = element_text(hjust = 0.5, size = 20))

# Load necessary libraries
library(ggplot2)
library(readr)

# Sample data for stock prices (replace with your actual dataset)
set.seed(123)
stock_prices <- data.frame(Price = rnorm(1000, mean = 100, sd = 15))

# Define the 3 key price points where vertical lines will be drawn
key_price_points <- c(80, 100, 120)  

# Create the density plot with blue fill and 3 vertical red lines
ggplot(stock_prices, aes(x = Price)) +
  geom_density(fill = "blue", color = "lightblue", alpha = 0.2) +
  # Add exactly 3 vertical lines at specified price points
  geom_vline(xintercept = key_price_points, color = "red", linetype = "dashed", size = 1) +
  # Add labels and title
  labs(title = "Stock Price with Key Price Range", 
       x = "Price", 
       y = "Density",
       caption = "By Valencia, Data Visualization Course, Tunghai University, 2024") +
  # Center the title and set its size
  theme(plot.title = element_text(hjust = 0.5, size = 20))

#Birth Weight Smoking vs Non-Smoking
library(MASS)
library(tidyverse)
data(birthwt)
birthwt$smoke <- factor(birthwt$smoke, levels = c(0, 1), labels = c("Non Smoking", "Smoking"))
ggplot(birthwt, aes(x = bwt, fill = smoke)) +
  geom_density(alpha = 0.5) + 
  scale_fill_manual(values = c("pink", "lightblue")) +  
  labs(title = "Birth Weight: Smoking vs Non-Smoking",
       x = "Birth Weight",
       y = "Density",
       fill = "Smoking Status",
       caption = "By James, Data Visualization course, Tunghai University, 2024") +
  theme(plot.title = element_text(hjust = 0.5, size=20)) +
  theme(legend.position = "right")

#Birth Weight Smoking vs Non-Smoking
library(MASS)
library(tidyverse)
data(birthwt)
birthwt$smoke <- factor(birthwt$smoke, levels = c(0, 1), labels = c("Non Smoking", "Smoking"))
ggplot(birthwt_mod, aes(x=bwt, color= smoke)) +
  geom_density() + 
  scale_fill_manual(values = c("pink", "lightblue")) +  
  labs(title = "Birth Weight: Smoking vs Non-Smoking",
       x = "Birth Weight",
       y = "Density",
       fill = "Smoking Status",
       caption = "By James, Data Visualization course, Tunghai University, 2024") +
  theme(plot.title = element_text(hjust = 0.5, size=20)) +
  theme(legend.position = "right")

ggplot(birthwt, aes(x=bwt, color= smoke)) +
  geom_density()+
  labs(title = "Birth Weight: Smoking vs Non-Smoking",
       x = "Birth Weight",
       y = "Density",
       fill = "Smoking Status",
       caption = "By Valencia, Data Visualization course, Tunghai University, 2024") +
  theme(plot.title = element_text(hjust = 0.5, size=20))

#Birth Weight COLOUR BLANK Smoking vs Non-Smoking
ggplot(birthwt, aes(x=bwt, color= smoke)) +
  geom_density()+
  labs(title = "Birth Weight: Smoking vs Non-Smoking",
       x = "Birth Weight",
       y = "Density",
       fill = "Smoking Status",
       caption = "By Valencia, Data Visualization course, Tunghai University, 2024") +
  theme(plot.title = element_text(hjust = 0.5, size=20))


#Birth Weight COLOUR FILL Smoking vs Non-Smoking
library(MASS)
library(tidyverse)
data(birthwt)
birthwt$smoke <- factor(birthwt$smoke, levels = c(0, 1), labels = c("Non Smoking", "Smoking"))
ggplot(birthwt, aes(x = bwt, fill = smoke)) +
  geom_density() + 
  labs(title = "Birth Weight: Smoking vs Non-Smoking",
       x = "Birth Weight",
       y = "Density",
       fill = "Smoking Status",
       caption = "By Valencia, Data Visualization course, Tunghai University, 2024") +
  theme(plot.title = element_text(hjust = 0.5, size=20)) +
  theme(legend.position = "right")

#Stocks yg gak kekumpul
ggplot(Stocks, aes(x=Price, y=..density..))+
  geom_histogram(fill = "cornsilk", colour = "grey60", size = .2)+
  geom_density(alpha = .6)+
  labs(title="Stock Price: Histogram and Density Chart", x = 'Price', y = 'Density',
       caption = 'By Valencia, Data Visualization Course, Tunghai University, 2024') +
  theme(plot.title = element_text(hjust = 0.5, size = 20))


