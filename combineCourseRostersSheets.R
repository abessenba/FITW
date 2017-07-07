##  This r script combines the number of sheets (32) and columns from 
##  an excel workbook into one csv file.

## load necessary libraries
library(xlsx)
library(data.table)

rm(list=ls())
combofile <- data.frame()

## loop for each data sheet in the excel file 
for (i in 1:22) {  
  
  readfile <- read.xlsx2("./MA16010GradeRosterSpring2016.xlsx", i, colIndex = 1:15)
  combofile <- rbind(combofile, readfile)
  
} 

write.csv(combofile, file="MA16010GradeRosterLongSpring2016.csv")
