# Codebook

The dataset contains data collected from the accelerometers from the Samsung Galaxy S smartphone. Data is collected for 30 subjects and in 6 different activities. 

The original dataset contains a number of statistics of the data from different sensors. This dataset originally contained 561 variables for 10299 observations.

This dataset contains the averages of each variable for each activity and each subject. This only concerns variables from the original dataset that include means or standard deviations. This dataset therefore contains 180 observations for 68 variables.

## Variables
There are 68 variables in total.
* Activity: A labeled factor variable for one of the 6 activities
  1. Walking
  2. Walking upstairs
  3. Walking downstairs
  4. Sitting
  5. Standing
  6. Laying
* Subject: One of the 30 subjects identified by a simple id between 1 and 30
* Measurement variables: There are 66 measurement variables in total. These are averages of the original sensor data. This data is normalized and will fall in the range [-1,1]. These are data from a combination of sensors. The keywords in the variable names explain what the variables mean:
  * Time: Indicating a time domain signal, captured at a rate of 50 Hz
  * FFT: Indicating a Fast Fourier Transform 
  * Body: Signal based on the body of the subject
  * Gravity: Signal based on gravitational force
  * Acc: Indicating an acceleration signal
  * Gyro: Indicating measurement from the gyroscope
  * Jerk: Indicating a sudden movement, derived from body acceleration and angular velocity
  * Mag: Indicating the magnitude of the movement
  * Mean: Indicating a mean
  * Std: Indicating a standard deviation
  * X, Y, Z: Denotes the three axes of measurement, X, Y and Z


## Full variable list
* Activity
* Subject
* MeanOf.Time.BodyAcc.Mean.X
* MeanOf.Time.BodyAcc.Mean.Y
* MeanOf.Time.BodyAcc.Mean.Z
* MeanOf.Time.BodyAcc.Std.X
* MeanOf.Time.BodyAcc.Std.Y
* MeanOf.Time.BodyAcc.Std.Z
* MeanOf.Time.GravityAcc.Mean.X
* MeanOf.Time.GravityAcc.Mean.Y
* MeanOf.Time.GravityAcc.Mean.Z
* MeanOf.Time.GravityAcc.Std.X
* MeanOf.Time.GravityAcc.Std.Y
* MeanOf.Time.GravityAcc.Std.Z
* MeanOf.Time.BodyAccJerk.Mean.X
* MeanOf.Time.BodyAccJerk.Mean.Y
* MeanOf.Time.BodyAccJerk.Mean.Z
* MeanOf.Time.BodyAccJerk.Std.X
* MeanOf.Time.BodyAccJerk.Std.Y
* MeanOf.Time.BodyAccJerk.Std.Z
* MeanOf.Time.BodyGyro.Mean.X
* MeanOf.Time.BodyGyro.Mean.Y
* MeanOf.Time.BodyGyro.Mean.Z
* MeanOf.Time.BodyGyro.Std.X
* MeanOf.Time.BodyGyro.Std.Y
* MeanOf.Time.BodyGyro.Std.Z
* MeanOf.Time.BodyGyroJerk.Mean.X
* MeanOf.Time.BodyGyroJerk.Mean.Y
* MeanOf.Time.BodyGyroJerk.Mean.Z
* MeanOf.Time.BodyGyroJerk.Std.X
* MeanOf.Time.BodyGyroJerk.Std.Y
* MeanOf.Time.BodyGyroJerk.Std.Z
* MeanOf.Time.BodyAccMag.Mean
* MeanOf.Time.BodyAccMag.Std
* MeanOf.Time.GravityAccMag.Mean
* MeanOf.Time.GravityAccMag.Std
* MeanOf.Time.BodyAccJerkMag.Mean
* MeanOf.Time.BodyAccJerkMag.Std
* MeanOf.Time.BodyGyroMag.Mean
* MeanOf.Time.BodyGyroMag.Std
* MeanOf.Time.BodyGyroJerkMag.Mea
* MeanOf.Time.BodyGyroJerkMag.Std
* MeanOf.FFT.BodyAcc.Mean.X
* MeanOf.FFT.BodyAcc.Mean.Y
* MeanOf.FFT.BodyAcc.Mean.Z
* MeanOf.FFT.BodyAcc.Std.X
* MeanOf.FFT.BodyAcc.Std.Y
* MeanOf.FFT.BodyAcc.Std.Z
* MeanOf.FFT.BodyAccJerk.Mean.X
* MeanOf.FFT.BodyAccJerk.Mean.Y
* MeanOf.FFT.BodyAccJerk.Mean.Z
* MeanOf.FFT.BodyAccJerk.Std.X
* MeanOf.FFT.BodyAccJerk.Std.Y
* MeanOf.FFT.BodyAccJerk.Std.Z
* MeanOf.FFT.BodyGyro.Mean.X
* MeanOf.FFT.BodyGyro.Mean.Y
* MeanOf.FFT.BodyGyro.Mean.Z
* MeanOf.FFT.BodyGyro.Std.X
* MeanOf.FFT.BodyGyro.Std.Y
* MeanOf.FFT.BodyGyro.Std.Z
* MeanOf.FFT.BodyAccMag.Mean
* MeanOf.FFT.BodyAccMag.Std
* MeanOf.FFT.BodyBodyAccJerkMag.Mean
* MeanOf.FFT.BodyBodyAccJerkMag.Std
* MeanOf.FFT.BodyBodyGyroMag.Mean
* MeanOf.FFT.BodyBodyGyroMag.Std
* MeanOf.FFT.BodyBodyGyroJerkMag.Mean
* MeanOf.FFT.BodyBodyGyroJerkMag.Std

## Further info
Refer to the readme files included in the zipfile of the original data set
