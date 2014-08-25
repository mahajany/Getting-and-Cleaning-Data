#Codeook for Course Project -  Getting and Cleaning Data
##Human Activity Recognition Using Smartphones Dataset Version 1.0
###Orgnial datasets by:
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory, DITEN - Università degli Studi di Genova. Via Opera Pia 11A, I-16145, Genoa, Italy. activityrecognition@smartlab.ws www.smartlab.ws

## The aim of this Coursera project is to:
Dvelope an R-Script (named as run_analysis.R), which could create a tidy dataset - a datset containg mean for all the activities for all the subjects. For more details, please refer to the information given below.
##Input: 
UCI HAR Dataset
##Ouput: 
###run_analysis.Output.txt:
A tidy dataset, contains average for each subject and activity. 
For variable names, kindly refer to the end of this file, and for scripts related information (how to run, variables etc.) please refer to README.md.

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

###For each record it is provided:
* Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
* Triaxial Angular velocity from the gyroscope. 
* A 561-feature vector with time and frequency domain variables. 
* Its activity label. 
* An identifier of the subject who carried out the experiment.

###The dataset includes the following files:
* 'README.txt'
* 'features_info.txt': Shows information about the variables used on the feature vector.
* 'features.txt': List of all features.
* 'activity_labels.txt': Links the class labels with their activity name.
* 'train/X_train.txt': Training set.
* 'train/y_train.txt': Training labels.
* 'test/X_test.txt': Test set.
* 'test/y_test.txt': Test labels.

###The following files are available for the train and test data. Their descriptions are equivalent. 
* 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

* 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

* 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

* 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

###Notes: 
* Features are normalized and bounded within [*1,1].
- Each feature vector is a row on the text file.


 
#Variables' description:

###Column-1: Activities:
Physical activities, can have any of following 6 values:
* WALKING
* WALKING_UPSTAIRS
* WALKING_DOWNSTAIRS
* SITTING
* STANDING
* LAYING

###Column-2: Subjects:
Subjects undergiong tests - can have ID's in the range 1-30.


###Column-3-563: Features 
(Please refer to http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones):
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. 

Time related were captureded at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 

Accleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Body linear acceleration and angular velocity were derived in time to obtain Jerk signals ; and the magnitude of these three-dimensional signals were calculated using the Euclidean norm.

It was followed by a Fast Fourier Transform (FFT) was applied to some of these signals producing frequency domain. 

Suffizes "XYZ"  is used to denote 3-axial signals in the X, Y and Z directions.

