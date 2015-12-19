# Path to the folder containing the test and training sets from the UCI HAR Dataset
data_path = "./UCI HAR Dataset/"
# The file to write the result to.
target_file_name = "ActivityRecognitionUsingSmartphones.txt"

# Reads the feature names and the corresponding index numbers.
feature_names <- read.table(paste0(data_path, "features.txt"))

# Reads the X-data starting with training data and appending with test data.
x_data <- rbind(read.table(paste0(data_path, "train/X_train.txt")), read.table(paste0(data_path, "test/X_test.txt")))
colnames(x_data) <- feature_names[, 2]

# Reads the y-data starting with training data and appending with test data.
y_data <- rbind(read.table(paste0(data_path, "train/y_train.txt")), read.table(paste0(data_path, "test/y_test.txt")))

# Get the column indices with 'mean()' or 'std()' in the name.
# These are the measurements on the mean and standard deviation on each measurement
idx <- c(grep('mean', feature_names[,2]), grep('std', feature_names[,2]))

# Put the colums we just found in the tidier data set.
x_tidier <- x_data[, idx]

# Get the activity lables
activity_labels <- read.table(paste0(data_path, "activity_labels.txt"))
# In the tidier data set use the activity lable instead of the codes
y_tidier <- merge(activity_labels, y_data, by.x=1, by.y=1)[, 2]

## Rename columns
# Replace the abbreviations
colnames(x_tidier) <- gsub("Acc", "Acceleration", colnames(x_tidier))
colnames(x_tidier) <- gsub("Gyro", "AngularVelocity", colnames(x_tidier))
colnames(x_tidier) <- gsub("Mag", "Magnitude", colnames(x_tidier))
colnames(x_tidier) <- gsub("Freq", "Frequency", colnames(x_tidier))
colnames(x_tidier) <- gsub("std", "standardDeviation", colnames(x_tidier))
# Replace the first character where t indicates time and f frequency
colnames(x_tidier) <- paste0(gsub("t", "time", substring(colnames(x_tidier),1,1)), substring(colnames(x_tidier),2,nchar(colnames(x_tidier))))
colnames(x_tidier) <- paste0(gsub("f", "frequency", substring(colnames(x_tidier),1,1)), substring(colnames(x_tidier),2,nchar(colnames(x_tidier))))

# Reads the subject-data starting with training data and appending with test data.
subject_data <- rbind(read.table(paste0(data_path, "train/subject_train.txt")), read.table(paste0(data_path, "test/subject_test.txt")))

# Combining the 3 tidy data files.
tidy_data <- cbind(subject_data, y_tidier, x_tidier)
# Set column names where we didn't have them
colnames(tidy_data)[1] <- "studyParticipant"
colnames(tidy_data)[2] <- "activity"

# And finally writing the table to file
write.table(tidy_data, target_file_name, row.name = FALSE)