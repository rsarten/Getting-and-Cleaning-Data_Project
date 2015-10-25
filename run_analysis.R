########################################################################################
# Extracts data from Samsung dataset, merges training and test datasets
# Retains mean and std data, rename variables
# Create tidy dataset organised by subject and activity
########################################################################################
# STEP 1
# Extract data from files, assign feature titles to columns
# and retain means and standard deviation feature tests

library(dplyr)
library(tidyr)

# Extract generic and multi-use files and features
features <- read.table("./UCI HAR Dataset/features.txt", stringsAsFactors = F)[,2]
mean_std <- grep("mean|std|activityLabel",features) # Get col ids with means and std
activities.list <- read.table("./UCI HAR Dataset/activity_labels.txt")[,2]

# Extract and modify training files
Train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")[,1] # activity labels
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")[,1]

names(Train) <- features
Train <- Train[,mean_std]
Train$subjects <- subject_train
Train$activity <- y_train

# Extract and modify testing files
Test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")[,1] # activity labels
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")[,1]

names(Test) <- features
Test <- Test[,mean_std]
Test$subjects <- subject_test
Test$activity <- y_test

########################################################################################
# STEP 2
# Merge Train and Test datasets and assign activity names
merged_data <- tbl_df(rbind(Train, Test)) # Stacks datasets and applys tbl_df format
merged_data$activity <- as.factor(merged_data$activity) # Creates activity labels for class labels 
levels(merged_data$activity) <- activities.list # and creates levels to replace numbers with
merged_data$activity <- as.character(merged_data$activity)

# Assign descriptive variable names, note t = time_, f = freq_
var_names <- names(merged_data)
var_names <- gsub(pattern="^t",replacement="time_",x=var_names)
var_names <- gsub(pattern="^f",replacement="freq_",x=var_names)
var_names <- gsub(pattern="-?mean[(][)]-?",replacement="_Mean_",x=var_names)
var_names <- gsub(pattern="-?std[()][)]-?",replacement="_Std_",x=var_names)
var_names <- gsub(pattern="-?meanFreq[()][)]-?",replacement="_MeanFreq_",x=var_names)
var_names <- gsub(pattern="BodyBody",replacement="Body",x=var_names)
names(merged_data) <- var_names

########################################################################################
# STEP 3
# Create tidy dataset

tidy_data <- merged_data %>% arrange(subjects, activity) %>%
  group_by(subjects, activity) %>%
  summarise_each(funs(mean))

########################################################################################
# STEP 4
# Write out datasets created by run_analysis.R

write.table(merged_data, "./merged_data.txt", row.names = F)
write.table(tidy_data, "./tidy_data.txt", row.names = F)