* TimeBodyAccmeanX 
* TimeBodyAccmeanY 
* TimeBodyAccmeanZ 
* TimeBodyAccstdX 
* TimeBodyAccstdY 
* TimeBodyAccstdZ 
* TimeBodyAccmadX 
* TimeBodyAccmadY 
* TimeBodyAccmadZ 
* TimeBodyAccmaxX 
* TimeBodyAccmaxY 
* TimeBodyAccmaxZ 
* TimeBodyAccminX 
* TimeBodyAccminY 
* TimeBodyAccminZ 
* TimeBodyAccsma 
* TimeBodyAccenergyX 
* TimeBodyAccenergyY 
* TimeBodyAccenergyZ 
* TimeBodyAcciqrX 
* TimeBodyAcciqrY 
* TimeBodyAcciqrZ 
* TimeBodyAccentropyX 
* TimeBodyAccentropyY 
* TimeBodyAccentropyZ 
* TimeBodyAccarCoeffX1 
* TimeBodyAccarCoeffX2 
* TimeBodyAccarCoeffX3 
* TimeBodyAccarCoeffX4 
* TimeBodyAccarCoeffY1 
* TimeBodyAccarCoeffY2 
* TimeBodyAccarCoeffY3 
* TimeBodyAccarCoeffY4 
* TimeBodyAccarCoeffZ1 
* TimeBodyAccarCoeffZ2 
* TimeBodyAccarCoeffZ3 
* TimeBodyAccarCoeffZ4 
* TimeBodyAcccorrelationXY 
* TimeBodyAcccorrelationXZ 
* TimeBodyAcccorrelationYZ 
* TimeGravityAccmeanX 
* TimeGravityAccmeanY 
* TimeGravityAccmeanZ 
* TimeGravityAccstdX 
* TimeGravityAccstdY 
* TimeGravityAccstdZ 
* TimeGravityAccmadX 
* TimeGravityAccmadY 
* TimeGravityAccmadZ 
* TimeGravityAccmaxX 
* TimeGravityAccmaxY 
* TimeGravityAccmaxZ 
* TimeGravityAccminX 
* TimeGravityAccminY 
* TimeGravityAccminZ 
* TimeGravityAccsma 
* TimeGravityAccenergyX 
* TimeGravityAccenergyY 
* TimeGravityAccenergyZ 
* TimeGravityAcciqrX 
* TimeGravityAcciqrY 
* TimeGravityAcciqrZ 
* TimeGravityAccentropyX 
* TimeGravityAccentropyY 
* TimeGravityAccentropyZ 
* TimeGravityAccarCoeffX1 
* TimeGravityAccarCoeffX2 
* TimeGravityAccarCoeffX3 
* TimeGravityAccarCoeffX4 
* TimeGravityAccarCoeffY1 
* TimeGravityAccarCoeffY2 
* TimeGravityAccarCoeffY3 
* TimeGravityAccarCoeffY4 
* TimeGravityAccarCoeffZ1 
* TimeGravityAccarCoeffZ2 
* TimeGravityAccarCoeffZ3 
* TimeGravityAccarCoeffZ4 
* TimeGravityAcccorrelationXY 
* TimeGravityAcccorrelationXZ 
* TimeGravityAcccorrelationYZ 
* TimeBodyAccJerkmeanX 
* TimeBodyAccJerkmeanY 
* TimeBodyAccJerkmeanZ 
* TimeBodyAccJerkstdX 
* TimeBodyAccJerkstdY 
* TimeBodyAccJerkstdZ 
* TimeBodyAccJerkmadX 
* TimeBodyAccJerkmadY 
* TimeBodyAccJerkmadZ 
* TimeBodyAccJerkmaxX 
* TimeBodyAccJerkmaxY 
* TimeBodyAccJerkmaxZ 
* TimeBodyAccJerkminX 
* TimeBodyAccJerkminY 
* TimeBodyAccJerkminZ 
* TimeBodyAccJerksma 
* TimeBodyAccJerkenergyX 
* TimeBodyAccJerkenergyY 
* TimeBodyAccJerkenergyZ 
* TimeBodyAccJerkiqrX 
* TimeBodyAccJerkiqrY 
* TimeBodyAccJerkiqrZ 
* TimeBodyAccJerkentropyX 
* TimeBodyAccJerkentropyY 
* TimeBodyAccJerkentropyZ 
* TimeBodyAccJerkarCoeffX1 
* TimeBodyAccJerkarCoeffX2 
* TimeBodyAccJerkarCoeffX3 
* TimeBodyAccJerkarCoeffX4 
* TimeBodyAccJerkarCoeffY1 
* TimeBodyAccJerkarCoeffY2 
* TimeBodyAccJerkarCoeffY3 
* TimeBodyAccJerkarCoeffY4 
* TimeBodyAccJerkarCoeffZ1 
* TimeBodyAccJerkarCoeffZ2 
* TimeBodyAccJerkarCoeffZ3 
* TimeBodyAccJerkarCoeffZ4 
* TimeBodyAccJerkcorrelationXY 
* TimeBodyAccJerkcorrelationXZ 
* TimeBodyAccJerkcorrelationYZ 
* TimeBodyGyromeanX 
* TimeBodyGyromeanY 
* TimeBodyGyromeanZ 
* TimeBodyGyrostdX 
* TimeBodyGyrostdY 
* TimeBodyGyrostdZ 
* TimeBodyGyromadX 
* TimeBodyGyromadY 
* TimeBodyGyromadZ 
* TimeBodyGyromaxX 
* TimeBodyGyromaxY 
* TimeBodyGyromaxZ 
* TimeBodyGyrominX 
* TimeBodyGyrominY 
* TimeBodyGyrominZ 
* TimeBodyGyrosma 
* TimeBodyGyroenergyX 
* TimeBodyGyroenergyY 
* TimeBodyGyroenergyZ 
* TimeBodyGyroiqrX 
* TimeBodyGyroiqrY 
* TimeBodyGyroiqrZ 
* TimeBodyGyroentropyX 
* TimeBodyGyroentropyY 
* TimeBodyGyroentropyZ 
* TimeBodyGyroarCoeffX1 
* TimeBodyGyroarCoeffX2 
* TimeBodyGyroarCoeffX3 
* TimeBodyGyroarCoeffX4 
* TimeBodyGyroarCoeffY1 
* TimeBodyGyroarCoeffY2 
* TimeBodyGyroarCoeffY3 
* TimeBodyGyroarCoeffY4 
* TimeBodyGyroarCoeffZ1 
* TimeBodyGyroarCoeffZ2 
* TimeBodyGyroarCoeffZ3 
* TimeBodyGyroarCoeffZ4 
* TimeBodyGyrocorrelationXY 
* TimeBodyGyrocorrelationXZ 
* TimeBodyGyrocorrelationYZ 
* TimeBodyGyroJerkmeanX 
* TimeBodyGyroJerkmeanY 
* TimeBodyGyroJerkmeanZ 
* TimeBodyGyroJerkstdX 
* TimeBodyGyroJerkstdY 
* TimeBodyGyroJerkstdZ 
* TimeBodyGyroJerkmadX 
* TimeBodyGyroJerkmadY 
* TimeBodyGyroJerkmadZ 
* TimeBodyGyroJerkmaxX 
* TimeBodyGyroJerkmaxY 
* TimeBodyGyroJerkmaxZ 
* TimeBodyGyroJerkminX 
* TimeBodyGyroJerkminY 
* TimeBodyGyroJerkminZ 
* TimeBodyGyroJerksma 
* TimeBodyGyroJerkenergyX 
* TimeBodyGyroJerkenergyY 
* TimeBodyGyroJerkenergyZ 
* TimeBodyGyroJerkiqrX 
* TimeBodyGyroJerkiqrY 
* TimeBodyGyroJerkiqrZ 
* TimeBodyGyroJerkentropyX 
* TimeBodyGyroJerkentropyY 
* TimeBodyGyroJerkentropyZ 
* TimeBodyGyroJerkarCoeffX1 
* TimeBodyGyroJerkarCoeffX2 
* TimeBodyGyroJerkarCoeffX3 
* TimeBodyGyroJerkarCoeffX4 
* TimeBodyGyroJerkarCoeffY1 
* TimeBodyGyroJerkarCoeffY2 
* TimeBodyGyroJerkarCoeffY3 
* TimeBodyGyroJerkarCoeffY4 
* TimeBodyGyroJerkarCoeffZ1 
* TimeBodyGyroJerkarCoeffZ2 
* TimeBodyGyroJerkarCoeffZ3 
* TimeBodyGyroJerkarCoeffZ4 
* TimeBodyGyroJerkcorrelationXY 
* TimeBodyGyroJerkcorrelationXZ 
* TimeBodyGyroJerkcorrelationYZ 
* TimeBodyAccMagmean 
* TimeBodyAccMagstd 
* TimeBodyAccMagmad 
* TimeBodyAccMagmax 
* TimeBodyAccMagmin 
* TimeBodyAccMagsma 
* TimeBodyAccMagenergy 
* TimeBodyAccMagiqr 
* TimeBodyAccMagentropy 
* TimeBodyAccMagarCoeff1 
* TimeBodyAccMagarCoeff2 
* TimeBodyAccMagarCoeff3 
* TimeBodyAccMagarCoeff4 
* TimeGravityAccMagmean 
* TimeGravityAccMagstd 
* TimeGravityAccMagmad 
* TimeGravityAccMagmax 
* TimeGravityAccMagmin 
* TimeGravityAccMagsma 
* TimeGravityAccMagenergy 
* TimeGravityAccMagiqr 
* TimeGravityAccMagentropy 
* TimeGravityAccMagarCoeff1 
* TimeGravityAccMagarCoeff2 
* TimeGravityAccMagarCoeff3 
* TimeGravityAccMagarCoeff4 
* TimeBodyAccJerkMagmean 
* TimeBodyAccJerkMagstd 
* TimeBodyAccJerkMagmad 
* TimeBodyAccJerkMagmax 
* TimeBodyAccJerkMagmin 
* TimeBodyAccJerkMagsma 
* TimeBodyAccJerkMagenergy 
* TimeBodyAccJerkMagiqr 
* TimeBodyAccJerkMagentropy 
* TimeBodyAccJerkMagarCoeff1 
* TimeBodyAccJerkMagarCoeff2 
* TimeBodyAccJerkMagarCoeff3 
* TimeBodyAccJerkMagarCoeff4 
* TimeBodyGyroMagmean 
* TimeBodyGyroMagstd 
* TimeBodyGyroMagmad 
* TimeBodyGyroMagmax 
* TimeBodyGyroMagmin 
* TimeBodyGyroMagsma 
* TimeBodyGyroMagenergy 
* TimeBodyGyroMagiqr 
* TimeBodyGyroMagentropy 
* TimeBodyGyroMagarCoeff1 
* TimeBodyGyroMagarCoeff2 
* TimeBodyGyroMagarCoeff3 
* TimeBodyGyroMagarCoeff4 
* TimeBodyGyroJerkMagmean 
* TimeBodyGyroJerkMagstd 
* TimeBodyGyroJerkMagmad 
* TimeBodyGyroJerkMagmax 
* TimeBodyGyroJerkMagmin 
* TimeBodyGyroJerkMagsma 
* TimeBodyGyroJerkMagenergy 
* TimeBodyGyroJerkMagiqr 
* TimeBodyGyroJerkMagentropy 
* TimeBodyGyroJerkMagarCoeff1 
* TimeBodyGyroJerkMagarCoeff2 
* TimeBodyGyroJerkMagarCoeff3 
* TimeBodyGyroJerkMagarCoeff4 
* FreqBodyAccmeanX 
* FreqBodyAccmeanY 
* FreqBodyAccmeanZ 
* FreqBodyAccstdX 
* FreqBodyAccstdY 
* FreqBodyAccstdZ 
* FreqBodyAccmadX 
* FreqBodyAccmadY 
* FreqBodyAccmadZ 
* FreqBodyAccmaxX 
* FreqBodyAccmaxY 
* FreqBodyAccmaxZ 
* FreqBodyAccminX 
* FreqBodyAccminY 
* FreqBodyAccminZ 
* FreqBodyAccsma 
* FreqBodyAccenergyX 
* FreqBodyAccenergyY 
* FreqBodyAccenergyZ 
* FreqBodyAcciqrX 
* FreqBodyAcciqrY 
* FreqBodyAcciqrZ 
* FreqBodyAccentropyX 
* FreqBodyAccentropyY 
* FreqBodyAccentropyZ 
* FreqBodyAccmaxIndsX 
* FreqBodyAccmaxIndsY 
* FreqBodyAccmaxIndsZ 
* FreqBodyAccmeanFreqX 
* FreqBodyAccmeanFreqY 
* FreqBodyAccmeanFreqZ 
* FreqBodyAccskewnessX 
* FreqBodyAcckurtosisX 
* FreqBodyAccskewnessY 
* FreqBodyAcckurtosisY 
* FreqBodyAccskewnessZ 
* FreqBodyAcckurtosisZ 
* FreqBodyAccbandsEnergy18 
* FreqBodyAccbandsEnergy916 
* FreqBodyAccbandsEnergy1724 
* FreqBodyAccbandsEnergy2532 
* FreqBodyAccbandsEnergy3340 
* FreqBodyAccbandsEnergy4148 
* FreqBodyAccbandsEnergy4956 
* FreqBodyAccbandsEnergy5764 
* FreqBodyAccbandsEnergy116 
* FreqBodyAccbandsEnergy1732 
* FreqBodyAccbandsEnergy3348 
* FreqBodyAccbandsEnergy4964 
* FreqBodyAccbandsEnergy124 
* FreqBodyAccbandsEnergy2548 
* FreqBodyAccbandsEnergy181 
* FreqBodyAccbandsEnergy9161 
* FreqBodyAccbandsEnergy17241 
* FreqBodyAccbandsEnergy25321 
* FreqBodyAccbandsEnergy33401 
* FreqBodyAccbandsEnergy41481 
* FreqBodyAccbandsEnergy49561 
* FreqBodyAccbandsEnergy57641 
* FreqBodyAccbandsEnergy1161 
* FreqBodyAccbandsEnergy17321 
* FreqBodyAccbandsEnergy33481 
* FreqBodyAccbandsEnergy49641 
* FreqBodyAccbandsEnergy1241 
* FreqBodyAccbandsEnergy25481 
* FreqBodyAccbandsEnergy182 
* FreqBodyAccbandsEnergy9162 
* FreqBodyAccbandsEnergy17242 
* FreqBodyAccbandsEnergy25322 
* FreqBodyAccbandsEnergy33402 
* FreqBodyAccbandsEnergy41482 
* FreqBodyAccbandsEnergy49562 
* FreqBodyAccbandsEnergy57642 
* FreqBodyAccbandsEnergy1162 
* FreqBodyAccbandsEnergy17322 
* FreqBodyAccbandsEnergy33482 
* FreqBodyAccbandsEnergy49642 
* FreqBodyAccbandsEnergy1242 
* FreqBodyAccbandsEnergy25482 
* FreqBodyAccJerkmeanX 
* FreqBodyAccJerkmeanY 
* FreqBodyAccJerkmeanZ 
* FreqBodyAccJerkstdX 
* FreqBodyAccJerkstdY 
* FreqBodyAccJerkstdZ 
* FreqBodyAccJerkmadX 
* FreqBodyAccJerkmadY 
* FreqBodyAccJerkmadZ 
* FreqBodyAccJerkmaxX 
* FreqBodyAccJerkmaxY 
* FreqBodyAccJerkmaxZ 
* FreqBodyAccJerkminX 
* FreqBodyAccJerkminY 
* FreqBodyAccJerkminZ 
* FreqBodyAccJerksma 
* FreqBodyAccJerkenergyX 
* FreqBodyAccJerkenergyY 
* FreqBodyAccJerkenergyZ 
* FreqBodyAccJerkiqrX 
* FreqBodyAccJerkiqrY 
* FreqBodyAccJerkiqrZ 
* FreqBodyAccJerkentropyX 
* FreqBodyAccJerkentropyY 
* FreqBodyAccJerkentropyZ 
* FreqBodyAccJerkmaxIndsX 
* FreqBodyAccJerkmaxIndsY 
* FreqBodyAccJerkmaxIndsZ 
* FreqBodyAccJerkmeanFreqX 
* FreqBodyAccJerkmeanFreqY 
* FreqBodyAccJerkmeanFreqZ 
* FreqBodyAccJerkskewnessX 
* FreqBodyAccJerkkurtosisX 
* FreqBodyAccJerkskewnessY 
* FreqBodyAccJerkkurtosisY 
* FreqBodyAccJerkskewnessZ 
* FreqBodyAccJerkkurtosisZ 
* FreqBodyAccJerkbandsEnergy18 
* FreqBodyAccJerkbandsEnergy916 
* FreqBodyAccJerkbandsEnergy1724 
* FreqBodyAccJerkbandsEnergy2532 
* FreqBodyAccJerkbandsEnergy3340 
* FreqBodyAccJerkbandsEnergy4148 
* FreqBodyAccJerkbandsEnergy4956 
* FreqBodyAccJerkbandsEnergy5764 
* FreqBodyAccJerkbandsEnergy116 
* FreqBodyAccJerkbandsEnergy1732 
* FreqBodyAccJerkbandsEnergy3348 
* FreqBodyAccJerkbandsEnergy4964 
* FreqBodyAccJerkbandsEnergy124 
* FreqBodyAccJerkbandsEnergy2548 
* FreqBodyAccJerkbandsEnergy181 
* FreqBodyAccJerkbandsEnergy9161 
* FreqBodyAccJerkbandsEnergy17241 
* FreqBodyAccJerkbandsEnergy25321 
* FreqBodyAccJerkbandsEnergy33401 
* FreqBodyAccJerkbandsEnergy41481 
* FreqBodyAccJerkbandsEnergy49561 
* FreqBodyAccJerkbandsEnergy57641 
* FreqBodyAccJerkbandsEnergy1161 
* FreqBodyAccJerkbandsEnergy17321 
* FreqBodyAccJerkbandsEnergy33481 
* FreqBodyAccJerkbandsEnergy49641 
* FreqBodyAccJerkbandsEnergy1241 
* FreqBodyAccJerkbandsEnergy25481 
* FreqBodyAccJerkbandsEnergy182 
* FreqBodyAccJerkbandsEnergy9162 
* FreqBodyAccJerkbandsEnergy17242 
* FreqBodyAccJerkbandsEnergy25322 
* FreqBodyAccJerkbandsEnergy33402 
* FreqBodyAccJerkbandsEnergy41482 
* FreqBodyAccJerkbandsEnergy49562 
* FreqBodyAccJerkbandsEnergy57642 
* FreqBodyAccJerkbandsEnergy1162 
* FreqBodyAccJerkbandsEnergy17322 
* FreqBodyAccJerkbandsEnergy33482 
* FreqBodyAccJerkbandsEnergy49642 
* FreqBodyAccJerkbandsEnergy1242 
* FreqBodyAccJerkbandsEnergy25482 
* FreqBodyGyromeanX 
* FreqBodyGyromeanY 
* FreqBodyGyromeanZ 
* FreqBodyGyrostdX 
* FreqBodyGyrostdY 
* FreqBodyGyrostdZ 
* FreqBodyGyromadX 
* FreqBodyGyromadY 
* FreqBodyGyromadZ 
* FreqBodyGyromaxX 
* FreqBodyGyromaxY 
* FreqBodyGyromaxZ 
* FreqBodyGyrominX 
* FreqBodyGyrominY 
* FreqBodyGyrominZ 
* FreqBodyGyrosma 
* FreqBodyGyroenergyX 
* FreqBodyGyroenergyY 
* FreqBodyGyroenergyZ 
* FreqBodyGyroiqrX 
* FreqBodyGyroiqrY 
* FreqBodyGyroiqrZ 
* FreqBodyGyroentropyX 
* FreqBodyGyroentropyY 
* FreqBodyGyroentropyZ 
* FreqBodyGyromaxIndsX 
* FreqBodyGyromaxIndsY 
* FreqBodyGyromaxIndsZ 
* FreqBodyGyromeanFreqX 
* FreqBodyGyromeanFreqY 
* FreqBodyGyromeanFreqZ 
* FreqBodyGyroskewnessX 
* FreqBodyGyrokurtosisX 
* FreqBodyGyroskewnessY 
* FreqBodyGyrokurtosisY 
* FreqBodyGyroskewnessZ 
* FreqBodyGyrokurtosisZ 
* FreqBodyGyrobandsEnergy18 
* FreqBodyGyrobandsEnergy916 
* FreqBodyGyrobandsEnergy1724 
* FreqBodyGyrobandsEnergy2532 
* FreqBodyGyrobandsEnergy3340 
* FreqBodyGyrobandsEnergy4148 
* FreqBodyGyrobandsEnergy4956 
* FreqBodyGyrobandsEnergy5764 
* FreqBodyGyrobandsEnergy116 
* FreqBodyGyrobandsEnergy1732 
* FreqBodyGyrobandsEnergy3348 
* FreqBodyGyrobandsEnergy4964 
* FreqBodyGyrobandsEnergy124 
* FreqBodyGyrobandsEnergy2548 
* FreqBodyGyrobandsEnergy181 
* FreqBodyGyrobandsEnergy9161 
* FreqBodyGyrobandsEnergy17241 
* FreqBodyGyrobandsEnergy25321 
* FreqBodyGyrobandsEnergy33401 
* FreqBodyGyrobandsEnergy41481 
* FreqBodyGyrobandsEnergy49561 
* FreqBodyGyrobandsEnergy57641 
* FreqBodyGyrobandsEnergy1161 
* FreqBodyGyrobandsEnergy17321 
* FreqBodyGyrobandsEnergy33481 
* FreqBodyGyrobandsEnergy49641 
* FreqBodyGyrobandsEnergy1241 
* FreqBodyGyrobandsEnergy25481 
* FreqBodyGyrobandsEnergy182 
* FreqBodyGyrobandsEnergy9162 
* FreqBodyGyrobandsEnergy17242 
* FreqBodyGyrobandsEnergy25322 
* FreqBodyGyrobandsEnergy33402 
* FreqBodyGyrobandsEnergy41482 
* FreqBodyGyrobandsEnergy49562 
* FreqBodyGyrobandsEnergy57642 
* FreqBodyGyrobandsEnergy1162 
* FreqBodyGyrobandsEnergy17322 
* FreqBodyGyrobandsEnergy33482 
* FreqBodyGyrobandsEnergy49642 
* FreqBodyGyrobandsEnergy1242 
* FreqBodyGyrobandsEnergy25482 
* FreqBodyAccMagmean 
* FreqBodyAccMagstd 
* FreqBodyAccMagmad 
* FreqBodyAccMagmax 
* FreqBodyAccMagmin 
* FreqBodyAccMagsma 
* FreqBodyAccMagenergy 
* FreqBodyAccMagiqr 
* FreqBodyAccMagentropy 
* FreqBodyAccMagmaxInds 
* FreqBodyAccMagmeanFreq 
* FreqBodyAccMagskewness 
* FreqBodyAccMagkurtosis 
* FreqBodyBodyAccJerkMagmean 
* FreqBodyBodyAccJerkMagstd 
* FreqBodyBodyAccJerkMagmad 
* FreqBodyBodyAccJerkMagmax 
* FreqBodyBodyAccJerkMagmin 
* FreqBodyBodyAccJerkMagsma 
* FreqBodyBodyAccJerkMagenergy 
* FreqBodyBodyAccJerkMagiqr 
* FreqBodyBodyAccJerkMagentropy 
* FreqBodyBodyAccJerkMagmaxInds 
* FreqBodyBodyAccJerkMagmeanFreq 
* FreqBodyBodyAccJerkMagskewness 
* FreqBodyBodyAccJerkMagkurtosis 
* FreqBodyBodyGyroMagmean 
* FreqBodyBodyGyroMagstd 
* FreqBodyBodyGyroMagmad 
* FreqBodyBodyGyroMagmax 
* FreqBodyBodyGyroMagmin 
* FreqBodyBodyGyroMagsma 
* FreqBodyBodyGyroMagenergy 
* FreqBodyBodyGyroMagiqr 
* FreqBodyBodyGyroMagentropy 
* FreqBodyBodyGyroMagmaxInds 
* FreqBodyBodyGyroMagmeanFreq 
* FreqBodyBodyGyroMagskewness 
* FreqBodyBodyGyroMagkurtosis 
* FreqBodyBodyGyroJerkMagmean 
* FreqBodyBodyGyroJerkMagstd 
* FreqBodyBodyGyroJerkMagmad 
* FreqBodyBodyGyroJerkMagmax 
* FreqBodyBodyGyroJerkMagmin 
* FreqBodyBodyGyroJerkMagsma 
* FreqBodyBodyGyroJerkMagenergy 
* FreqBodyBodyGyroJerkMagiqr 
* FreqBodyBodyGyroJerkMagentropy 
* FreqBodyBodyGyroJerkMagmaxInds 
* FreqBodyBodyGyroJerkMagmeanFreq 
* FreqBodyBodyGyroJerkMagskewness 
* FreqBodyBodyGyroJerkMagkurtosis 
* angle(TimeBodyAccMeangravity) 
* angle(TimeBodyAccJerkMean)gravityMean) 
* angle(TimeBodyGyroMeangravityMean) 
* angle(TimeBodyGyroJerkMeangravityMean) 
* angle(XgravityMean) 
* angle(YgravityMean) 
* angle(ZgravityMean)
