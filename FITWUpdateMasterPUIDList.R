##  This script opens the master PUID list and the PUID list for the term you want to create 
##  new unique ids, then it will create the uniqueids for the new list and add those to the master list
##  to join all of the csv files together
##  This function will write out a csv file that is a
##  combination of all of the csv files in the directory given

library(dplyr)
library(data.table)
library(tidyr)

setwd("~/Office/DLC Database/DataFiles/FITW/Spring 2016/CHE 205")
CHE205CourseRosterLong <- fread("./CHE205CourseRosterLongSpring2016.csv")
CHE205PUID <- select(CHE205CourseRosterLong, Name, PUID)

setwd("~/Office/DLC Database/DataFiles/FITW/Spring 2016/MA16010")
MA16010CourseRosterLong <- fread("./MA16010CourseRosterSpring2016Long.csv")
MA16010PUID <- select(MA16010CourseRosterLong, Name, PUID)

setwd("~/Office/DLC Database/DataFiles/FITW/Spring 2016/MA16200")
MA16200CourseRosterLong <- fread("./CourseRosterMA16200Spring2016Long.csv")
MA16200PUID <- select(MA16200CourseRosterLong, Name, PUID)

setwd("~/Office/DLC Database/DataFiles/FITW/Spring 2016/Student Survey")
StudentSurveyPre <- fread("./StudentSurveyPreSpring2016.csv")
StudentSurveyPrePUID <- select(StudentSurveyPre, Name, PUID)

StudentSurveyPost <- fread("./StudentSurveyPostSpring2016.csv")
StudentSurveyPostPUID <- select(StudentSurveyPost, Name, PUID)

MAPUIDCombine <- rbind(MA16010PUID, MA16200PUID)
CoursePUIDCombine <- rbind(MAPUIDCombine, CHE205PUID)
surveyPUIDCombine <- rbind(StudentSurveyPostPUID, StudentSurveyPrePUID)
PUIDSpring2016Combine <- rbind(CoursePUIDCombine, surveyPUIDCombine)

## clean-up uneeded data tables created so far
rm(CHE205CourseRosterLong)
rm(CHE205PUID)
rm(MA16010CourseRosterLong)
rm(MA16010PUID)
rm(MA16200CourseRosterLong)
rm(MA16200PUID)
rm(StudentSurveyPre)
rm(StudentSurveyPrePUID)
rm(StudentSurveyPost)
rm(StudentSurveyPostPUID)
rm(MAPUIDCombine)
rm(CoursePUIDCombine)
rm(surveyPUIDCombine)

## take PUIDSpring2016Combine data table and return only unique values
uniquePUIDcombine <- unique(PUIDSpring2016Combine, by = 'PUID')

## Split the name column into last and first name values
PUIDNamesCombine <- separate(uniquePUIDcombine, Name, c('LastName', 'FirstName'), sep = ", ", remove=TRUE)

## clean-up file with duplicate names and PUIDs
rm(PUIDSpring2016Combine)
rm(uniquePUIDcombine)

##  read in master PUID list for FITW project
setwd("~/Office/DLC Database/DataFiles/FITW")
puidmaster <- fread("./WWCPUIDList.csv", stringsAsFactors = FALSE)


PUIDCombo <- merge(PUIDNamesCombine, puidmaster, by.x = "PUID", by.y = "PUID", all = TRUE)
## randomNumbers(n=1, min=100000000, max=999999999, col=1 )




