# Libraries
library(ggplot2)
library(ggsci)

#Defining the parameters
N0 <- 1e5 # N0 = initial bacterial population (cells/mL)
k1 <- 1.14 # Specific growth rate Wichlacz and Unz (1985)
k2 <- 0.576 # Specific growth rate Yurt et al. (2002)
t <- 0:20 # time range (0 to 20 hours)
K <- 1e8 #Carrying capacity

#Defining the equations 
Nt1 <- K / (1 + ((K/N0)-1) * exp(-k1*t)) #Logistic growth equation
Nt2 <- K / (1 + ((K/N0)-1) * exp(-k2*t))

#Creating the dataframe
data <- data.frame(Time = t, Bacterial_Population1 = Nt1, 
                   Bacterial_Population2 = Nt2)

# Save the data frame to a CSV file
write.csv(data, "bacterial_growth_data_logistic.csv", row.names = TRUE)

# Display a message indicating the successful creation of the CSV file
cat("CSV file 'bacterial_growth_logistic.csv' created successfully.")

#The code is reading the data bus keeping it in the environment
Modelo_logistico <- read.table("/Users/amaliamunera/bacterial_growth_data_logistic.csv", header=TRUE)

#----------------Plotting the data----------------

#Plot for the Wichlacz and Unz (1985)
Logistic1_Model <- ggplot(Modelo_logistico, aes(x = t)) +
  geom_line(aes(y = Nt1), linetype = "solid", size = 1, color = "#008EA099") +
  theme_bw() +
  labs(title = "Logistic Model Using Wichlacz and Unz (1985) data", x = "Time (Hrs)", y = "Bacterial Population (Cells/mL)") +
  theme(plot.title = element_text(face = "bold", hjust = 0.5)) 
  #coord_cartesian(xlim = c(0, 10))

Logistic1_Model

#Plot for the Yurt et al (2002)
Logistic2_Model <- ggplot(Modelo_logistico, aes(x = t)) +
  geom_line(aes(y = Nt2), linetype = "solid", size = 1, color = "#8A419899") +
  theme_bw() +
  labs(title = "Logistic Model Using Yurt et al. (2002) data", x = "Time (Hrs)", y = "Bacterial Population (Cells/mL)") +
  theme(plot.title = element_text(face = "bold", hjust = 0.5)) 
  #coord_cartesian(xlim = c(0, 10))

Logistic2_Model

#Plotting them together
Final_Logistic <- ggplot(Modelo_logistico, aes(x = t)) +
  geom_line(aes(y = Nt1, color = "Nt1"), linetype = "solid", size = 1) +
  geom_line(aes(y = Nt2, color = "Nt2"), linetype = "dashed", size = 1) +
  scale_color_manual(values = c("#008EA099", "#8A419899"), labels = c("Wichlacz and Unz (1985)", "Yurt et al (2002)"), name = "Plots") +
  theme_bw() +
  labs(title = "Logistic Models", x = "Time", y = "Bacterial Population (Cells/mL)") +
  theme(plot.title = element_text(face = "bold", hjust = 0.5),
        legend.position = c(0.3, 0.8), 
        legend.justification = c(1, 0),
        legend.box = "horizontal",
        legend.background = element_rect(fill = "white", color = "black"), 
        legend.text = element_text(size = 8)) +  # Set the font size) + 
  xlim(0,20)

Final_Logistic

