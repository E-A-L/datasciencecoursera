## Synopsis

Cook Book for the tidyDataSet

## Feature Selection 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ.
 These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. 
 Then they were filtered using a median filter
 and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.

Similarly, the acceleration signal was then separated into body
and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using
another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ).
Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm
(tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

A Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

- tBodyAcc-XYZ
- tGravityAcc-XYZ
- tBodyAccJerk-XYZ
- tBodyGyro-XYZ
- tBodyGyroJerk-XYZ
- tBodyAccMag
- tGravityAccMag
- tBodyAccJerkMag
- tBodyGyroMag
- tBodyGyroJerkMag
- fBodyAcc-XYZ
- fBodyAccJerk-XYZ
- fBodyGyro-XYZ
- fBodyAccMag
- fBodyAccJerkMag
- fBodyGyroMag
- fBodyGyroJerkMag

* The set of variables that were estimated from these signals are: 

- mean(): Mean value
- std(): Standard deviation

* Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

- gravityMean
- tBodyAccMean
- tBodyAccJerkMean
- tBodyGyroMean
- tBodyGyroJerkMean

For each Subject, the measurement were grouped, mean calculated, and summarized. All measurements have a numeric attribute.

This data set consolidated measurements from two samples ("Test" and "Training"). There elements within the 
 data that contained empty values or unwanted character (">").  The values were saved as "NA" prior to the 
 summation.

## Attributes

# Column Name        	                    Attribute  Description
1.	  Subject               	            String     "{WALKING,WALKING_UPSTAIRS,WALKING_DOWNSTAIRS,SITTING,STANDING,LAYING}"
2.	  tBodyAcc.mean...X	                    Number     "Mean summarized of Time (Body Acceleration(mean(X-Axis)))"
3.	  tBodyAcc.mean...Y	                    Number     "Mean summarized of Time (Body Acceleration(mean(Y-Axis)))"
4.	  tBodyAcc.mean...Z	                    Number     "Mean summarized of Time (Body Acceleration(mean(X Axis)))"
5.	  tGravityAcc.mean...X	                Number     "Mean summarized of Time (Gravity Acceleration(mean(X-Axis)))"
6.	  tGravityAcc.mean...Y	                Number     "Mean summarized of Time (Gravity Acceleration(mean(Y-Axis)))"
7.	  tGravityAcc.mean...Z	                Number     "Mean summarized of Time (Gravity Acceleration(mean(Z-Axis)))"
8.	  tBodyAccJerk.mean...X	                Number     "Mean summarized of Time (Body Acceleration Jerk(mean(X-Axis)))"
9.	  tBodyAccJerk.mean...Y	                Number     "Mean summarized of Time (Body Acceleration Jerk(mean(Y-Axis))"
10.   tBodyAccJerk.mean...Z	                Number     "Mean summarized of Time (Body Acceleration Jerk(mean(Z-Axis))"
11.   tBodyGyro.mean...X	                Number     "Mean summarized of Time (Body Gyroscope(mean(X-Axis)))"
12.   tBodyGyro.mean...Y	                Number     "Mean summarized of Time (Body Gyroscope(mean(Y-Axis)))"
13.   tBodyGyro.mean...Z	                Number     "Mean summarized of Time (Body Gyroscope(mean( Z-Axis)))" 
14.   tBodyGyroJerk.mean...X	            Number     "Mean summarized of Time (Body Gyroscope Jerk(mean(X-Axis)))"
15.   tBodyGyroJerk.mean...Y	            Number     "Mean summarized of Time (Body Gyroscope Jerk(mean(Y-Axis)))"
16.   tBodyGyroJerk.mean...Z	            Number     "Mean summarized of Time (Body Gyroscope Jerk(mean(Z-Axis)))"
17.   tBodyAccMag.mean..	                Number     "Mean summarized of Time (Body Acceleration Magnitude)mean())" 
18.   tGravityAccMag.mean..	                Number     "Mean summarized of Time (Gravity Acceleration Magnitude(mean())"
19.   tBodyAccJerkMag.mean..	            Number     "Mean summarized of Time (Body Acceleration Jerk Magnitude(mean())"
20.   tBodyGyroMag.mean..	                Number     "Mean summarized of Time (Body Gyroscope Magnitude(mean())"
21.   tBodyGyroJerkMag.mean..	            Number     "Mean summarized of Frequency (Body Gyroscope Jerk Magnitude(mean())"
22.   fBodyAcc.mean...X	                    Number     "Mean summarized of Frequency (Body Acceleration mean(X-Axis)))"
23.   fBodyAcc.mean...Y	                    Number     "Mean summarized of Frequency (Body Acceleration(mean(Y-Axis)))"
24.   fBodyAcc.mean...Z	                    Number     "Mean summarized of Frequency (Body Acceleration(mean(Z-Axis)))"
25.   fBodyAcc.meanFreq...X	                Number     "Mean summarized of Frequency (Body Acceleration(mean(Frequency(X-Axis))))"
26.   fBodyAcc.meanFreq...Y	                Number     "Mean summarized of Frequency (Body Acceleration(mean(Frequency(Y-Axis))))"
27.   fBodyAcc.meanFreq...Z	                Number     "Mean summarized of Frequency (Body Acceleration(mean(Frequency(Z-Axis))))"
28.   fBodyAccJerk.mean...X	                Number     "Mean summarized of Frequency (Body Accelerated Jerk(mean(X-Axis)))"
29.   fBodyAccJerk.mean...Y	                Number     "Mean summarized of Frequency (Body Accelerated Jerk(mean(Y-Axis)))"
30.   fBodyAccJerk.mean...Z	                Number     "Mean summarized of Frequency (Body Accelerated Jerk(mean(Z-Axis)))"
31.   fBodyAccJerk.meanFreq...X	            Number     "Mean summarized of Frequency (Body Accelerated Jerk(mean(count(X-Axis)))"
32.   fBodyAccJerk.meanFreq...Y	            Number     "Mean summarized of Frequency (Body Accelerated Jerk(mean(count(Y-Axis))))"
33.   fBodyAccJerk.meanFreq...Z	            Number     "Mean summarized of Frequency (Body Accelerated Jerk(mean(count(X-Axis))))"
34.   fBodyGyro.mean...X	                Number     "Mean summarized of Frequency (Body Gyroscope(mean(X-Axis)))"
35.   fBodyGyro.mean...Y	                Number     "Mean summarized of Frequency (Body Gyroscope(mean(Y-Axis)))"
36.   fBodyGyro.mean...Z	                Number     "Mean summarized of Frequency (Body Gyroscope(mean(Z-Axis))"
37.   fBodyGyro.meanFreq...X	            Number     "Mean summarized of Frequency (Body Gyroscope(mean(count(X-Axis))))"
38.   fBodyGyro.meanFreq...Y	            Number     "Mean summarized of Frequency (Body Gyroscope(mean(count(Y-Axis))))"
39.   fBodyGyro.meanFreq...Z	            Number     "Mean summarized of Frequency (Body Gyroscope(mean(count(Z-Axis))))"
40.   fBodyAccMag.mean..	                Number     "Mean summarized of Frequency (Body Acceleration Magnitude(mean()))"
41.   fBodyAccMag.meanFreq..	            Number     "Mean summarized of Frequency (Body Acceleration Magnitude(mean(frequency)))"
42.   fBodyBodyAccJerkMag.mean..	        Number     "Mean summarized of Frequency (Body Acceleration Jerk Magnitude(mean()))"
43.   fBodyBodyAccJerkMag.meanFreq..        Number     "Mean summarized of Frequency (Body Acceleration Jerk Magnitude(mean(count())))"
44.   fBodyBodyGyroMag.mean..	            Number     "Mean summarized of Frequency (Body Body Gyroscope Magnitude(mean()))" 
45.   fBodyBodyGyroMag.meanFreq..	        Number     "Mean summarized of Frequency (Body Body Gyroscope Magnitude(mean(count())))"
46.   fBodyBodyGyroJerkMag.mean..	        Number     "Mean summarized of Frequency (Body Body Gyroscope Jerk Magnitude(mean()))"
47.   fBodyBodyGyroJerkMag.meanFreq..	    Number     "Mean summarized of Frequency (Body Body Gyroscope Jerk Magnitude(mean(count())))"
48.   angle.tBodyAccMean.gravity.	        Number     "Mean summarized of Angel(Time of Body Acceleration mean(Gravity)" 
49.   angle.tBodyAccJerkMean..gravityMean.	Number     "Mean summarized of Angel(Time of Body Acceleration Jerk(Gravity mean)"
50.   angle.tBodyGyroMean.gravityMean.	    Number     "Mean summarized of Angel(Time of Body Gyroscope mean(Gravity mean)"
51.   angle.tBodyGyroJerkMean.gravityMean.	Number     "Mean summarized of Angle(Time of Body Gyroscope Jerk mean(Gravity Mean)"
52.   angle.X.gravityMean.	                Number     "Mean summarized of Angle(X-Axis(Gravity Mean)"
53.   angle.Y.gravityMean.	                Number     "Mean summarized of Angle(Y-Axis(Gravity Mean)"
54.   angle.Z.gravityMean.	                Number     "Mean summarized of Angle(Z-Axis(Gravity Mean)"
55.   tBodyAcc.std...X	                    Number     "Mean summarized of Time of Body Acceleration Standard Deviation(X-Axis)"
56.   tBodyAcc.std...Y	                    Number     "Mean summarized of Time of Body Acceleration Standard Deviation(Y-Axis)"
57.   tBodyAcc.std...Z	                    Number     "Mean summarized of Time of Body Acceleration Standard Deviation(Z-Axis)"
58.   tGravityAcc.std...X	                Number     "Mean summarized of Time of Gravity Acceleration Standard Deviation(X-Axis)"
59.   tGravityAcc.std...Y	                Number     "Mean summarized of Time of Gravity Acceleration Standard Deviation(Y-Axis)"
60.   tGravityAcc.std...Z	                Number     "Mean summarized of Time of Gravity Acceleration Standard Deviation(Z-Axis)"
61.   tBodyAccJerk.std...X	                Number     "Mean summarized of Time of Body Acceleration Jerk Standard Deviation(X-Axis)"
62.   tBodyAccJerk.std...Y	                Number     "Mean summarized of Time of Body Acceleration Jerk Standard Deviation(Y-Axis)"
63.   tBodyAccJerk.std...Z	                Number     "Mean summarized of Time of Body Acceleration Jerk Standard Deviation(Z-Axis)"
64.   tBodyGyro.std...X	                    Number     "Mean summarized of Time of Body Gyroscope Standard Deviation(X-Axis)"
65.   tBodyGyro.std...Y	                    Number     "Mean summarized of Time of Body Gyroscope Standard Deviation(Y-Axis)"
66.   tBodyGyro.std...Z	                    Number     "Mean summarized of Time of Body Gyroscope Standard Deviation(Z-Axis)" 
67.   tBodyGyroJerk.std...X	                Number     "Mean summarized of Time of Body Gyroscope Jerk(Standard Deviation((X-Axis))"
68.   tBodyGyroJerk.std...Y	                Number     "Mean summarized of Time of Body Gyroscope Jerk(Standard Deviation(Y-Axis))"
69.   tBodyGyroJerk.std...Z	                Number     "Mean summarized of Time of Body Gyroscope Jerk(Standard Deviation(Z-Axis))"
70.   tBodyAccMag.std..	                    Number     "Mean summarized of Time of Body Acceleration Magnitude(Standard Deviation()"
71.   tGravityAccMag.std..	                Number     "Mean summarized of Time of Gravity Acceleration Magnitude Standard Deviation()" 
72.   tBodyAccJerkMag.std..	                Number     "Mean summarized of Time of Body Acceleration Jerk Magnitude(Standard Deviation())"
73.   tBodyGyroMag.std..	                Number     "Mean summarized of Time of Body Gyroscope Magnitude(Standard Deviation())"
74.   tBodyGyroJerkMag.std..	            Number     "Mean summarized of Time of Body Gyroscope Jerk Magnitude(Standard Deviation())"
75.   fBodyAcc.std...X	                    Number     "Mean summarized of Frequency of Body Acceleration((Standard Deviation(X-Axis))"
76.   fBodyAcc.std...Y	                    Number     "Mean summarized of Frequency of Body Acceleration((Standard Deviation(Y-Axis))"
77.   fBodyAcc.std...Z	                    Number     "Mean summarized of Frequency of Body Acceleration((Standard Deviation(Z-Axis))"
78.   fBodyAccJerk.std...X	                Number     "Mean summarized of Frequency of Body Acceleration Jerk(Standard Deviation(X-Axis))"
79.   fBodyAccJerk.std...Y	                Number     "Mean summarized of Frequency of Body Acceleration Jerk(Standard Deviation(Y-Axis))"
80.   fBodyAccJerk.std...Z	                Number     "Mean summarized of Frequency of Body Acceleration Jerk(Standard Deviation(Z-Axis))"
81.   fBodyGyro.std...X	                    Number     "Mean summarized of Frequency of Body Gyroscope(Standard Deviation(X-Axis))"
82.   fBodyGyro.std...Y	                    Number     "Mean summarized of Frequency of Body Gyroscope(Standard Deviation(Y-Axis))"
83.   fBodyGyro.std...Z	                    Number     "Mean summarized of Frequency of Body Gyroscope(Standard Deviation(Z-Axis))"
84.   fBodyAccMag.std..	                    Number     "Mean summarized of Frequency of Body Acceleration Magnitude(Standard Deviation())"
85.   fBodyBodyAccJerkMag.std..	            Number     "Mean summarized of Frequency of Body Body Acceleration Jerk Magnitude(Standard Deviation())" 
86.   fBodyBodyGyroMag.std..	            Number     "Mean summarized of Frequency of Body Body Gyroscope Magnitude(Standard Deviation())"
87.   fBodyBodyGyroJerkMag.std..	        Number     "Mean summarized of Frequency of Body Body Gyroscope Jerk Magnitude(Standard Deviation())"

## Author
Eric Lonvick (lonvick@ameritech.net)