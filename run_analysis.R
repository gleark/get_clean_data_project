# Start with clean workspace
rm(list=ls())

## GLOBALS
DataDirPath   <- "./UCI HAR Dataset/"
finalOutputFileName <- "summary_average_results.txt"

## GET DATA -------------------------------------------------------------------
# read in dataset lables
activies  <- read.table(paste(DataDirPath,"activity_labels.txt",sep=""), header = FALSE)
features  <- read.table(paste(DataDirPath,"features.txt",sep=""), header = FALSE)

# read in testing datafiles
subjectTest <- read.table(paste(DataDirPath,"test/","subject_test.txt",sep=""), header = FALSE)
xTest <- read.table(paste(DataDirPath,"test/","X_test.txt",sep=""), header = FALSE)
yTest <- read.table( paste(DataDirPath,"test/","y_test.txt",sep=""), header = FALSE)

# read in training datafiles
subjectTrain <- read.table(paste(DataDirPath,"train/","subject_train.txt",sep=""), header = FALSE)
xTrain <- read.table(paste(DataDirPath,"train/","X_train.txt",sep=""), header = FALSE)
yTrain <- read.table(paste(DataDirPath,"train/","y_train.txt",sep=""), header = FALSE)


## LABEL COLUMNS --------------------------------------------------------------

# assign column names to the data imported above
colnames(activies)     <- c('activityID','activityType');

colnames(subjectTest)  <- "subjectID";
colnames(xTest)        <- features[,2]; 
colnames(yTest)        <- "activityId";

colnames(subjectTrain) <- "subjectID";
colnames(xTrain)       <- features[,2]; 
colnames(yTrain)       <- "activityId";

## MERGE  -------------------------------------------------------------------
# test + train -> complete
testData  <- cbind(subjectTest, yTest, xTest) 
trainData <- cbind(subjectTrain, yTrain, xTrain) 

# append test/train datasets together
completeData = rbind(testData,trainData)


# clean-up intermediate vars
rm(subjectTest, subjectTrain, xTest, xTrain, yTest, yTrain, testData, trainData, features)

## CLEAN-UP COLUMN LABELS   ---------------------------------------------------
# extract mean and std(standard deviation) for each feature
colNames  <- colnames(completeData)

meanColIndexs <- grep("mean\\(\\)", colNames, ignore.case=FALSE)
sdevColIndexs <- grep("std()" , colNames, ignore.case=FALSE)
keeps <- sort(union(meanColIndexs, sdevColIndexs))
completeData <- completeData[,keeps]

#clean up column labels
colNames <- colnames(completeData)

tmpNames <- colNames
# colNames <- tmpNames

colNames <- gsub(pattern = "^t", replacement = "time.", x = colNames)
colNames <- gsub(pattern = "^f", replacement = "freq.", x = colNames)
colNames <- gsub("AccMag","AccMagnitude",colNames)
colNames <- gsub("Bodyaccjerkmag","BodyAccJerkMagnitude",colNames)
colNames <- gsub(pattern = "-mean\\(\\)", replacement = ".Mean", x = colNames)
colNames <- gsub(pattern = "-std\\(\\)",  replacement = ".StdDev", x = colNames)
colNames <- gsub(pattern = "-X",  replacement = ".X", x = colNames)
colNames <- gsub(pattern = "-Y",  replacement = ".Y", x = colNames)
colNames <- gsub(pattern = "-Z",  replacement = ".Z", x = colNames)

# apply edited colNames to dataset
colnames(completeData) <- colNames

avgACtivities <- sapply(X = completeData, FUN = mean, simplify = TRUE)

## OUTPUT TIDY DATASET   -------------------------------------------------------------------
# write summary averages out to txt file
write.table(x = avgACtivities
            , file = finalOutputFileName
            , append = FALSE, row.name = FALSE)



