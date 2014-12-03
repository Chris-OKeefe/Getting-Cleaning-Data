# Merges the training and the test sets to create one data set.
# Extracts only the measurements on the mean and standard deviation for each measurement. 
# Uses descriptive activity names to name the activities in the data set
# Appropriately labels the data set with descriptive variable names. 
# 
# From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
setwd("~/Documents/Current Projects/Programs/")

if (!file.exists("Getting-Cleaning-Data"){  #Check to see if working dir exists, create it if necessary.
    dir.create("Getting-Cleaning-Data")
}

setwd("~/Documents/Current Projects/Programs/Getting-Cleaning-Data")

if (!file.exists("Getting-Cleaning-Data/accel_data.zip")){
    url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    dest_file <- "accel_data.zip"
    download.file(url, dest_file, method = "curl")
    date_downloaded <- date()
    unzip(dest_file)
}

