#ReadMe for Human Activity Recognition - Coursera "Getting and Cleaning Data" course project

##Citations:
Bache, K. & Lichman, M. (2013). UCI Machine Learning Repository [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones]. 
Irvine, CA: University of California, School of Information and Computer Science.

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz.  
Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine.  
International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

- - -

##Background
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

See citations for further information.

##run_analysis.R
The purpose of this script is to produce a tidy data frame summarizing the the Human Activity Recognition data located at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones by test subject and activity.

The script first loads and merges each of the test and training data sets with their respoective test subject and activity definitions. It then merges the two test and training data frames into one.

After the data frames have been merged the columns representing a mean, standard deviation, test subject or activity name are passed to a new data frame titled "mtrimmed".

The "mtrimmed" data frame is then used to create a new data frame called "tidyData" which contains the mean of every value in the "mtrimmed" data frame summarized by test subject and activity name.

Finally, the tidyData is written to a tab delimited file titled "summary_by_subject_and_activity.txt".