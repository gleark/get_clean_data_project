
# CodeBook

##Raw data 

Source for raw data is: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

After unzipping downloaded file the data directory sturcture should look something like this:

README.txt included in zip file has complete description of raw dataset.

A summary view fo the raw dataset file structure:
/UCI HAR Dataset
|--activity_labels.txt : Links the class labels with their activity name.
|--features.txt        : List of all features.
|--features_info.txt   : Shows information about the variables used on the feature vector.
|--README.txt          : detailed description of raw dataset 
|--/test               : 30% of subject data was randomly partitioned into test data set
|--/train              : 70% of subject data was randomly partitioned into training data set

-- test/train :test/train sub-directory structures are equivelent
   |--subject_test/train.txt    : Each row identifies the subject who performed the activity
                                       for each window sample. Range is from 1 to 30. 
   |--X_test/train.txt          : test data - each row contains 561-feature vector with time 
                                       and frequency domain variables
   |--y_test/train.txt          : activity ID for each row 
   |--/Inertial Siginals        : Sub-directory with raw signal data
       |--total_acc_x\y\z_test\train.txt  :The acceleration signal from the smartphone accelerometer
                                          X,Y,Z axis in standard gravity units 'g'. 
                                          Every row shows a 128 element vector.
       |--body_gyro_x\y\z_test\train.txt  :The angular velocity vector measured by the gyroscope 
                                              for each window sample. The units are radians/second.
       |--body_acc_x\y\z_test\train.txt   : The body acceleration signal obtained by subtracting 
                                              the gravity from the total acceleration. 

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
