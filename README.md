## Getting-and-Cleaning-Data_Project
The script 'run_analysis.R' merges selected fields from two different datasets containing information on accelerometers on Samsung mobile devices. The primary script (run_analysis.R) produces two datasets
 ```
    ├── merged_data.txt : merged dataset of mean and std variables for all subjects
    ├── tidy_data.txt : synthesised dataset that conforms to 'tidy data' structure
 ```
==================================
## File structure
This script requires that the necessary files sit in the working directory in the following structure:
 ```
   ├── run_analysis.R
   ├── UCI HDR Dataset
   │   └── run_analysis.R
   │   └── activity_labels.txt
   │   └── features.txt
   │   └── test
   │       └── subject_test.txt
   │       └── X_test.txt
   │       └── y_test.txt 
   │   └── train
   │       └── subject_train.txt
   │       └── X_train.txt
   │       └── y_train.txt    
```
The files can be obtained from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip and the parent file 'UCI HDR Dataset' has been placed in the R working directory.

Data is collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

===================================
## Dependencies
run_analysis.R requires the R packages 'dplyr' and 'tidyr' are installed for script to run.

There is a supporting Codebook that details the transformation and variable information for 'run_analysis.R'.

===================================
## Instructions
The instructions for using this data for the project are as follows:

You should create one R script called run_analysis.R that does the following. 
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
