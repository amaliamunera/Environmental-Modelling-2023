# Libraries
library(ggplot2)
library(ggsci)

# Defining the parameters
N0 <- 1e5  # N0 = initial bacterial population (cells/mL)
k1 <- 1.14  # Specific growth rate Wichlacz and Unz (1985)
k2 <- 0.576  # Specific growth rate Yurt et al. (2002)
t <- 0:10  # time range (0 to 10 hours with 1 hour intervals)

# Defining the equations
Nt1 <- N0 * exp(k1 * t)  # exponential growth equation
Nt2 <- N0 * exp(k2 * t)

# Creating the Dataframes
data <- data.frame(Time = t, Bacterial_Population1 = Nt1, Bacterial_Population2 = Nt2)

# Saving the data frame to a CSV file
write.csv(data, "bacterial_growth_data_exponential.csv", row.names = TRUE)

# Displaying a message indicating the successful creation of the CSV file
cat("CSV file 'bacterial_growth_data_exponential.csv' created successfully.\n")

# The code is reading the data and keeping it in the Environment
Modelo_exponencial <- read.table("bacterial_growth_data_exponential.csv", header = TRUE)

# Plotting the data

#Plot for the Wichlacz and Unz (1985)
Exp1_Model <- ggplot(Modelo_exponencial, aes(x = t)) +
  geom_line(aes(y = Nt1), linetype = "solid", size = 1, color = "#69C8EC99") +
  theme_bw() +
  labs(title = "Exponential Models Using Wichlacz and Unz (1985) data", x = "Time (Hrs)", y = "Bacterial Population (Cells/mL)") +
  theme(plot.title = element_text(face = "bold", hjust = 0.5)) +
  coord_cartesian(xlim = c(0, 10))

#Exp1_Model

#Plot for the Yurt et al (2002)
Exp2_Model <- ggplot(Modelo_exponencial, aes(x = t)) +
  geom_line(aes(y = Nt2), linetype = "solid", size = 1, color = "#E8924299") +
  theme_bw() +
  labs(title = "Exponential Models Using Yurt et al. (2002) data", x = "Time (Hrs)", y = "Bacterial Population (Cells/mL)") +
  theme(plot.title = element_text(face = "bold", hjust = 0.5)) +
  coord_cartesian(xlim = c(0, 10))

#Exp2_Model

#Plotting them together
#-- First, we need to determinate the value range
range(Modelo_exponencial$Time)
range(Modelo_exponencial$Bacterial_Population1)
range(Modelo_exponencial$Bacterial_Population2)/15
Factor_B <- 280

#-- Then, we can plot
FinalPlot <- ggplot(Modelo_exponencial, aes(x = t)) +
  geom_line(aes(y = Nt1, color = "Nt1"), linetype = "solid", size = 1) +
  geom_line(aes(y = Nt2 * Factor_B, color = "Nt2"), linetype = "dashed", size = 1) +
  scale_color_manual(values = c("#69C8EC99", "#E8924299"), labels = c("Wichlacz and Unz (1985)", "Yurt et al (2002)"), name = "Plots") +
  theme_bw() +
  scale_y_continuous(sec.axis = sec_axis(trans = ~./Factor_B, name = "Yurt et al (2002) Data Scale")) +
  labs(title = "Exponential Models", x = "Time", y = "Bacterial Population (Cells/mL)") +
  theme(plot.title = element_text(face = "bold", hjust = 0.5),
        legend.position = c(0.3, 0.8), 
        legend.justification = c(1, 0),
        legend.box = "horizontal",
        legend.background = element_rect(fill = "white", color = "black"), 
        legend.text = element_text(size = 8))  # Set the font size)

FinalPlot
