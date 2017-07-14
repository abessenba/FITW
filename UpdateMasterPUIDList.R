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
## a call to this function would look like this:
## test <- addPUID("~/Office/DLC Database/DataFiles/FITW/Fall 2016/MA16010/Post/Book2test.csv",1, "Fall 2016")

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
  puidmaster <- read.csv(file="~/Office/DLC Database/DataFiles/FITW/TestWWCPD.csv", header=TRUE, sep=",", stringsAsFactors = FALSE)
  puidmaster$Term.3 <- as.character(puidmaster$Term.3)
  puidmaster$Term.4 <- as.character(puidmaster$Term.4)
  
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
      masteradd <- c(newId, PUIDCheck, checkDataFrame[i,2], checkDataFrame[i,3], 
                     NA, NA, termName, NA)  
      puidmaster <- rbind(puidmaster, masteradd)
   }else
    
    ## add the new term name for a participant that is already in the master file  
     puidmaster <- puidmaster %>%
      mutate(Term.3=replace(Term.3, PUID==PUIDCheck, termName)) 
    
  }
  
  return(puidmaster)
  
}



