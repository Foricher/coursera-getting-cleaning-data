#setwd("I:/Data/github/coursera-getting-cleaning-data")

data_dir = "UCI HAR Dataset"

get_file <- function(base_dir, path) {
    paste(base_dir,path ,sep="/")
}

download_data = function(to_dir) {
    if (!file.exists(to_dir)) {
        # download the data
        fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
        zipfile="UCI_HAR_data.zip"
        message("Download data")
        download.file(fileURL, destfile=zipfile, method="curl")
        message(paste("Create directory",to_dir,sep=" "))
        dir.create(to_dir)
        unzip(zipfile)
    }
}

message("Step1. Merges the training and the test sets to create one data set.")
download_data(data_dir) 
train <- read.table(get_file(data_dir,"train/X_train.txt"))
train_label <- read.table(get_file(data_dir,"train/y_train.txt"))
train_subject <- read.table(get_file(data_dir,"train/subject_train.txt"))

test <- read.table(get_file(data_dir,"test/X_test.txt"))
test_label <- read.table(get_file(data_dir,"test/Y_test.txt"))
test_subject <- read.table(get_file(data_dir,"test/subject_test.txt"))

all_data <- rbind(train, test)
all_labels <- rbind(train_label, test_label)
all_subjects <- rbind(train_subject, test_subject)


message("Step2. Extracts only the measurements on the mean and standard  deviation for each measurement.") 
features <- read.table(get_file(data_dir,"features.txt"))
mean_std_selected <- grep("mean\\(\\)|std\\(\\)", features[, 2])
all_data <- all_data[, mean_std_selected]
# clean column names
names(all_data) <- features[mean_std_selected, 2]
names(all_data) <- gsub("mean", "Mean", names(all_data)) 
names(all_data) <- gsub("std", "Std", names(all_data))
names(all_data) <- gsub("-", "", names(all_data))  
names(all_data) <- gsub("\\(\\)", "", names(all_data) )

message("Step3. Uses descriptive activity names to name the activities in  the data set.")
activity_labels <- read.table(get_file(data_dir,"activity_labels.txt"))
all_labels[, 1] <- activity_labels[all_labels[, 1], 2]
names(all_labels) <- "activity"

message("Step4. Appropriately labels the data set with descriptive activity names.") 
names(all_subjects) <- "subject"
clean_data <- cbind(all_subjects, all_labels, all_data)
dim(clean_data) # 10299*68
write.table(clean_data, "clean_data.txt") # write out the 1st dataset

message("Step 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.") 
#library(reshape2)
#melt_data <- melt(clean_data, id = c("subject", "activity"))
#tidy_data <- dcast(melt_data, subject + activity ~ variable, mean)
library(plyr)
tidy_data <- ddply(clean_data , .(subject, activity), function(x) colMeans(x[,3:length(clean_data)]))
write.table(tidy_data, "tidy_data_means.txt") 
