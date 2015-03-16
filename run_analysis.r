run_analysis <- function (filename = "tidyDataSet.txt") {
         ## Eric Lonvick, lonvick@ameritch.net; Version 1, 05/14/15
		 ## filename is a character vector of length 1 indicating the output file name.
         ## This logic contains six sections of logic to extract data sets and process the data.
		 ## This logic requires that the project data sets be downloaded and extracted.
		 ## The name of the data set is "getdata_projectfiles_UCI HAR Dataset"
		 ## The work file directory MUST BE defined before execution.
		 ## Here is an example of an working file directory:
		 ##      setwd("/Data/e_a_l/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset")
		 ## dplyr is a required library for this logic.
		 ## If there are no errors, the result data set is saved in a text file
         ##		 in the working file directory.
		 ##      The output file name is passed as a function input parameter.
         ##      The default file name is "tidyDataSet.txt"
		 
output_filename <- "tidyDataSet.txt"
if (!is.null(filename)) {
    output_filename <- filename
}  
		 
BASEDIR <- getwd()
# print(BASEDIR)
TESTDIR <- "/"
TRAINDIR <- "/"
if (file.exists("features.txt")){
    TESTDIR <- paste(BASEDIR, "test", sep="/")
	TRAINDIR <- paste(BASEDIR, "train", sep="/")
} else {
   print ("ERROR.  The workspace file directory is not properly defined.")
   print(getwd())
   print ("EXECUTE: setwd([With the correct directory file path in double quotes])")
   }
# Section 1 of 6
# Extract and read the assigned variable names for X-Axis data sets.
vcols_df <- read.table("features.txt")
# print("vcols_df")
# dim(vcols_df)
# Merges the training and the test sets to create one data set.
# There are two set of data (test and training).
# For each set, X-Axis data set and Y-Axis data set.
# Read Y-Axis data into a table and consolidate the elements into one large Data Frame
setwd(TESTDIR);
getwd()
# Extract and read the Y-Axis "test" data set.
tst_ydf <- read.table("Y_test.txt")
# Extract and read the X-Axis "test" data set.
# The data is messy within the data set.  There are unwanted elements such as ">" and empty.
tst_xdf <- read.table("X_test.txt",col.names = vcols_df[,2],  na.strings = c("NA","", ">"))
#  Process eh "training" data sets
setwd(TRAINDIR)
# getwd()
trn_ydf <- read.table("Y_train.txt")
# print("trn_ydf")
# dim(trn_ydf)
Y_DF <- rbind(tst_ydf, trn_ydf)
# dim(Y_DF)
# Read the X-Axis training data and assign column names from a external data input file
trn_xdf <- read.table("X_train.txt",col.names = vcols_df[,2],  na.strings = c("NA","", ">"))
# dim (trn_xdf)
# All data sets have been extracted and read into memory.
# Consolidate the data sets into X-AXis and Y-Axis data frames.
X_DF <- rbind(tst_xdf, trn_xdf)
Y_DF <- rbind(tst_ydf, trn_ydf)
# Merge the X-Axis and Y-Axis data frames into one data frame.
HAR_DF <- cbind(Y_DF, X_DF)
# Correct the default column name for the primary key and assign column to "Activity_ID".
names(HAR_DF)[names(HAR_DF) == "V1"] = "Activity_ID"
#
# print("HAR_DF")
# print(dim(HAR_DF))
# clean up workspace and memory.  Target Data Frame is 'HAR_DF'
rm(Y_DF)
rm(X_DF)
rm(tst_ydf)
rm(trn_ydf)
rm(tst_xdf)
rm(trn_xdf)
rm(vcols_df)
# End of first requirement and Section 1 of 6
# Start of second requirement and Section 2 of 6
# Extract only the measurements on the mean and standard deviation ("std") for each measurement.
library(dplyr)
har2_df <- select (HAR_DF, contains("Activity_ID"), contains("mean", ignore.case=TRUE), contains("std", ignore.case=TRUE))
# print("har2_df == dimensions")
# print(dim(har2_df))
# 10299 rows x 87 columns is the target size of the data set.
# End of the second requirement and Section 2 of 6
# Clean up workspace and memory.  Target Data Frame is 'har2_df'
rm(HAR_DF)
# End of the second requirement and Section 2 of 6
# Start of the third requirement and Section 3 of 6
# Third requirement was incorporated into the read.table()
#       using col.names attribute for each X-Axis extract.
# End of the third requirement and Section 3 of 6
# Start of the fourth requirement and Section 4 of 6
# Appropriately label the data set with descriptive variable names.
# Set the working workspace to the data set base file directory
setwd(BASEDIR)
# Extract the activity groups / subjects AND primary key values
activity_df <- read.table("activity_labels.txt")
# Correct the default column names for the groups and primary key values.
names(activity_df)[names(activity_df) == "V1"] = "Activity_ID"
names(activity_df)[names(activity_df) == "V2"] = "Subject"
# Target Data Frame is is 'har2_df' and compliment data set is 'activity_df'
# End of the fourth requirement and Section 4 of 6
# Start of the fifth requirement and Section 5 of 6
# From the data set in step 4, creates a second, independent tidy data.
# Set it with the average of each variable for each activity and each subject.
# This logic has five modules embedded into one command.
#  <1>  read the consolidate data set, har2_df
#  <2>  subset and group the data by the primary key, "Activiy_ID"
#  <3>  For each group (1:5) and each measurement in the group (1:86), compute the mean values
#  <4>  Summarize the data set
#  <5>  Save the result set in a new data frame called tmp_df
tmp_df <-har2_df %>% group_by(Activity_ID) %>% summarise_each(funs(mean))
#  Assign a label for each primary key within the new data set.
final_df <- cbind(activity_df[,2],tmp_df)
# Clean up two duplicate columns ("Activiy_ID" and "Subject")
# str(final_df)
final_df$Activity_ID<- NULL
names(final_df)[names(final_df) == "activity_df[, 2]"] = "Subject"
#  Clean up the working workspace and temporary data frame.
rm(tmp_df)
# Target Data Frame is is 'final_df'
# END of the fifth requirement and Section 5 of 6
# Start of the sixth module and Section 6 of 6
# The final data set is saved to a file.
# The output file name is passed as a function input parameter.
# The default file name is "tidyDataSet.txt"
 setwd(BASEDIR)
 write.table(final_df,output_filename, row.name=FALSE)
 explict_filename <- paste(BASEDIR, output_filename, sep="/")
 print("The results have been saved to a text file.")
 print(sprintf("The file name is %s",explict_filename))
 print(sprintf("EXECUTE: read.table(\"%s\", header=TRUE) # with the proper quotation marks.",output_filename))
 print("Extract the information and assign the results to a data frame.")
# End of the sixth module and Section 6 of 6
if (file.exists(output_filename)){
    rm(final_df)
}
# End of function run_analysis
}