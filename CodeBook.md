
# CodeBook

##Raw data 

Source for raw data is: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

After unzipping downloaded zip file the data directory sturcture should reside as a sub-folder named 
**/UCI HAR Dataset/** inside the project directory. If located elsewhere you will need to edit data path 
variable as noted in ReadMe

The file **/UCI HAR Dataset/README.txt** included in zip file has complete description of raw dataset.

## Final dataset
Output file is **summary_average_results.txt** which contains the mean value of 66 selected features extracted from
the raw dataset. The mean is calculated over the entire dataset (test+train) on values identified as being mean() 
or std(). Variable names concatentated as follows:

time|freq.feature_names.Mean|StdDEv.[X/Y/Z]

The complete list of summarized features is:
"time.BodyAcc.Mean.X"  
"time.BodyAcc.Mean.Y"  
"time.BodyAcc.Mean.Z"  
"time.BodyAcc.StdDev.X"  
"time.BodyAcc.StdDev.Y"  
"time.BodyAcc.StdDev.Z"  
"time.GravityAcc.Mean.X"  
"time.GravityAcc.Mean.Y"  
"time.GravityAcc.Mean.Z"  
"time.GravityAcc.StdDev.X"  
"time.GravityAcc.StdDev.Y"  
"time.GravityAcc.StdDev.Z"  
"time.BodyAccJerk.Mean.X"  
"time.BodyAccJerk.Mean.Y"  
"time.BodyAccJerk.Mean.Z"  
"time.BodyAccJerk.StdDev.X"  
"time.BodyAccJerk.StdDev.Y"  
"time.BodyAccJerk.StdDev.Z"  
"time.BodyGyro.Mean.X"  
"time.BodyGyro.Mean.Y"  
"time.BodyGyro.Mean.Z"  
"time.BodyGyro.StdDev.X"  
"time.BodyGyro.StdDev.Y"  
"time.BodyGyro.StdDev.Z"  
"time.BodyGyroJerk.Mean.X"  
"time.BodyGyroJerk.Mean.Y"  
"time.BodyGyroJerk.Mean.Z"  
"time.BodyGyroJerk.StdDev.X"  
"time.BodyGyroJerk.StdDev.Y"  
"time.BodyGyroJerk.StdDev.Z"  
"time.BodyAccMagnitude.Mean"  
"time.BodyAccMagnitude.StdDev"  
"time.GravityAccMagnitude.Mean"  
"time.GravityAccMagnitude.StdDev"  
"time.BodyAccJerkMag.Mean"  
"time.BodyAccJerkMag.StdDev"  
"time.BodyGyroMag.Mean"  
"time.BodyGyroMag.StdDev"  
"time.BodyGyroJerkMag.Mean"  
"time.BodyGyroJerkMag.StdDev"  
"freq.BodyAcc.Mean.X"  
"freq.BodyAcc.Mean.Y"  
"freq.BodyAcc.Mean.Z"  
"freq.BodyAcc.StdDev.X"  
"freq.BodyAcc.StdDev.Y"  
"freq.BodyAcc.StdDev.Z"  
"freq.BodyAccJerk.Mean.X"  
"freq.BodyAccJerk.Mean.Y"  
"freq.BodyAccJerk.Mean.Z"  
"freq.BodyAccJerk.StdDev.X"  
"freq.BodyAccJerk.StdDev.Y"  
"freq.BodyAccJerk.StdDev.Z"  
"freq.BodyGyro.Mean.X"  
"freq.BodyGyro.Mean.Y"  
"freq.BodyGyro.Mean.Z"  
"freq.BodyGyro.StdDev.X"  
"freq.BodyGyro.StdDev.Y"  
"freq.BodyGyro.StdDev.Z"  
"freq.BodyAccMagnitude.Mean"  
"freq.BodyAccMagnitude.StdDev"  
"freq.BodyBodyAccJerkMag.Mean"  
"freq.BodyBodyAccJerkMag.StdDev"  
"freq.BodyBodyGyroMag.Mean"  
"freq.BodyBodyGyroMag.StdDev"  
"freq.BodyBodyGyroJerkMag.Mean"  
"freq.BodyBodyGyroJerkMag.StdDev"  
