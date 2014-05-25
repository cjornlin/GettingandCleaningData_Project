#Code Book for Human Activity Recognition - Coursera "Getting and Cleaning Data" course project

##Citations:
Bache, K. & Lichman, M. (2013). UCI Machine Learning Repository [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones]. Irvine, CA: University of California, School of Information and Computer Science.

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

##Background
The features selected for this database come from the accelerometer and
gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals
(prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they
were filtered using a median filter and a 3rd order low pass Butterworth filter
with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration
signal was then separated into body and gravity acceleration signals
(tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter
with a corner frequency of 0.3 Hz.

The features were normalized and bounded within [-1,1]

Subsequently, the body linear acceleration and angular velocity were derived in
time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the
magnitude of these three-dimensional signals were calculated using the Euclidean
norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag,
tBodyGyroJerkMag).

A Fast Fourier Transform (FFT) was applied to some of these signals
producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag,
fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain
signals).

These signals were used to estimate variables of the feature vector for each
pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The mean of each of the mean and standard deviation values for all patterns for each test subject and activity can be calculated by the included run_analysis.R. Below are the definitions for the tidy data frame and tab delimited file produced by run_analysis.R.

##Data Definitions

| Variable Name               | Length | Variable                                                                                                                                                  | Values             |
|-----------------------------|--------|-----------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------|
| Subject                     |        | Number of subject performing the activity                                                                                                                 | 1 to 30            |
| Activity                    |        | The name of the activity performed                                                                                                                        | LAYING             |
|                             |        |                                                                                                                                                           | SITTING            |
|                             |        |                                                                                                                                                           | STANDING           |
|                             |        |                                                                                                                                                           | WALKING            |
|                             |        |                                                                                                                                                           | WALKING_DOWNSTAIRS |
|                             |        |                                                                                                                                                           | WALKING_UPSTAIRS   |
| tBodyAcc-mean()-X           | 18     | Mean value of the mean of the time domain  body acceleration signal in X axis for all patterns for the given subject and activity                         | -1 to 1            |
| tBodyAcc-mean()-Y           | 18     | Mean value of the mean of the time domain  body acceleration signal in Y axis for all patterns for the given subject and activity                         | -1 to 1            |
| tBodyAcc-mean()-Z           | 18     | Mean value of the mean of the time domain  body acceleration signal in Z axis for all patterns for the given subject and activity                         | -1 to 1            |
| tBodyAcc-std()-X            | 18     | Mean value of the standard deviation of the time domain  body acceleration signal in X axis for all patterns for the given subject and activity           | -1 to 1            |
| tBodyAcc-std()-Y            | 18     | Mean value of the standard deviation of the time domain  body acceleration signal in Y axis for all patterns for the given subject and activity           | -1 to 1            |
| tBodyAcc-std()-Z            | 18     | Mean value of the standard deviation of the time domain  body acceleration signal in Z axis for all patterns for the given subject and activity           | -1 to 1            |
| tGravityAcc-mean()-X        | 18     | Mean value of the mean of the time domain  gravity acceleration signal in X axis for all patterns for the given subject and activity                      | -1 to 1            |
| tGravityAcc-mean()-Y        | 18     | Mean value of the mean of the time domain  gravity acceleration signal in Y axis for all patterns for the given subject and activity                      | -1 to 1            |
| tGravityAcc-mean()-Z        | 18     | Mean value of the mean of the time domain  gravity acceleration signal in Z axis for all patterns for the given subject and activity                      | -1 to 1            |
| tGravityAcc-std()-X         | 18     | Mean value of the standard deviation of the time domain  gravity acceleration signal in X axis for all patterns for the given subject and activity        | -1 to 1            |
| tGravityAcc-std()-Y         | 18     | Mean value of the standard deviation of the time domain  gravity acceleration signal in Y axis for all patterns for the given subject and activity        | -1 to 1            |
| tGravityAcc-std()-Z         | 18     | Mean value of the standard deviation of the time domain  gravity acceleration signal in Z axis for all patterns for the given subject and activity        | -1 to 1            |
| tBodyAccJerk-mean()-X       | 18     | Mean value of the mean of the time domain  body acceleration signal jerk in X axis for all patterns for the given subject and activity                    | -1 to 1            |
| tBodyAccJerk-mean()-Y       | 18     | Mean value of the mean of the time domain  body acceleration signal jerk in Y axis for all patterns for the given subject and activity                    | -1 to 1            |
| tBodyAccJerk-mean()-Z       | 18     | Mean value of the mean of the time domain  body acceleration signal jerk in Z axis for all patterns for the given subject and activity                    | -1 to 1            |
| tBodyAccJerk-std()-X        | 18     | Mean value of the standard deviation of the time domain  body acceleration signal jerk in X axis for all patterns for the given subject and activity      | -1 to 1            |
| tBodyAccJerk-std()-Y        | 18     | Mean value of the standard deviation of the time domain  body acceleration signal jerk in Y axis for all patterns for the given subject and activity      | -1 to 1            |
| tBodyAccJerk-std()-Z        | 18     | Mean value of the standard deviation of the time domain  body acceleration signal jerk in Z axis for all patterns for the given subject and activity      | -1 to 1            |
| tBodyGyro-mean()-X          | 18     | Mean value of the mean of the time domain  body gyroscope signal in X axis for all patterns for the given subject and activity                            | -1 to 1            |
| tBodyGyro-mean()-Y          | 18     | Mean value of the mean of the time domain  body gyroscope signal in Y axis for all patterns for the given subject and activity                            | -1 to 1            |
| tBodyGyro-mean()-Z          | 18     | Mean value of the mean of the time domain  body gyroscope signal in Z axis for all patterns for the given subject and activity                            | -1 to 1            |
| tBodyGyro-std()-X           | 18     | Mean value of the standard deviation of the time domain  body gyroscope signal in X axis for all patterns for the given subject and activity              | -1 to 1            |
| tBodyGyro-std()-Y           | 18     | Mean value of the standard deviation of the time domain  body gyroscope signal in Y axis for all patterns for the given subject and activity              | -1 to 1            |
| tBodyGyro-std()-Z           | 18     | Mean value of the standard deviation of the time domain  body gyroscope signal in Z axis for all patterns for the given subject and activity              | -1 to 1            |
| tBodyGyroJerk-mean()-X      | 18     | Mean value of the mean of the time domain  body gyroscope signal jerk in X axis for all patterns for the given subject and activity                       | -1 to 1            |
| tBodyGyroJerk-mean()-Y      | 18     | Mean value of the mean of the time domain  body gyroscope signal jerk in Y axis for all patterns for the given subject and activity                       | -1 to 1            |
| tBodyGyroJerk-mean()-Z      | 18     | Mean value of the mean of the time domain  body gyroscope signal jerk in Z axis for all patterns for the given subject and activity                       | -1 to 1            |
| tBodyGyroJerk-std()-X       | 18     | Mean value of the standard deviation of the time domain  body gyroscope signal jerk in X axis for all patterns for the given subject and activity         | -1 to 1            |
| tBodyGyroJerk-std()-Y       | 18     | Mean value of the standard deviation of the time domain  body gyroscope signal jerk in Y axis for all patterns for the given subject and activity         | -1 to 1            |
| tBodyGyroJerk-std()-Z       | 18     | Mean value of the standard deviation of the time domain  body gyroscope signal jerk in Z axis for all patterns for the given subject and activity         | -1 to 1            |
| tBodyAccMag-mean()          | 18     | Mean value of the mean of the time domain  body acceleration signal magnitude for all patterns for the given subject and activity                         | -1 to 1            |
| tBodyAccMag-std()           | 18     | Mean value of the standard deviation of the time domain  body acceleration signal magnitude for all patterns for the given subject and activity           | -1 to 1            |
| tGravityAccMag-mean()       | 18     | Mean value of the mean of the time domain  gravity acceleration signal magnitude for all patterns for the given subject and activity                      | -1 to 1            |
| tGravityAccMag-std()        | 18     | Mean value of the standard deviation of the time domain  gravity acceleration signal magnitude for all patterns for the given subject and activity        | -1 to 1            |
| tBodyAccJerkMag-mean()      | 18     | Mean value of the mean of the time domain  body acceleration signal jerk magnitude for all patterns for the given subject and activity                    | -1 to 1            |
| tBodyAccJerkMag-std()       | 18     | Mean value of the standard deviation of the time domain  body acceleration signal jerk magnitude for all patterns for the given subject and activity      | -1 to 1            |
| tBodyGyroMag-mean()         | 18     | Mean value of the mean of the time domain  body gyroscope signal magnitude for all patterns for the given subject and activity                            | -1 to 1            |
| tBodyGyroMag-std()          | 18     | Mean value of the standard deviation of the time domain  body gyroscope signal magnitude for all patterns for the given subject and activity              | -1 to 1            |
| tBodyGyroJerkMag-mean()     | 18     | Mean value of the mean of the time domain  body gyroscope signal jerk magnitude for all patterns for the given subject and activity                       | -1 to 1            |
| tBodyGyroJerkMag-std()      | 18     | Mean value of the standard deviation of the time domain  body gyroscope signal jerk magnitude for all patterns for the given subject and activity         | -1 to 1            |
| fBodyAcc-mean()-X           | 18     | Mean value of the mean of the frequency domain  body acceleration signal in X axis for all patterns for the given subject and activity                    | -1 to 1            |
| fBodyAcc-mean()-Y           | 18     | Mean value of the mean of the frequency domain  body acceleration signal in Y axis for all patterns for the given subject and activity                    | -1 to 1            |
| fBodyAcc-mean()-Z           | 18     | Mean value of the mean of the frequency domain  body acceleration signal in Z axis for all patterns for the given subject and activity                    | -1 to 1            |
| fBodyAcc-std()-X            | 18     | Mean value of the standard deviation of the frequency domain  body acceleration signal in X axis for all patterns for the given subject and activity      | -1 to 1            |
| fBodyAcc-std()-Y            | 18     | Mean value of the standard deviation of the frequency domain  body acceleration signal in Y axis for all patterns for the given subject and activity      | -1 to 1            |
| fBodyAcc-std()-Z            | 18     | Mean value of the standard deviation of the frequency domain  body acceleration signal in Z axis for all patterns for the given subject and activity      | -1 to 1            |
| fBodyAccJerk-mean()-X       | 18     | Mean value of the mean of the frequency domain  body acceleration signal jerk in X axis for all patterns for the given subject and activity               | -1 to 1            |
| fBodyAccJerk-mean()-Y       | 18     | Mean value of the mean of the frequency domain  body acceleration signal jerk in Y axis for all patterns for the given subject and activity               | -1 to 1            |
| fBodyAccJerk-mean()-Z       | 18     | Mean value of the mean of the frequency domain  body acceleration signal jerk in Z axis for all patterns for the given subject and activity               | -1 to 1            |
| fBodyAccJerk-std()-X        | 18     | Mean value of the standard deviation of the frequency domain  body acceleration signal jerk in X axis for all patterns for the given subject and activity | -1 to 1            |
| fBodyAccJerk-std()-Y        | 18     | Mean value of the standard deviation of the frequency domain  body acceleration signal jerk in Y axis for all patterns for the given subject and activity | -1 to 1            |
| fBodyAccJerk-std()-Z        | 18     | Mean value of the standard deviation of the frequency domain  body acceleration signal jerk in Z axis for all patterns for the given subject and activity | -1 to 1            |
| fBodyGyro-mean()-X          | 18     | Mean value of the mean of the frequency domain  body gyroscope signal in X axis for all patterns for the given subject and activity                       | -1 to 1            |
| fBodyGyro-mean()-Y          | 18     | Mean value of the mean of the frequency domain  body gyroscope signal in Y axis for all patterns for the given subject and activity                       | -1 to 1            |
| fBodyGyro-mean()-Z          | 18     | Mean value of the mean of the frequency domain  body gyroscope signal in Z axis for all patterns for the given subject and activity                       | -1 to 1            |
| fBodyGyro-std()-X           | 18     | Mean value of the standard deviation of the frequency domain  body gyroscope signal in X axis for all patterns for the given subject and activity         | -1 to 1            |
| fBodyGyro-std()-Y           | 18     | Mean value of the standard deviation of the frequency domain  body gyroscope signal in Y axis for all patterns for the given subject and activity         | -1 to 1            |
| fBodyGyro-std()-Z           | 18     | Mean value of the standard deviation of the frequency domain  body gyroscope signal in Z axis for all patterns for the given subject and activity         | -1 to 1            |
| fBodyAccMag-mean()          | 18     | Mean value of the mean of the frequency domain  body acceleration signal magnitude for all patterns for the given subject and activity                    | -1 to 1            |
| fBodyAccMag-std()           | 18     | Mean value of the standard deviation of the frequency domain  body acceleration signal magnitude for all patterns for the given subject and activity      | -1 to 1            |
| fBodyBodyAccJerkMag-mean()  | 18     | Mean value of the mean of the frequency domain  body acceleration signal jerk magnitude for all patterns for the given subject and activity               | -1 to 1            |
| fBodyBodyAccJerkMag-std()   | 18     | Mean value of the standard deviation of the frequency domain  body acceleration signal jerk magnitude for all patterns for the given subject and activity | -1 to 1            |
| fBodyBodyGyroMag-mean()     | 18     | Mean value of the mean of the frequency domain  body gyroscope signal magnitude for all patterns for the given subject and activity                       | -1 to 1            |
| fBodyBodyGyroMag-std()      | 18     | Mean value of the standard deviation of the frequency domain  body gyroscope signal magnitude for all patterns for the given subject and activity         | -1 to 1            |
| fBodyBodyGyroJerkMag-mean() | 18     | Mean value of the mean of the frequency domain  body gyroscope signal jerk magnitude for all patterns for the given subject and activity                  | -1 to 1            |
| fBodyBodyGyroJerkMag-std()  | 18     | Mean value of the standard deviation of the frequency domain  body gyroscope signal jerk magnitude for all patterns for the given subject and activity    | -1 to 1            |



