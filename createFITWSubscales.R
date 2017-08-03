## a call to this function would look like this:
## test <- createFITWSubscales("Studentsurvey2017-07-24.csv")


createFITWSubscales <- function(filepath) {
  
  ## load necessary libraries
  library(dtplyr)
  library(dplyr)
  library(tidyr)
  
  ## Set working directory
  ##setwd("~/Office/DLC Database/DataFiles/FITW/SurveySubscales")
  
  ## read in the file passed to the function
  if(!file.exists(filepath)){
    stop(sprintf("Filepath %s does not exist",filepath))}
  
  currentFile <- read.csv(file=filepath, header=TRUE, sep=",")
  
  ## create a column for each column to identify whether it is null
  newcurrentFile <- mutate(currentFile, Leq1Null=is.na(Leq1))
  newcurrentFile$Leq1Null <- sapply(newcurrentFile$Leq1Null, as.integer)
  
  newcurrentFile <- mutate(newcurrentFile, Leq2Null=is.na(Leq2))
  newcurrentFile$Leq2Null <- sapply(newcurrentFile$Leq2Null, as.integer)
  
  newcurrentFile <- mutate(newcurrentFile, Leq3Null=is.na(Leq3))
  newcurrentFile$Leq3Null <- sapply(newcurrentFile$Leq3Null, as.integer)
  
  newcurrentFile <- mutate(newcurrentFile, Leq4Null=is.na(Leq4))
  newcurrentFile$Leq4Null <- sapply(newcurrentFile$Leq4Null, as.integer)
  
  newcurrentFile <- mutate(newcurrentFile, Leq5Null=is.na(Leq5))
  newcurrentFile$Leq5Null <- sapply(newcurrentFile$Leq5Null, as.integer)
  
  newcurrentFile <- mutate(newcurrentFile, Leq6Null=is.na(Leq6))
  newcurrentFile$Leq6Null <- sapply(newcurrentFile$Leq6Null, as.integer)
  
  newcurrentFile <- mutate(newcurrentFile, Mq1Null=is.na(Mq1))
  newcurrentFile$Mq1Null <- sapply(newcurrentFile$Mq1Null, as.integer)
  
  newcurrentFile <- mutate(newcurrentFile, Mq2Null=is.na(Mq2))
  newcurrentFile$Mq2Null <- sapply(newcurrentFile$Mq2Null, as.integer)
  
  newcurrentFile <- mutate(newcurrentFile, Mq3Null=is.na(Mq3))
  newcurrentFile$Mq3Null <- sapply(newcurrentFile$Mq3Null, as.integer)
  
  newcurrentFile <- mutate(newcurrentFile, Mq4Null=is.na(Mq4))
  newcurrentFile$Mq4Null <- sapply(newcurrentFile$Mq4Null, as.integer)
  
  newcurrentFile <- mutate(newcurrentFile, Mq5Null=is.na(Mq5))
  newcurrentFile$Mq5Null <- sapply(newcurrentFile$Mq5Null, as.integer)
  
  newcurrentFile <- mutate(newcurrentFile, Mq6Null=is.na(Mq6))
  newcurrentFile$Mq6Null <- sapply(newcurrentFile$Mq6Null, as.integer)
  
  newcurrentFile <- mutate(newcurrentFile, Mq7Null=is.na(Mq7))
  newcurrentFile$Mq7Null <- sapply(newcurrentFile$Mq7Null, as.integer)
  
  newcurrentFile <- mutate(newcurrentFile, Mq8Null=is.na(Mq8))
  newcurrentFile$Mq8Null <- sapply(newcurrentFile$Mq8Null, as.integer)
  
  newcurrentFile <- mutate(newcurrentFile, Mq9Null=is.na(Mq9))
  newcurrentFile$Mq9Null <- sapply(newcurrentFile$Mq9Null, as.integer)
  
  newcurrentFile <- mutate(newcurrentFile, Mq10Null=is.na(Mq10))
  newcurrentFile$Mq10Null <- sapply(newcurrentFile$Mq10Null, as.integer)
  
  newcurrentFile <- mutate(newcurrentFile, Mq11Null=is.na(Mq11))
  newcurrentFile$Mq11Null <- sapply(newcurrentFile$Mq11Null, as.integer)
  
  newcurrentFile <- mutate(newcurrentFile, Mq12Null=is.na(Mq12))
  newcurrentFile$Mq12Null <- sapply(newcurrentFile$Mq12Null, as.integer)
  
  newcurrentFile <- mutate(newcurrentFile, Mq13Null=is.na(Mq13))
  newcurrentFile$Mq13Null <- sapply(newcurrentFile$Mq13Null, as.integer)
  
  newcurrentFile <- mutate(newcurrentFile, Mq14Null=is.na(Mq14))
  newcurrentFile$Mq14Null <- sapply(newcurrentFile$Mq14Null, as.integer)
  
  newcurrentFile <- mutate(newcurrentFile, Mq15Null=is.na(Mq15))
  newcurrentFile$Mq15Null <- sapply(newcurrentFile$Mq15Null, as.integer)
  
  newcurrentFile <- mutate(newcurrentFile, Mq16Null=is.na(Mq16))
  newcurrentFile$Mq16Null <- sapply(newcurrentFile$Mq16Null, as.integer)
  
  newcurrentFile <- mutate(newcurrentFile, Mq17Null=is.na(Mq17))
  newcurrentFile$Mq17Null <- sapply(newcurrentFile$Mq17Null, as.integer)
  
  newcurrentFile <- mutate(newcurrentFile, Mq18Null=is.na(Mq18))
  newcurrentFile$Mq18Null <- sapply(newcurrentFile$Mq18Null, as.integer)
  
  newcurrentFile <- mutate(newcurrentFile, Oeq1Null=is.na(Oeq1))
  newcurrentFile$Oeq1Null <- sapply(newcurrentFile$Oeq1Null, as.integer)
  
  newcurrentFile <- mutate(newcurrentFile, Oeq2Null=is.na(Oeq2))
  newcurrentFile$Oeq2Null <- sapply(newcurrentFile$Oeq2Null, as.integer)
  
  newcurrentFile <- mutate(newcurrentFile, Oeq3Null=is.na(Oeq3))
  newcurrentFile$Oeq3Null <- sapply(newcurrentFile$Oeq3Null, as.integer)
  
  newcurrentFile <- mutate(newcurrentFile, Oeq4Null=is.na(Oeq4))
  newcurrentFile$Oeq4Null <- sapply(newcurrentFile$Oeq4Null, as.integer)
  
  newcurrentFile <- mutate(newcurrentFile, Oeq5Null=is.na(Oeq5))
  newcurrentFile$Oeq5Null <- sapply(newcurrentFile$Oeq5Null, as.integer)
  
  newcurrentFile <- mutate(newcurrentFile, Oeq6Null=is.na(Oeq6))
  newcurrentFile$Oeq6Null <- sapply(newcurrentFile$Oeq6Null, as.integer)
  
  newcurrentFile <- mutate(newcurrentFile, Oeq7Null=is.na(Oeq7))
  newcurrentFile$Oeq7Null <- sapply(newcurrentFile$Oeq7Null, as.integer)
  
  newcurrentFile <- mutate(newcurrentFile, Oeq8Null=is.na(Oeq8))
  newcurrentFile$Oeq8Null <- sapply(newcurrentFile$Oeq8Null, as.integer)
  
  newcurrentFile <- mutate(newcurrentFile, Oeq9Null=is.na(Oeq9))
  newcurrentFile$Oeq9Null <- sapply(newcurrentFile$Oeq9Null, as.integer)
  
  newcurrentFile <- mutate(newcurrentFile, Oeq10Null=is.na(Oeq10))
  newcurrentFile$Oeq10Null <- sapply(newcurrentFile$Oeq10Null, as.integer)
  
  newcurrentFile <- mutate(newcurrentFile, Oeq11Null=is.na(Oeq11))
  newcurrentFile$Oeq11Null <- sapply(newcurrentFile$Oeq11Null, as.integer)
  
  newcurrentFile <- mutate(newcurrentFile, Oeq12Null=is.na(Oeq12))
  newcurrentFile$Oeq12Null <- sapply(newcurrentFile$Oeq12Null, as.integer)
  
  newcurrentFile <- mutate(newcurrentFile, Oeq13Null=is.na(Oeq13))
  newcurrentFile$Oeq13Null <- sapply(newcurrentFile$Oeq13Null, as.integer)
  
  newcurrentFile <- mutate(newcurrentFile, Oeq14Null=is.na(Oeq14))
  newcurrentFile$Oeq14Null <- sapply(newcurrentFile$Oeq14Null, as.integer)
  
  newcurrentFile <- mutate(newcurrentFile, Oeq15Null=is.na(Oeq15))
  newcurrentFile$Oeq15Null <- sapply(newcurrentFile$Oeq15Null, as.integer)
  
  newcurrentFile <- mutate(newcurrentFile, Oeq16Null=is.na(Oeq16))
  newcurrentFile$Oeq16Null <- sapply(newcurrentFile$Oeq16Null, as.integer)
  
  newcurrentFile <- mutate(newcurrentFile, Oeq17Null=is.na(Oeq17))
  newcurrentFile$Oeq17Null <- sapply(newcurrentFile$Oeq17Null, as.integer)
  
  newcurrentFile <- mutate(newcurrentFile, Oeq18Null=is.na(Oeq18))
  newcurrentFile$Oeq18Null <- sapply(newcurrentFile$Oeq18Null, as.integer)
  
  newcurrentFile <- mutate(newcurrentFile, Oeq19Null=is.na(Oeq19))
  newcurrentFile$Oeq19Null <- sapply(newcurrentFile$Oeq19Null, as.integer)
  
  newcurrentFile <- mutate(newcurrentFile, Oeq20Null=is.na(Oeq20))
  newcurrentFile$Oeq20Null <- sapply(newcurrentFile$Oeq20Null, as.integer)
  
  newcurrentFile <- mutate(newcurrentFile, Oeq21Null=is.na(Oeq21))
  newcurrentFile$Oeq21Null <- sapply(newcurrentFile$Oeq21Null, as.integer)
  
  newcurrentFile <- mutate(newcurrentFile, Rleq1Null=is.na(Rleq1))
  newcurrentFile$Rleq1Null <- sapply(newcurrentFile$Rleq1Null, as.integer)
  
  newcurrentFile <- mutate(newcurrentFile, Rleq2Null=is.na(Rleq2))
  newcurrentFile$Rleq2Null <- sapply(newcurrentFile$Rleq2Null, as.integer)
  
  newcurrentFile <- mutate(newcurrentFile, Rleq3Null=is.na(Rleq3))
  newcurrentFile$Rleq3Null <- sapply(newcurrentFile$Rleq3Null, as.integer)
  
  newcurrentFile <- mutate(newcurrentFile, Rleq4Null=is.na(Rleq4))
  newcurrentFile$Rleq4Null <- sapply(newcurrentFile$Rleq4Null, as.integer)
  
  newcurrentFile <- mutate(newcurrentFile, Rleq5Null=is.na(Rleq5))
  newcurrentFile$Rleq5Null <- sapply(newcurrentFile$Rleq5Null, as.integer)
  
  newcurrentFile <- mutate(newcurrentFile, Rleq6Null=is.na(Rleq6))
  newcurrentFile$Rleq6Null <- sapply(newcurrentFile$Rleq6Null, as.integer)
  
  newcurrentFile <- mutate(newcurrentFile, Rleq7Null=is.na(Rleq7))
  newcurrentFile$Rleq7Null <- sapply(newcurrentFile$Rleq7Null, as.integer)
  
  newcurrentFile <- mutate(newcurrentFile, Rleq8Null=is.na(Rleq8))
  newcurrentFile$Rleq8Null <- sapply(newcurrentFile$Rleq8Null, as.integer)
  
  newcurrentFile <- mutate(newcurrentFile, Oeq3RecodeNull=is.na(Oeq3Recode))
  newcurrentFile$Oeq3RecodeNull <- sapply(newcurrentFile$Oeq3RecodeNull, as.integer)
  
  newcurrentFile <- mutate(newcurrentFile, Oeq5RecodeNull=is.na(Oeq5Recode))
  newcurrentFile$Oeq5RecodeNull <- sapply(newcurrentFile$Oeq5RecodeNull, as.integer)
  
  newcurrentFile <- mutate(newcurrentFile, Oeq7RecodeNull=is.na(Oeq7Recode))
  newcurrentFile$Oeq7RecodeNull <- sapply(newcurrentFile$Oeq7RecodeNull, as.integer)
  
  newcurrentFile <- mutate(newcurrentFile, Oeq11RecodeNull=is.na(Oeq11Recode))
  newcurrentFile$Oeq11RecodeNull <- sapply(newcurrentFile$Oeq11RecodeNull, as.integer)
  
  newcurrentFile <- mutate(newcurrentFile, Oeq14RecodeNull=is.na(Oeq14Recode))
  newcurrentFile$Oeq14RecodeNull <- sapply(newcurrentFile$Oeq14RecodeNull, as.integer)
  
  newcurrentFile <- mutate(newcurrentFile, Oeq16RecodeNull=is.na(Oeq16Recode))
  newcurrentFile$Oeq16RecodeNull <- sapply(newcurrentFile$Oeq16RecodeNull, as.integer)
  
  newcurrentFile <- mutate(newcurrentFile, Oeq18RecodeNull=is.na(Oeq18Recode))
  newcurrentFile$Oeq18RecodeNull <- sapply(newcurrentFile$Oeq18RecodeNull, as.integer)
  
  newcurrentFile <- mutate(newcurrentFile, Oeq19RecodeNull=is.na(Oeq19Recode))
  newcurrentFile$Oeq19RecodeNull <- sapply(newcurrentFile$Oeq19RecodeNull, as.integer)
  
  newcurrentFile <- mutate(newcurrentFile, Oeq20RecodeNull=is.na(Oeq20Recode))
  newcurrentFile$Oeq20RecodeNull <- sapply(newcurrentFile$Oeq20RecodeNull, as.integer)
  
  ## LearnClimateAvg Computation
  newcurrentFile <- mutate(newcurrentFile, learnClimateNull = Leq1Null + Leq2Null + 
                             Leq3Null + Leq4Null + Leq5Null + Leq6Null)
  
  newcurrentFile$learnClimateTotal <- rowSums(newcurrentFile[,c("Leq1", "Leq2", "Leq3", 
                            "Leq4", "Leq5", "Leq6")], na.rm = T)
  
  newcurrentFile <- mutate(newcurrentFile, learnClimateAvg = ifelse(learnClimateNull < 3, 
                                          learnClimateTotal/(6-learnClimateNull), NA))
  
  ## IntrinsicAvg Computation
  newcurrentFile <- mutate(newcurrentFile, intrinsicNull = Mq8Null + Mq12Null + Mq17Null)
  
  newcurrentFile$intrinsicTotal <- rowSums(newcurrentFile[,c("Mq8","Mq12","Mq17")], na.rm=T)
  
  newcurrentFile <- mutate(newcurrentFile, intrinsicAvg = ifelse(intrinsicNull < 2, 
                                           intrinsicTotal/(3-intrinsicNull), NA))
  
  ## IntegrationAvg Computation
  newcurrentFile <- mutate(newcurrentFile, integrationNull = Mq3Null + Mq5Null + Mq13Null)
  
  newcurrentFile$integrationTotal <- rowSums(newcurrentFile[,c("Mq3", "Mq5", "Mq13")], na.rm=T)
  
  newcurrentFile <- mutate(newcurrentFile, integrationAvg = ifelse(integrationNull < 2,
                                            integrationTotal/(3-integrationNull), NA))
  
  ## IdentificationAvg Computation  
  newcurrentFile <- mutate(newcurrentFile, identificationNull = Mq1Null + Mq9Null + Mq11Null)

  newcurrentFile$identificationTotal <- rowSums(newcurrentFile[,c("Mq1", "Mq9", "Mq11")], na.rm=T)
  
  newcurrentFile <- mutate(newcurrentFile, identificationAvg = ifelse(identificationNull < 2,
                                            identificationTotal/(3-identificationNull), NA))
  
  ## IntrojectionAvg Computation
  newcurrentFile <- mutate(newcurrentFile, introjectionNull = Mq2Null + Mq10Null + Mq16Null)

  newcurrentFile$introjectionTotal <- rowSums(newcurrentFile[,c("Mq2", "Mq10", "Mq16")], na.rm=T)
  
  newcurrentFile <- mutate(newcurrentFile, introjectionAvg = ifelse(introjectionNull < 2,
                                            introjectionTotal/(3-introjectionNull), NA))
  
  ## ExtrinsicAvg Computation
  newcurrentFile <- mutate(newcurrentFile, extrinsicNull = Mq6Null + Mq14Null + Mq18Null)
  
  newcurrentFile$extrinsicTotal <- rowSums(newcurrentFile[,c("Mq6", "Mq14", "Mq18")], na.rm=T)
  
  newcurrentFile <- mutate(newcurrentFile, extrinsicAvg = ifelse(extrinsicNull < 2,
                                            extrinsicTotal/(3-extrinsicNull), NA))
  
  ## AmotivationAvg Computation
  newcurrentFile <- mutate(newcurrentFile, amotivationNull = Mq4Null + Mq7Null + Mq15Null)
  
  newcurrentFile$amotivationTotal <- rowSums(newcurrentFile[,c("Mq4", "Mq7", "Mq15")], na.rm=T)
  
  newcurrentFile <- mutate(newcurrentFile, amotivationAvg = ifelse(amotivationNull < 2,
                                            amotivationTotal/(3-amotivationNull), NA))
  
  ## AutonomyAvg Computation  
  newcurrentFile <- mutate(newcurrentFile, autonomyNull = Oeq1Null + Oeq5RecodeNull + Oeq8Null + 
                             Oeq11RecodeNull + Oeq13Null + Oeq17Null + Oeq20RecodeNull)
  
  newcurrentFile$autonomyTotal <- rowSums(newcurrentFile[,c("Oeq1", "Oeq5Recode", "Oeq8", 
                              "Oeq11Recode", "Oeq13", "Oeq17", "Oeq20Recode")], na.rm=T)
  
  newcurrentFile <- mutate(newcurrentFile, autonomyAvg = ifelse(autonomyNull < 4,
                                autonomyTotal/(7-autonomyNull), NA))
  
  ## CompetenceAvg Computation
  newcurrentFile <- mutate(newcurrentFile, competenceNull = Oeq3RecodeNull + Oeq4Null + 
                             Oeq10Null + Oeq12Null + Oeq14RecodeNull + Oeq19RecodeNull)
  
  newcurrentFile$competenceTotal <- rowSums(newcurrentFile[,c("Oeq3Recode", "Oeq4", "Oeq10",
                              "Oeq12", "Oeq14Recode", "Oeq19Recode")], na.rm=T)
  
  newcurrentFile <- mutate(newcurrentFile, competenceAvg = ifelse(competenceNull < 3,
                                competenceTotal/(6-competenceNull), NA))
  
  ## RelatednessAvg Computation
  newcurrentFile <- mutate(newcurrentFile, relatednessNull = Oeq2Null + Oeq6Null + 
                             Oeq7RecodeNull + Oeq9Null + Oeq15Null + Oeq16RecodeNull + 
                             Oeq18RecodeNull + Oeq21Null)
  
  newcurrentFile$relatednessTotal <- rowSums(newcurrentFile[,c("Oeq2", "Oeq6", "Oeq7Recode",
                            "Oeq9", "Oeq15", "Oeq16Recode", "Oeq18Recode", "Oeq21")], na.rm=T)
  
  newcurrentFile <- mutate(newcurrentFile, relatednessAvg = ifelse(relatednessNull < 4,
                              relatednessTotal/(8-relatednessNull), NA))  
  
  ## PktsAvg Computation
  newcurrentFile <- mutate(newcurrentFile, pktsNull = Rleq1Null + Rleq2Null + Rleq3Null + 
                             Rleq4Null + Rleq5Null + Rleq6Null + Rleq7Null + Rleq8Null)
  
  newcurrentFile$pktsTotal <- rowSums(newcurrentFile[,c("Rleq1", "Rleq2", "Rleq3", "Rleq4", 
                              "Rleq5", "Rleq6", "Rleq7", "Rleq8")], na.rm=T)
  
  newcurrentFile <- mutate(newcurrentFile, pktsAvg = ifelse(pktsNull < 4,
                              pktsTotal/(8-pktsNull), NA))
  
  newcurrentFile <- mutate(newcurrentFile, SDI = ifelse( is.na(intrinsicAvg) | 
                              is.na(integrationAvg) | is.na(identificationAvg) |
                              is.na(introjectionAvg) | is.na(extrinsicAvg) |
                              is.na(amotivationAvg), NA, (intrinsicAvg*3) + 
                              (integrationAvg*2) + identificationAvg -
                              introjectionAvg - (extrinsicAvg*2) - 
                              (amotivationAvg*3) ))
  
  newcurrentFile <- mutate(newcurrentFile, bpnAvg = ifelse( is.na(autonomyAvg) | 
                              is.na(competenceAvg) | is.na(relatednessAvg), NA,
                              (autonomyAvg + competenceAvg+ relatednessAvg)/3 ))
  
  return(newcurrentFile)
  ## write.csv(newcurrentFile, file = "StudentSurveySubScales.csv")
}