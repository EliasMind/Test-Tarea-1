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

