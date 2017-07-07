##  This script opens the master PUID list and the PUID list for the term you want to create 
##  new unique ids, then it will create the uniqueids for the new list and add those to the master list
##  to join all of the csv files together
##  This function will write out a csv file that is a
##  combination of all of the csv files in the directory given

## load necessary libraries
library(dplyr)
library(data.table)
library(random)

rm(list=ls())

setwd("~/Office/DLC Database/DataFiles/FITW")

##  read in master PUID list for FITW project
puidmaster <- fread("./WWCPUIDList.csv")

##  read in FITW PUID list for term you want to create unique ids
newpuidlist <- fread("./FITWPUIDSpring2016.csv")

## randomNumbers(n=1, min=100000000, max=999999999, col=1 )