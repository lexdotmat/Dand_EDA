library(tidyverse)
library(readr)
library(data.table)
library(ggplot2)
library(ggthemes)

# Import the dataset : Redwine
Df.redwine <- read_csv("~/Documents/Data Analytics/DANDp5-EDA mit R/wineQualityReds.csv")

DT.redwine <- data.table(Df.redwine)
str(DT.redwine)

DT.redwine[X1 := NULL]

ls()

qplot(x = fixed.acidity,
	data= DT.redwine) + 
  theme_minimal()

qplot(x = quality,
      y  = alcohol,
      data = DT.redwine)+ 
  theme_minimal()

summary (DT.redwine)

library(ggthemes)
# GGthemes : 
