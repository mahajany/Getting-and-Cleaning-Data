################################################################################
###Original Instructions
#You should create one R script called run_analysis.R that does the following. 
#    1. Merges the training and the test sets to create one data set.
#    2. Extracts only the measurements on the mean and standard deviation for each measurement. 
#    3. Uses descriptive activity names to name the activities in the data set
#    4. Appropriately labels the data set with descriptive variable names. 
#    5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
#Good luck!
#1 .Get the data in this format (Ref: https://class.coursera.org/getdata-006/forum/thread?thread_id=43 , David Hood ) 
#           |<--features.txt-->|                                             |          |
#           | X                | Y : Training ID -- from activity_labels.txt | Subject  |
#           |   _test          |                                             |          |
#           |   _train        |                                              |          |
# 2. Creat the tidy dataset from this data.
################################################################################
################################################################################
# run_analysis() - The "main()" function
###Helper functions
# readFileToDF() - The generic read.table...reads every text file
#
################################################################################
# Assumptions: 
# 1. Data is already downloaded
# 2. Relative path of data downloaded is .\UCI HAR Dataset (w.r.t script's location)
################################################################################
#run_analysis()   - The Main function           
# 1. Get refernce data / column-name - features.txt, and activity_labels.txt
# 2. Get test data - X, Y and Subject
# 3. Get train data - X, Y and Subject
# 4. Now join/merge test and train data
###Input        : 1. dirName  - location of files, default is current
###Output       : DFMeans - a data-frame of means 
###               Writes a CSV file run_analysis.Output.txt (in the current folder)
###Returns      : --
#######################################################################################
run_analysis <- function(dirName="./UCI HAR Dataset"){
#Read "Features.txt" - this will be used for heading of features - use gsub() to make these "descriptive"
DFFeatures <- readFileToDF(dirName, "features.txt")
##Descriptive name - thank you https://class.coursera.org/getdata-006/forum/thread?thread_id=132
DFFeatures[,2] <- gsub("\\()","",DFFeatures[,2])
DFFeatures[,2] <- gsub("-","_",DFFeatures[,2])
DFFeatures[,2] <- gsub("^t","Time",DFFeatures[,2])
DFFeatures[,2] <- gsub("^f","Freq",DFFeatures[,2])
colNames <- as.character(DFFeatures[,2])
append(colNames,"Activities")
append(colNames,"Subjects")
#
#Read "Activities.txt" , 
DFActivities <- readFileToDF(dirName, "activity_labels.txt")
#
###Get testing data
subDirName <- paste( dirName, "/test",  sep="", collapse=NULL)
DFXTest <- readFileToDF(subDirName, "X_test.txt")
DFYTest <- readFileToDF(subDirName, "Y_test.txt")
DFSubjectsTest <- readFileToDF(subDirName, "subject_test.txt")
DFTest <- cbind(DFXTest,DFYTest,DFSubjectsTest)
#
###Get training data
subDirName <- paste( dirName, "/train",  sep="", collapse=NULL)
DFXTrain <- readFileToDF(subDirName, "X_train.txt")
DFYTrain <- readFileToDF(subDirName, "Y_train.txt")
DFSubjectsTrain <- readFileToDF(subDirName, "subject_train.txt")
DFTrain <- cbind(DFXTrain,DFYTrain,DFSubjectsTrain)
#
####Join the train-data
DFCombined <- rbind(DFTest, DFTrain)
#Set column names right
colnames(DFCombined) <-colNames
#DFMeans <-  aggregate(DFCombined[1:561], by = c(DFCombined$"Activities", DFCombined$"Subjects"), FUN=mean, na.rm=TRUE)
DFMeans <-  aggregate(DFCombined[1:561], by = c(DFCombined[562], DFCombined[563]), FUN=mean, na.rm=TRUE)
###Replace activities with actual names:
DFMeans[,1] <- factor(DFMeans[,1], label=DFActivities[,2])
colnames(DFMeans)[1] <- "Activity"
colnames(DFMeans)[2] <- "Subject"
#Finally, save the file...
##write.table(DFMeans,file="run_analysis.Output.txt",quote=FALSE,sep = ",",row.names=FALSE)
write.table(DFMeans,file="run_analysis.Output.txt",quote=FALSE,row.names=FALSE)
##return a data-frame:
DFMeans
}
################################################################################
#readFileToDF()             
###Input        : 1. dirName  - location of files, default is current
#                 2. fileName - 
###Output       : outcome - 
###Returns      : --
#######################################################################################
readFileToDF <- function(dirName=".", fileName=""){
############
if (!file.exists(dirName))
    dir.create(dirName)
#	
if (fileName == "")
    stop ("ERROR: filename not supplied, halt!")
localFileName <- paste( dirName, "/", fileName, sep="", collapse=NULL)
#
if (!file.exists(localFileName)){
    strErrMsg <- sprintf("File not found:<%s>",localFileName)
    stop (strErrMsg)
	}
#
read.table(localFileName, header=FALSE, sep="")
##return
}