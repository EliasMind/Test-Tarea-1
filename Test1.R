install.packages("googledrive")
library("googledrive")

archivos = drive_find(n_max=20)
archivos$name
drive_download("Base de Prueba_Página 1_Tabla", type = "csv")

library(readxl)
datos = read.csv("Base de Prueba_Página 1_Tabla.csv", sep = ",")

head(datos)
table(datos$Event.Name)
table(datos$Country)
table(datos$Mobile.Brand.Name)

cor(datos$Event.Count, datos$Unique.Users)

library(ggplot2)
ggplot(datos, aes(x = Event.Name, y = Event.Count, fill=Event.Name)) + 
  geom_boxplot() + coord_flip()


ggplot(datos, aes(x = Mobile.Brand.Name, y = Event.Count, fill=Event.Name)) + 
  geom_boxplot() + coord_flip()

ggplot(datos, aes(x = Country, y = Event.Count, fill=Event.Name)) + 
  geom_boxplot() + coord_flip()

#Lamentablemente los gráficos no aportan mucho como información