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



For example:

* `tBodyAcc-mean()-X` becomes `timeBodyAccMeanX` 
* `tBodyAcc-std()-Y` becomes `timeBodyAccStdY`
* `fBodyAcc-mean()-Z` becomes `freqBodyAccMeanZ`
* `fBodyBodyGyroMag-mean()` becomes `freqBodyGyroMagMean`
* `fBodyBodyGyroJerkMag-meanFreq()` becomes `freqBodyGyroJerkMagMeanFreq`

A full description of the features is best obtained from the file `features_info.txt`, included with the original dataset (I found it unnecessary to duplicate all the information here).

### Data set `tidy2.csv`
To form the dataset `tidy2.csv`, the observations from `tidy1.csv` were grouped by subject and activity and then aggregated using the mean function. This yields 180 rows (30 subjects times 6 activities) and 81 columns (1 for subject, 1 for activity plus 79 aggregated features).  

## Original data set
Taken from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones:

"The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain."

For more information read visit http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones, the website where the original data came from. 

This document describes the variables, the data, and transformations that were performed to clean up the data before and during the run_analysis.R script
=================
### Data
The data used in this project is collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:       (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

The data for the project can be found at: 
(https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
==================


