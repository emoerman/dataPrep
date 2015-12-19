# Getting and Cleaning Data
Repo for the Coursera course on Getting and Cleaning Data.

##Files
###README.md
This file. Explains where you can find things and how they work.

###CodeBook.md

###run_analysis.R
Script file used to convert the "UCI HAR Dataset" files to a single tidy datafile. For details see below.
In order to use this script make sure that the folder "UCI HAR Dataset" is placed in the same file as the run_analysis.R script.
The resulting tidy datafile (target file) will be placed in the same folder and it will be called "ActivityRecognitionUsingSmartphones.txt".
It is possible to change the name and location of the folder "UCI HAR Dataset". To do that set the value of the variable "data_path" in the script to the location you want. The internal structure of the folder "UCI HAR Dataset" must remain unchanged.
It is also possible to change the name and location of the target file (resulting tidy datafile). To do that set the value of the variable "target_file_name" to the name and location you want.

