## Getting-and-Cleaning-Data_Project
The primary script (run_analysis.R) produces two datasets
 ```
    ├── merged_data.txt : merged dataset of mean and std variables for all subjects
    ├── tidy_data.txt : synthesised dataset that conforms to 'tidy data' structure
 ```
==================================
## File structure
This script requires that the necessary files sit in the working directory in the following structure:
 ```
    ├── run_analysis.R
    ├── activity_labels.txt
    ├── features.txt
    ├── test
    │   └── subject_test.txt
    │   └── X_test.txt
    │   └── y_test.txt 
    ├── train
    │   └── subject_train.txt
    │   └── X_train.txt
    │   └── y_train.txt    
```
The files can be obtained from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip and have been extracted from the parent file '

Data is collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

===================================
## Dependencies
run_analysis.R requires the R packages 'dplyr' and 'tidyr' are installed for script to run.


Course Project for Getting and Cleaning Data Coursera (John Hopkins)
