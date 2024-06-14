# Load the required libraries
library(ggplot2)
library(dplyr)

# Read the data from the CSV file
data <- read.csv("/Users/lea/Desktop/MSDS Data.csv")

# Create the histogram
ggplot(data, aes(x = RAM..in.GB.)) + # Specify the data and x-axis variable
  geom_histogram(bins = 30, fill = "steelblue", color = "black") + # Plot the histogram with 30 bins, fill color, and outline
  labs(title = "Distribution of RAM (in GB)", # Set the plot title
       x = "RAM (GB)", # Set the x-axis label
       y = "Frequency") + # Set the y-axis label
  theme_minimal() + # Use a minimal theme
  theme(plot.title = element_text(size = 16, face = "bold"), # Customize the title text
        axis.title = element_text(size = 14), # Customize the axis title text
        axis.text = element_text(size = 12)) # Customize the axis text

# Show the plot