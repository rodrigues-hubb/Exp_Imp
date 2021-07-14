rm(list = ls())

#Importando os Dados####
setwd('C:/Users/Windows/Downloads/Enegep/')
export <- read.csv('Export.csv', sep = ';')
import <- read.csv('Import.csv', sep = ';')

#Criando Funções####
normalize = function(array, x, y){
  #Normalize to [0, 1]
  m = min(array) 
  range = max(array) - m
  norm1 = (array - m) / range
  return(norm1)
}



h = round(length(df$training)*0.8)
treino = df[1:h,]
teste = df[(h+1):length(df$training),]