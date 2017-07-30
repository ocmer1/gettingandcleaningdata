##Download and unzip file
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url, destfile = "Dataset.zip")
unzip("Dataset.zip")

##Read tables
test <- read.table("UCI HAR Dataset/test/X_test.txt")
train <- read.table("UCI HAR Dataset/train/X_train.txt")
features <- read.table("UCI HAR Dataset/features.txt")
features <- features[,2]
activities <- read.table("UCI HAR Dataset/activity_labels.txt")
train_labels <- read.table("UCI HAR Dataset/train/y_train.txt")
test_labels <- read.table("UCI HAR Dataset/test/y_test.txt")
test_subject <- read.table("UCI HAR Dataset/test/subject_test.txt")
train_subject <- read.table("UCI HAR Dataset/train/subject_train.txt")  

##Appropriately labels the data set with descriptive variable names
features <- gsub("\\-mean\\(\\)\\-", ".Mean.", features)
features <- gsub("\\-std\\(\\)\\-", ".Std.", features)
features <- gsub("\\-mean\\(\\)$", ".Mean", features)
features <- gsub("\\-std\\(\\)$", ".Std", features)
features <- gsub("^t", "Time.", features)
features <- gsub("^f", "FFT.", features)

##Apply descriptive labels
names(test) <- features
names(train) <- features
names(train_labels) <- "Activity"
names(train_subject) <- "Subject"
names(test_labels) <- "Activity"
names(test_subject) <- "Subject"

#Clip data together
test <- cbind(test, test_labels, test_subject)
train <- cbind(train, train_labels, train_subject)
dataset <- rbind(test, train)

##Extracts only the measurements on the mean and standard deviation for each measurement.
dataset <- dataset[grepl("Mean\\.|Std\\.|Mean$|Std$|Activity|Subject", names(dataset))]

##Use descriptive activity names to name the activities in the data set
dataset$Activity <- factor(dataset$Activity, labels = activities[,2])

##Create a second, independent tidy data set with the average of each variable for each activity and each subject.
library(dplyr)
dataset_tb <- tbl_df(dataset)
dataset_tb <- group_by(dataset_tb, Activity, Subject)
tidy_data <- summarise_all(dataset_tb, mean)
colnames(tidy_data) <- paste("MeanOf", colnames(tidy_data), sep=".")
colnames(tidy_data)[1:2] <- c("Activity", "Subject")
write.table(tidy_data, file="tidydataset.txt", row.names = FALSE)


