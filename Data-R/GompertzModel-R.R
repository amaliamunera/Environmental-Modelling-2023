# Libraries
library(ggplot2)
library(ggsci)

# Defining the parameters
N0 <- 1e5  # N0 = initial bacterial population (cells/mL)
mu1 <- 1.14  # Specific growth rate Wichlacz and Unz (1985)
mu2 <- 0.576  # Specific growth rate Yurt et al. (2002)
t <- 0:10  # time range (0 to 10 hours with 1 hour intervals)
lambda <- 2 #Retard phase duration
e <- 2 #For the exponential

#Defining the equations
Nt1 <- N0 * exp(-exp((mu1/e) * (lambda - t) + 1)) # Gompertz growth equation
Nt2 <- N0 * exp(-exp((mu2/e) * (lambda - t) + 1))

#Creating the dataframes 
data <- data.frame(Time = t, Bacterial_Population1 = Nt1, 
                   Bacterial_Population2 = Nt2)

# Save the data frame to a CSV file
write.csv(data, "bacterial_growth_data_Gompertz.csv", row.names = TRUE)

# Display a message indicating the successful creation of the CSV file
cat("CSV file 'bacterial_growth_Gompertz.csv' created successfully.")

#The code is reading the data and keeping it in the environment
Modelo_Gompertz <- read.table("/Users/amaliamunera/bacterial_growth_data_Gompertz.csv", header=TRUE)

#----------Plotting the data----------

#Plot for the Wichlacz and Unz (1985)
gmptz1_Model <- ggplot(Modelo_Gompertz, aes(x = t)) +
  geom_line(aes(y = Nt1), linetype = "solid", size = 1, color = "#39acd5") +
  theme_bw() +
  labs(title = "Gompertz Model Using Wichlacz and Unz (1985) data", x = "Time (Hrs)", y = "Bacterial Population (Cells/mL)") +
  theme(plot.title = element_text(face = "bold", hjust = 0.5)) +
  coord_cartesian(xlim = c(0, 10))

gmptz1_Model

#Plot for the Yurt et al (2002)
gmptz2_Model <- ggplot(Modelo_Gompertz, aes(x = t)) +
  geom_line(aes(y = Nt2), linetype = "solid", size = 1, color = "#e65262") +
  theme_bw() +
  labs(title = "Gompertz Model Using Yurt et al. (2002) data", x = "Time (Hrs)", y = "Bacterial Population (Cells/mL)") +
  theme(plot.title = element_text(face = "bold", hjust = 0.5)) +
  coord_cartesian(xlim = c(0, 10))

gmptz2_Model

#Plotting them together
Final_gmptz <- ggplot(Modelo_Gompertz, aes(x = t)) +
  geom_line(aes(y = Nt1, color = "Nt1"), linetype = "solid", size = 1) +
  geom_line(aes(y = Nt2, color = "Nt2"), linetype = "dashed", size = 1) +
  scale_color_manual(values = c("#39acd5", "#e65262"), labels = c("Wichlacz and Unz (1985)", "Yurt et al (2002)"), name = "Plots") +
  theme_bw() +
  labs(title = "Gompertz Models", x = "Time (Hr)", y = "Bacterial Population (Cells/mL)") +
  theme(plot.title = element_text(face = "bold", hjust = 0.5),
        legend.position = c(0.3, 0.8), 
        legend.justification = c(1, 0),
        legend.box = "horizontal",
        legend.background = element_rect(fill = "white", color = "black"), 
        legend.text = element_text(size = 8)) +  # Set the font size for legend text+
  xlim(0,10)

Final_gmptz
