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
* "studyParticipant" --- Code for the study participant that performed the activity mentioned in this row.
* "activity" --- Brief description of the activity performed by the study participant
* "timeBodyAcceleration-mean()-X" --- Mean (time domain) body acceleration in the X-direction
* "timeBodyAcceleration-mean()-Y" --- Mean (time domain) body acceleration in the Y-direction
* "timeBodyAcceleration-mean()-Z" --- Mean (time domain) body acceleration in the Z-direction
* "timeGravityAcceleration-mean()-X" --- Mean (time domain) gravity acceleration in the X-direction
* "timeGravityAcceleration-mean()-Y" --- Mean (time domain) gravity acceleration in the Y-direction
* "timeGravityAcceleration-mean()-Z" --- Mean (time domain) gravity acceleration in the Z-direction
* "timeBodyAccelerationJerk-mean()-X" --- Mean (time domain) body acceleration in the X-direction due to jerk movements
* "timeBodyAccelerationJerk-mean()-Y" --- Mean (time domain) body acceleration in the Y-direction due to jerk movements
* "timeBodyAccelerationJerk-mean()-Z" --- Mean (time domain) body acceleration in the Z-direction due to jerk movements
* "timeBodyAngularVelocity-mean()-X" --- Mean (time domain) body angular velocity in the X-direction
* "timeBodyAngularVelocity-mean()-Y" --- Mean (time domain) body angular velocity in the Y-direction
* "timeBodyAngularVelocity-mean()-Z" --- Mean (time domain) body angular velocity in the Z-direction
* "timeBodyAngularVelocityJerk-mean()-X" --- Mean (time domain) body angular velocity in the X-direction due to jerk movements
* "timeBodyAngularVelocityJerk-mean()-Y" --- Mean (time domain) body angular velocity in the Y-direction due to jerk movements
* "timeBodyAngularVelocityJerk-mean()-Z" --- Mean (time domain) body angular velocity in the Z-direction due to jerk movements
* "timeBodyAccelerationMagnitude-mean()" --- Mean (time domain) magnitude body acceleration (Euclidean norm)
* "timeGravityAccelerationMagnitude-mean()" --- Mean (time domain) magnitude gravity acceleration (Euclidean norm)
* "timeBodyAccelerationJerkMagnitude-mean()" --- Mean (time domain) magnitude body acceleration (Euclidean norm) due to jerks
* "timeBodyAngularVelocityMagnitude-mean()" --- Mean (time domain) magnitude body angular velocity (Euclidean norm)
* "timeBodyAngularVelocityJerkMagnitude-mean()" --- Mean (time domain) magnitude body angular velocity (Euclidean norm) due to jerks
* "frequencyBodyAcceleration-mean()-X" --- Mean (frequency domain) body acceleration in the X-direction
* "frequencyBodyAcceleration-mean()-Y" --- Mean (frequency domain) body acceleration in the Y-direction
* "frequencyBodyAcceleration-mean()-Z" --- Mean (frequency domain) body acceleration in the Z-direction
* "frequencyBodyAcceleration-meanFrequency()-X" --- Weighted average of frequency components (frequency domain) body acceleration in the X-direction
* "frequencyBodyAcceleration-meanFrequency()-Y" --- Weighted average of frequency components (frequency domain) body acceleration in the Y-direction
* "frequencyBodyAcceleration-meanFrequency()-Z" --- Weighted average of frequency components (frequency domain) body acceleration in the Z-direction
* "frequencyBodyAccelerationJerk-mean()-X" --- Mean (frequency domain) body acceleration in the X-direction due to jerks
* "frequencyBodyAccelerationJerk-mean()-Y" --- Mean (frequency domain) body acceleration in the Y-direction due to jerks
* "frequencyBodyAccelerationJerk-mean()-Z" --- Mean (frequency domain) body acceleration in the Z-direction due to jerks
* "frequencyBodyAccelerationJerk-meanFrequency()-X" --- Weighted average of frequency components (frequency domain) body acceleration in the X-direction due to jerk movements
* "frequencyBodyAccelerationJerk-meanFrequency()-Y" --- Weighted average of frequency components (frequency domain) body acceleration in the Y-direction due to jerk movements
* "frequencyBodyAccelerationJerk-meanFrequency()-Z" --- Weighted average of frequency components (frequency domain) body acceleration in the Z-direction due to jerk movements
* "frequencyBodyAngularVelocity-mean()-X" --- Mean (frequency domain) body angular velocity in the X-direction
* "frequencyBodyAngularVelocity-mean()-Y" --- Mean (frequency domain) body angular velocity in the Y-direction
* "frequencyBodyAngularVelocity-mean()-Z" --- Mean (frequency domain) body angular velocity in the Z-direction
* "frequencyBodyAngularVelocity-meanFrequency()-X" --- Weighted average of frequency components (frequency domain) body angular velocity in the X-direction
* "frequencyBodyAngularVelocity-meanFrequency()-Y" --- Weighted average of frequency components (frequency domain) body angular velocity in the Y-direction
* "frequencyBodyAngularVelocity-meanFrequency()-Z" --- Weighted average of frequency components (frequency domain) body angular velocity in the Z-direction
* "frequencyBodyAccelerationMagnitude-mean()" --- Mean (frequency domain) magnitude body acceleration (Euclidean norm)
* "frequencyBodyAccelerationMagnitude-meanFrequency()" --- Weighted average of frequency components (frequency domain) body acceleration (Euclidean norm)
* "frequencyBodyBodyAccelerationJerkMagnitude-mean()" --- Mean (frequency domain) magnitude body acceleration (Euclidean norm) due to jerk movements
* "frequencyBodyBodyAccelerationJerkMagnitude-meanFrequency()" --- Weighted average of frequency components (frequency domain) body acceleration (Euclidean norm) due to jerk movements
* "frequencyBodyBodyAngularVelocityMagnitude-mean()" --- Mean (frequency domain) magnitude body angular velocity (Euclidean norm)
* "frequencyBodyBodyAngularVelocityMagnitude-meanFrequency()" --- Weighted average of frequency components (frequency domain) body angular velocity (Euclidean norm)
* "frequencyBodyBodyAngularVelocityJerkMagnitude-mean()" --- Mean (frequency domain) magnitude body angular velocity (Euclidean norm)
* "frequencyBodyBodyAngularVelocityJerkMagnitude-meanFrequency()" --- Mean (frequency domain) magnitude body angular velocity (Euclidean norm) due to jerks
* "timeBodyAcceleration-standardDeviation()-X" --- Standard deviation (time domain) body acceleration in the X-direction
* "timeBodyAcceleration-standardDeviation()-Y" --- Standard deviation (time domain) body acceleration in the Y-direction
* "timeBodyAcceleration-standardDeviation()-Z" --- Standard deviation (time domain) body acceleration in the Z-direction
* "timeGravityAcceleration-standardDeviation()-X" --- Standard deviation (time domain) gravity acceleration in the X-direction
* "timeGravityAcceleration-standardDeviation()-Y" --- Standard deviation (time domain) gravity acceleration in the Y-direction
* "timeGravityAcceleration-standardDeviation()-Z" --- Standard deviation (time domain) gravity acceleration in the Z-direction
* "timeBodyAccelerationJerk-standardDeviation()-X" --- Standard deviation (time domain) body acceleration in the X-direction due to jerk movements.
* "timeBodyAccelerationJerk-standardDeviation()-Y" --- Standard deviation (time domain) body acceleration in the Y-direction due to jerk movements.
* "timeBodyAccelerationJerk-standardDeviation()-Z" --- Standard deviation (time domain) body acceleration in the Z-direction due to jerk movements.
* "timeBodyAngularVelocity-standardDeviation()-X" --- Standard deviation (time domain) body angular velocity in the X-direction
* "timeBodyAngularVelocity-standardDeviation()-Y" --- Standard deviation (time domain) body angular velocity in the Y-direction
* "timeBodyAngularVelocity-standardDeviation()-Z" --- Standard deviation (time domain) body angular velocity in the Z-direction
* "timeBodyAngularVelocityJerk-standardDeviation()-X" --- Standard deviation (time domain) body angular velocity in the X-direction due to jerk movements
* "timeBodyAngularVelocityJerk-standardDeviation()-Y" --- Standard deviation (time domain) body angular velocity in the Y-direction due to jerk movements
* "timeBodyAngularVelocityJerk-standardDeviation()-Z" --- Standard deviation (time domain) body angular velocity in the Z-direction due to jerk movements
* "timeBodyAccelerationMagnitude-standardDeviation()" --- Standard deviation (time domain) magnitude body acceleration (Euclidean norm)
* "timeGravityAccelerationMagnitude-standardDeviation()" --- Gravity deviation (time domain) magnitude body acceleration (Euclidean norm)
* "timeBodyAccelerationJerkMagnitude-standardDeviation()" --- Standard deviation (time domain) magnitude body acceleration (Euclidean norm) due to jerk movements
* "timeBodyAngularVelocityMagnitude-standardDeviation()" --- Standard deviation (time domain) magnitude body angular velocity (Euclidean norm)
* "timeBodyAngularVelocityJerkMagnitude-standardDeviation()" --- Standard deviation (time domain) magnitude body angular velocity (Euclidean norm) due to jerk movements
* "frequencyBodyAcceleration-standardDeviation()-X" --- Standard deviation (frequency domain) body acceleration in the X-direction
* "frequencyBodyAcceleration-standardDeviation()-Y" --- Standard deviation (frequency domain) body acceleration in the Y-direction
* "frequencyBodyAcceleration-standardDeviation()-Z" --- Standard deviation (frequency domain) body acceleration in the Z-direction
* "frequencyBodyAccelerationJerk-standardDeviation()-X" --- Standard deviation (frequency domain) body acceleration in the X-direction due to jerk movements
* "frequencyBodyAccelerationJerk-standardDeviation()-Y" --- Standard deviation (frequency domain) body acceleration in the Y-direction due to jerk movements
* "frequencyBodyAccelerationJerk-standardDeviation()-Z" --- Standard deviation (frequency domain) body acceleration in the Z-direction due to jerk movements
* "frequencyBodyAngularVelocity-standardDeviation()-X" --- Standard deviation (frequency domain) body angular velocity in the X-direction
* "frequencyBodyAngularVelocity-standardDeviation()-Y" --- Standard deviation (frequency domain) body angular velocity in the Y-direction
* "frequencyBodyAngularVelocity-standardDeviation()-Z" --- Standard deviation (frequency domain) body angular velocity in the Z-direction
* "frequencyBodyAccelerationMagnitude-standardDeviation()" --- Standard deviation (frequency domain) magnitude body acceleration (Euclidean norm)
* "frequencyBodyBodyAccelerationJerkMagnitude-standardDeviation()" --- Standard deviation (frequency domain) magnitude body acceleration (Euclidean norm) due to jerk movements
* "frequencyBodyBodyAngularVelocityMagnitude-standardDeviation()" --- Standard deviation (frequency domain) magnitude body angular velocity (Euclidean norm)
* "frequencyBodyBodyAngularVelocityJerkMagnitude-standardDeviation()" --- Standard deviation (frequency domain) magnitude body angular velocity (Euclidean norm) due to jerk movements
