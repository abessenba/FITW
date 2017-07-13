## This function accepts three variables:
## 1. filepath: a filename and path 
## 2. fullname: Whether the name field is a full name or two separate fields 
##    (1 for full name and 2 for two separate fields) 
## 3. ternName: the term name
## It then reads in the file and the FITW master PUID list
## then compares the two files
## adds new unique random ids to the master file along 
## with the name and term
## if puid already exists in the master PUID list
## it adds the term name to the list

addPUID <- function(filepath, fullname, termName) {
  
  ## load necessary libraries
  library(dtplyr)
  library(dplyr)
  library(random)
  library(tidyr)
  
  ## Set working directory
  setwd("~/Office/DLC Database/DataFiles/FITW")
  
  ## read in the file passed to the function
  if(!file.exists(filepath)){
    stop(sprintf("Filepath %s does not exist",filepath))}
  currentFile <- read.csv(file=filepath, header=TRUE, sep=",")
  
  ## read in master PUID list for FITW project
  puidmaster <- read.csv(file="~/Office/DLC Database/DataFiles/FITW/WWCPUIDList.csv", header=TRUE, sep=",")
  
  
  ## if the currentFile has the name stored as one filed split them into two
  if(fullname==1){
    checkDataFrame <- select(currentFile, PUID, Name)

    ## Split the name column into last and first name values
    checkDataFrame <- separate(checkDataFrame, Name, c('LastName', 'FirstName'), sep = ", ", remove=TRUE)
  }else 
    checkDataFrame <- select(currentFile, PUID, LastName, FirstName)
  
  
  ## get the current file length to loop through rows
  currentFileLen <- length(checkDataFrame$PUID)
    
  ## loop through the currentFile to check each PUID and see if it's already in the puidmaster
  for(i in seq_len(currentFileLen)){
      
    ## grab the PUID to check
    PUIDCheck <- checkDataFrame[i,1]
      
    ## check next PUID from current file to see if it's in the puidmaster
    foundPUID <- select(puidmaster, PUID) %>% filter(PUID==PUIDCheck)
      
    ## if we didn't find a PUID match in the master file we need to add a new line to it
    if (is.na(foundPUID[1,1])){
  
      ## create new random participantid to use
      newParticipantId <- randomNumbers(n=1, min=100000000, max=999999999, col=1 )
      
      ## check to make sure the newParticipantId isn't alreayd in use
      puidmasterLen <- length(puidmaster$ParticipantId)
      
      ## loop until we find a unique new participantid
      repeat {
        newId <- randomNumbers(n=1, min=100000000, max=999999999, col=1 )
        
        ## check to make sure the newId is unique
        foundId <- select(puidmaster, PUID) %>% filter(PUID==newId[1,1])
        if(is.na(foundId[1,1])) {break}
      }
        
      puidmaster <- rbind(puidmaster, ParticipantId=newId, PUID=PUIDCheck, 
                            LastName=checkDataFrame[i,2], FirstName=checkDataFrame[i,3], 
                            Term.3=termName)
      print("adding New PUID")          
   }else
    
    ## add the new term name for a participant that is already in the master file  
    puidmaster$Term.3 <- termName 
    
  }
  
  
  return(puidmaster)
  
  
}



