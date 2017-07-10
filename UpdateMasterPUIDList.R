## This function accepts a filename and path along with the details 
## whether the name field is a full name or two separate fields
## as well as the term name
## It then reads in the file and the FITW master PUID list
## then compares the two files
## adds new unique random ids to the master file along 
## with the name and term
## if puid already exists in the master PUID list
## it adds the term name to the list
addPUID <- function(fileName, fullname, termName) {
  
  ## read in the file passed to the function
  currentFile <- fread(fileName)
  
  ## read in master PUID list for FITW project
  puidmaster <- fread("~/Office/DLC Database/DataFiles/FITW/WWCPUIDList.csv")

  
  
  
}

## load necessary libraries
library(dtplyr)
library(random)

## Set working directory
setwd("~/Office/DLC Database/DataFiles/FITW")