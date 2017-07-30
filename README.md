#Read Me

This repository contains 3 files:
* this readme.md file
* run_analysis.R
* Codebook.md

##run_analysis.R
This files downloads and unzips the following online file: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

This file contains data collected from the accelerometers from the Samsung Galaxy S smartphone. Additional info on this source data is included in the zip file.

After unzipping, it performs the following tasks:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. The output is tidydata.txt in the working directory. This file can be read into R by running
‘tidy_data <- read.table(“tidydata.txt”)’

##Codebook.md
A codebook describing the dataset
