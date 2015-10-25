## Code book 
This document describes the data, transformations, and the variables that were performed and used to clean up the data before and during the 'run_analysis.R' script.

=================
## The Data
The data used in 'run_analysis.R' is collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The data for the project can be found at: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The data comes from 30 subjects performing six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. The subjects are split into two sets, with 70% in the training set and 30% in the test data set.

=================
## Transformation steps
'run_analysis.R' operates over 4 steps:
* STEP 1: Extract data from files, assign feature titles to columns and retain means and standard deviation feature tests. Creates 'Train' and 'Test' datasets.
* STEP 2: Merge Train and Test datasets and assign descriptive activity names.
* STEP 3: Create second tidy dataset that conforms to Hadley Wickham's 'tidy data' characteristics.
* STEP 4: Writes out datasets created by run_analysis.R, 'merged_data.txt' and 'tidy_data.txt'

===================
## Variables
1. The variable 'subjects' denotes the subject number that performed an activity. In total there are 30 subjects.
2. The second variable 'activity' denotes the possible activity performed by the subject from:

* WALKING
* WALKING_UPSTAIRS
* WALKING_DOWNSTAIRS
* SITTING
* STANDING
* LAYING

The raw data supplies 561 measurements for each observation of a subject in an activity. This is reduced in the datasetse in 'run_analysis.R' by selecting only the 79 columns that are measures of mean or standard deviation (std) for a measurement type. Variable names were supplied in the 'features.txt' file, those selected for inclusion were modified for readability based on information available in the 'features_info.txt':

As a result:
* variables beginning with 't' were changed to 'time_'
* variables beginning with 'f' were changes to 'freq_'
* dashes and parentheses were removed from variable names
* instances of 'mean' or 'std' were changed to '_Mean_' or '_Std_'
* BodyBody has been replaced by Body

The head and tail of the measurement variables included in the final datasets includes:

* "time_BodyAcc_Mean_X"
* "time_BodyAcc_Mean_Y"
* "time_BodyAcc_Mean_Z"
* "time_BodyAcc_Std_X"
* "time_BodyAcc_Std_Y"

... ... ... ...

* "freq_BodyGyroMag_Std_"
* "freq_BodyGyroMagMeanFreq"
* "freq_BodyGyroJerkMag_Mean_"
* "freq_BodyGyroJerkMag_Std_"
* "freq_BodyGyroJerkMagMeanFreq"

==============================
### Output datasets

1. merged_data.txt: contains merged training and testing datasets with subject, activity, and mean and std measurements with descriptive variable names.
2. tidy_data.txt: contains the same data, but data is averaged and organised by subject and activity to conform to the 'tidy data' principles.
