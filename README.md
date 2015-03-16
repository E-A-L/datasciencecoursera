## Synopsis

run_analysis example for UCI HAR data set

## Code Example

[Down load the Data set!](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
Extract the data file into a folder that is accessible with R application.
Save the R script in a local file directory.
R> setwd("[The workspace file directory to the file directory that contains the data set's README.txt"])
R> source("[your_source_code_file_directory/]run_analysis.R", local = true)
R> run_analysis(["output_filename.txt"]) 

## Motivation

# The logic performs the following steps:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. creates a second, independent tidy data set with the average of each variable for each activity and each subject.
4. Saves data into a text file that can be read into a table.
5. The result data set has five rows and 86 columns of measurement's means.  Please refer to the cook book for more details.
 
## Installation

This script requires R version 3.1.2 (2014-10-31), dplyr_0.4.1 package, and a HAR data set.
[Down load the Data set!](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
##  API Reference

run_analysis()
or
run_analysis("TextFileName.txt")

## Test

my_df <- read.table("tidyDataSet.txt", header=TRUE)
View(my_df)

## Author

Eric Lonvick (lonvick@ameritech.net)

