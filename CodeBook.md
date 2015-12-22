#CodeBook


## Data files
* ./UCI HAR Dataset/features.txt
(contains the field names and column number of the X_test.txt and X_train.txt files)
* ./UCI HAR Dataset/activity_labels.txt
(contains the activity codes and a descriptive label for the code)
* ./UCI HAR Dataset/test/X_test.txt
(contains the features for the test data set)
* ./UCI HAR Dataset/test/y_test.txt
(contains codes for the actual activities performed in the test data set)
* ./UCI HAR Dataset/test/subject_test.txt
(contains codes for the actual test subjects that performed the actual activity in the test data set)
* ./UCI HAR Dataset/train/X_train.txt
(contains the features for the training data set)
* ./UCI HAR Dataset/train/y_train.txt
(contains the code for the actual activities performed in the training data set)
* ./UCI HAR Dataset/train/subject_train.txt
(contains codes for the actual test subjects that performed the actual activity in the training data set)

## Selections
From the X_test.txt and X_train.txt files only those features with "mean" or "std" in the name are selected.

## Merging
The training and test data sets are merged. First all rows of the training data are added to the new merged set, and after that all rows of the test data are appended to the new merged set. 

This has been done for the X-data files, the y-data files and the subject-data files.

## Linking
The activity codes in the merged set of y-data is replaced by the corresponding descriptive text in the activity_labels.txt file.

The ultimate tidy file contains in the 
* first column (called "studyParticipant") the test subject codes as obtained from the merged subject-data file;
* second column (called "activity") the description of the activity performed by the "studyParticipant" and obtained from the merged y-data file; and
* the remaining columns the features selected from the merged x-data file.

## Transformations
In order to get column names that are even better understandable the following text replacements were made in the original column names.
* "Acc" replaced by "Acceleration"
* "Gyro" replaced by "AngularVelocity"
* "Mag" replaced by "Magnitude"
* "Freq" replaced by "Frequency"
* "std" replaced by "standardDeviation"
* first character "t" replaced by "time"
* first character "f" replaced by "frequency"

## Column names of the output file.
* "studyParticipant" 
* "activity" 
* "timeBodyAcceleration-mean()-X" 
* "timeBodyAcceleration-mean()-Y" 
* "timeBodyAcceleration-mean()-Z" 
* "timeGravityAcceleration-mean()-X" 
* "timeGravityAcceleration-mean()-Y" 
* "timeGravityAcceleration-mean()-Z" 
* "timeBodyAccelerationJerk-mean()-X" 
* "timeBodyAccelerationJerk-mean()-Y" 
* "timeBodyAccelerationJerk-mean()-Z" 
* "timeBodyAngularVelocity-mean()-X" 
* "timeBodyAngularVelocity-mean()-Y" 
* "timeBodyAngularVelocity-mean()-Z" 
* "timeBodyAngularVelocityJerk-mean()-X" 
* "timeBodyAngularVelocityJerk-mean()-Y" 
* "timeBodyAngularVelocityJerk-mean()-Z" 
* "timeBodyAccelerationMagnitude-mean()" 
* "timeGravityAccelerationMagnitude-mean()" 
* "timeBodyAccelerationJerkMagnitude-mean()" 
* "timeBodyAngularVelocityMagnitude-mean()" 
* "timeBodyAngularVelocityJerkMagnitude-mean()" 
* "frequencyBodyAcceleration-mean()-X" 
* "frequencyBodyAcceleration-mean()-Y" 
* "frequencyBodyAcceleration-mean()-Z" 
* "frequencyBodyAcceleration-meanFrequency()-X" 
* "frequencyBodyAcceleration-meanFrequency()-Y" 
* "frequencyBodyAcceleration-meanFrequency()-Z" 
* "frequencyBodyAccelerationJerk-mean()-X" 
* "frequencyBodyAccelerationJerk-mean()-Y" 
* "frequencyBodyAccelerationJerk-mean()-Z" 
* "frequencyBodyAccelerationJerk-meanFrequency()-X" 
* "frequencyBodyAccelerationJerk-meanFrequency()-Y" 
* "frequencyBodyAccelerationJerk-meanFrequency()-Z" 
* "frequencyBodyAngularVelocity-mean()-X" 
* "frequencyBodyAngularVelocity-mean()-Y" 
* "frequencyBodyAngularVelocity-mean()-Z" 
* "frequencyBodyAngularVelocity-meanFrequency()-X" 
* "frequencyBodyAngularVelocity-meanFrequency()-Y" 
* "frequencyBodyAngularVelocity-meanFrequency()-Z" 
* "frequencyBodyAccelerationMagnitude-mean()" 
* "frequencyBodyAccelerationMagnitude-meanFrequency()" 
* "frequencyBodyBodyAccelerationJerkMagnitude-mean()" 
* "frequencyBodyBodyAccelerationJerkMagnitude-meanFrequency()" 
* "frequencyBodyBodyAngularVelocityMagnitude-mean()" 
* "frequencyBodyBodyAngularVelocityMagnitude-meanFrequency()" 
* "frequencyBodyBodyAngularVelocityJerkMagnitude-mean()" 
* "frequencyBodyBodyAngularVelocityJerkMagnitude-meanFrequency()" 
* "timeBodyAcceleration-standardDeviation()-X" 
* "timeBodyAcceleration-standardDeviation()-Y" 
* "timeBodyAcceleration-standardDeviation()-Z" 
* "timeGravityAcceleration-standardDeviation()-X" 
* "timeGravityAcceleration-standardDeviation()-Y" 
* "timeGravityAcceleration-standardDeviation()-Z" 
* "timeBodyAccelerationJerk-standardDeviation()-X" 
* "timeBodyAccelerationJerk-standardDeviation()-Y" 
* "timeBodyAccelerationJerk-standardDeviation()-Z" 
* "timeBodyAngularVelocity-standardDeviation()-X" 
* "timeBodyAngularVelocity-standardDeviation()-Y" 
* "timeBodyAngularVelocity-standardDeviation()-Z" 
* "timeBodyAngularVelocityJerk-standardDeviation()-X" 
* "timeBodyAngularVelocityJerk-standardDeviation()-Y" 
* "timeBodyAngularVelocityJerk-standardDeviation()-Z" 
* "timeBodyAccelerationMagnitude-standardDeviation()" 
* "timeGravityAccelerationMagnitude-standardDeviation()" 
* "timeBodyAccelerationJerkMagnitude-standardDeviation()" 
* "timeBodyAngularVelocityMagnitude-standardDeviation()" 
* "timeBodyAngularVelocityJerkMagnitude-standardDeviation()" 
* "frequencyBodyAcceleration-standardDeviation()-X" 
* "frequencyBodyAcceleration-standardDeviation()-Y" 
* "frequencyBodyAcceleration-standardDeviation()-Z" 
* "frequencyBodyAccelerationJerk-standardDeviation()-X" 
* "frequencyBodyAccelerationJerk-standardDeviation()-Y" 
* "frequencyBodyAccelerationJerk-standardDeviation()-Z" 
* "frequencyBodyAngularVelocity-standardDeviation()-X" 
* "frequencyBodyAngularVelocity-standardDeviation()-Y" 
* "frequencyBodyAngularVelocity-standardDeviation()-Z" 
* "frequencyBodyAccelerationMagnitude-standardDeviation()" 
* "frequencyBodyBodyAccelerationJerkMagnitude-standardDeviation()" 
* "frequencyBodyBodyAngularVelocityMagnitude-standardDeviation()" 
* "frequencyBodyBodyAngularVelocityJerkMagnitude-standardDeviation()"
