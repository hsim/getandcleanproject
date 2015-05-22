# Codebook for tidydataset.txt

Coursera Data Science Specialization - Getting and Cleaning Data - Course Project

Written by Hao-Wen Sim, May 2015

## Data Source Reference

The source of this dataset is the Human Activity Recognition Using Smartphones DataSet Version 1.0.

This is available at http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

The associated website is http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.

Reference:
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. 
Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. 
International Workshop of Ambient Assisted Living (IWAAL 2012). 
Vitoria-Gasteiz, Spain. Dec 2012.

## Overview of the Data Source

Data was collected from accelerometers from the Samsung Galaxy S II smartphone.

There was a group of 30 subjects.
70% of the subjects were randomly selected to generate the training data set.
The remaining 30% of the subjects were selected to generate the test data set.

Each subject performed 6 activities (walking, walking upstairs, walking downstairs, sitting, standing, laying)
whilst wearing the Samsung Galaxy S II smartphone.
The embedded accelerometer and gyroscope were used to capture linear acceleration and angular velocity data.

The raw data were the accelerometer (tAcc-XYZ) and gyroscope 3-axial raw signals (tGyro-XYZ).
The prefix 't' denotes that these were time domain signals.

The accelerometer signals were divided into body (tBodyAcc-XYZ) and gravity components (tGravityAcc-XYZ).

The gyroscope signals were all relabelled as body components (tBodyGyro-XYZ).

For the body components, jerk signals were calculated (tBodyAccJerk-XYZ, tBodyGyroJerk-XYZ).

Signal magnitudes were calculated for all of these 
(tBodyAccMag, tGravityAccMag, tBodyGyroMag, tBodyAccJerkMag, tBodyGyroJerkMag).

Finally, some of these were transformed into frequency domain signals 
(fBodyAcc-XYZ, fBodyGyro-XYZ, fBodyAccJerk-XYZ, fBodyAccMag, fBodyGyroMag, fBodyAccJerkMag, fBodyGyroJerkMag).
These are denoted with the prefix 'f'.

For each of these signals, multiple signal variables were computed 
(mean, standard deviation, median absolute deviation, maximum, minimum etc).

## Overview of the tidydataset

Data from the above training and test data sets were merged together.

For each signal, only signal variables pertaining to mean and standard deviation were kept.

Then, for each combination of subject vs. activity vs. signal variable, 
the average result was computed.

This has been displayed as a tidy data set:

* each column contains one variable (independent measurements of subject/activity actions, 
which have been summarised as averages of signal variables)

* each row contains one observation (each subject/activity action i.e. 30 subjects x 6 actions = 180 rows)

## Naming Convention

The names of Columns 3 to 68 have been constructed sequentially using the following naming convention:

* average - to emphasise that these are calculated summaries (averages) of signal variables

* t or f - time vs. frequency domain

* body or gravity - body vs. gravity component

* acc or gyro - linear acceleration vs. angular velocity

* jerk - if computed jerk

* mag - if computed magnitude

* mean or std - signal mean vs. signal standard deviation

* x, y or z - if x vs. y vs. z axis

## Data Dictionary

### Column 1

**Variable Name:**
subject

**Description:**
Uniquely identifies each subject in the study.

**Data Type:**
Integer class.
Units: unique identifier.
`1..30`

### Column 2

**Variable Name:**
activity

**Description:**
Identifies the activity the subject was engaging in.

**Data Type:**
Factor class.
`LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS`

### Column 3

**Variable Name:**
averagetbodyaccmeanx

**Description:**
The *signal* is linear acceleration (body component) in the x axis.
This is for the time domain.
The *signal variable* is the mean of this signal.
The *value* shown is the average of this signal variable for the subject/activity combination.

**Data Type:**
Numeric class.
Units: all data have been normalised.
`-1..+1`

### Column 4

**Variable Name:**
averagetbodyaccmeany

**Description:**
The *signal* is linear acceleration (body component) in the y axis.
This is for the time domain.
The *signal variable* is the mean of this signal.
The *value* shown is the average of this signal variable for the subject/activity combination.

**Data Type:**
Numeric class.
Units: all data have been normalised.
`-1..+1`

### Column 5

**Variable Name:**
averagetbodyaccmeanz

**Description:**
The *signal* is linear acceleration (body component) in the z axis.
This is for the time domain.
The *signal variable* is the mean of this signal.
The *value* shown is the average of this signal variable for the subject/activity combination.

**Data Type:**
Numeric class.
Units: all data have been normalised.
`-1..+1`

### Column 6

**Variable Name:**
averagetbodyaccstdx

**Description:**
The *signal* is linear acceleration (body component) in the x axis.
This is for the time domain.
The *signal variable* is the standard deviation of this signal.
The *value* shown is the average of this signal variable for the subject/activity combination.

**Data Type:**
Numeric class.
Units: all data have been normalised.
`-1..+1`

### Column 7

**Variable Name:**
averagetbodyaccstdy

**Description:**
The *signal* is linear acceleration (body component) in the y axis.
This is for the time domain.
The *signal variable* is the standard deviation of this signal.
The *value* shown is the average of this signal variable for the subject/activity combination.

**Data Type:**
Numeric class.
Units: all data have been normalised.
`-1..+1`

### Column 8

**Variable Name:**
averagetbodyaccstdz

**Description:**
The *signal* is linear acceleration (body component) in the z axis.
This is for the time domain.
The *signal variable* is the standard deviation of this signal.
The *value* shown is the average of this signal variable for the subject/activity combination.

**Data Type:**
Numeric class.
Units: all data have been normalised.
`-1..+1`

### Column 9

**Variable Name:**
averagetgravityaccmeanx

**Description:**
The *signal* is linear acceleration (gravity component) in the x axis.
This is for the time domain.
The *signal variable* is the mean of this signal.
The *value* shown is the average of this signal variable for the subject/activity combination.

**Data Type:**
Numeric class.
Units: all data have been normalised.
`-1..+1`

### Column 10

**Variable Name:**
averagetgravityaccmeany

**Description:**
The *signal* is linear acceleration (gravity component) in the y axis.
This is for the time domain.
The *signal variable* is the mean of this signal.
The *value* shown is the average of this signal variable for the subject/activity combination.

**Data Type:**
Numeric class.
Units: all data have been normalised.
`-1..+1`

### Column 11

**Variable Name:**
averagetgravityaccmeanz

**Description:**
The *signal* is linear acceleration (gravity component) in the z axis.
This is for the time domain.
The *signal variable* is the mean of this signal.
The *value* shown is the average of this signal variable for the subject/activity combination.

**Data Type:**
Numeric class.
Units: all data have been normalised.
`-1..+1`

### Column 12

**Variable Name:**
averagetgravityaccstdx

**Description:**
The *signal* is linear acceleration (gravity component) in the x axis.
This is for the time domain.
The *signal variable* is the standard deviation of this signal.
The *value* shown is the average of this signal variable for the subject/activity combination.

**Data Type:**
Numeric class.
Units: all data have been normalised.
`-1..+1`

### Column 13

**Variable Name:**
averagetgravityaccstdy

**Description:**
The *signal* is linear acceleration (gravity component) in the y axis.
This is for the time domain.
The *signal variable* is the standard deviation of this signal.
The *value* shown is the average of this signal variable for the subject/activity combination.

**Data Type:**
Numeric class.
Units: all data have been normalised.
`-1..+1`

### Column 14

**Variable Name:**
averagetgravityaccstdz

**Description:**
The *signal* is linear acceleration (gravity component) in the z axis.
This is for the time domain.
The *signal variable* is the standard deviation of this signal.
The *value* shown is the average of this signal variable for the subject/activity combination.

**Data Type:**
Numeric class.
Units: all data have been normalised.
`-1..+1`

### Column 15

**Variable Name:**
averagetbodyaccjerkmeanx

**Description:**
The *signal* is the jerk signal of the linear acceleration (body component) in the x axis.
This is for the time domain.
The *signal variable* is the mean of this signal.
The *value* shown is the average of this signal variable for the subject/activity combination.

**Data Type:**
Numeric class.
Units: all data have been normalised.
`-1..+1`

### Column 16

**Variable Name:**
averagetbodyaccjerkmeany

**Description:**
The *signal* is the jerk signal of the linear acceleration (body component) in the y axis.
This is for the time domain.
The *signal variable* is the mean of this signal.
The *value* shown is the average of this signal variable for the subject/activity combination.

**Data Type:**
Numeric class.
Units: all data have been normalised.
`-1..+1`

### Column 17

**Variable Name:**
averagetbodyaccjerkmeanz

**Description:**
The *signal* is the jerk signal of the linear acceleration (body component) in the z axis.
This is for the time domain.
The *signal variable* is the mean of this signal.
The *value* shown is the average of this signal variable for the subject/activity combination.

**Data Type:**
Numeric class.
Units: all data have been normalised.
`-1..+1`

### Column 18

**Variable Name:**
averagetbodyaccjerkstdx

**Description:**
The *signal* is the jerk signal of the linear acceleration (body component) in the x axis.
This is for the time domain.
The *signal variable* is the standard deviation of this signal.
The *value* shown is the average of this signal variable for the subject/activity combination.

**Data Type:**
Numeric class.
Units: all data have been normalised.
`-1..+1`

### Column 19

**Variable Name:**
averagetbodyaccjerkstdy

**Description:**
The *signal* is the jerk signal of the linear acceleration (body component) in the y axis.
This is for the time domain.
The *signal variable* is the standard deviation of this signal.
The *value* shown is the average of this signal variable for the subject/activity combination.

**Data Type:**
Numeric class.
Units: all data have been normalised.
`-1..+1`

### Column 20

**Variable Name:**
averagetbodyaccjerkstdz

**Description:**
The *signal* is the jerk signal of the linear acceleration (body component) in the z axis.
This is for the time domain.
The *signal variable* is the standard deviation of this signal.
The *value* shown is the average of this signal variable for the subject/activity combination.

**Data Type:**
Numeric class.
Units: all data have been normalised.
`-1..+1`

### Column 21

**Variable Name:**
averagetbodygyromeanx

**Description:**
The *signal* is the angular velocity (body component) in the x axis.
This is for the time domain.
The *signal variable* is the mean of this signal.
The *value* shown is the average of this signal variable for the subject/activity combination.

**Data Type:**
Numeric class.
Units: all data have been normalised.
`-1..+1`

### Column 22

**Variable Name:**
averagetbodygyromeany

**Description:**
The *signal* is the angular velocity (body component) in the y axis.
This is for the time domain.
The *signal variable* is the mean of this signal.
The *value* shown is the average of this signal variable for the subject/activity combination.

**Data Type:**
Numeric class.
Units: all data have been normalised.
`-1..+1`

### Column 23

**Variable Name:**
averagetbodygyromeanz

**Description:**
The *signal* is the angular velocity (body component) in the z axis.
This is for the time domain.
The *signal variable* is the mean of this signal.
The *value* shown is the average of this signal variable for the subject/activity combination.

**Data Type:**
Numeric class.
Units: all data have been normalised.
`-1..+1`

### Column 24

**Variable Name:**
averagetbodygyrostdx

**Description:**
The *signal* is the angular velocity (body component) in the x axis.
This is for the time domain.
The *signal variable* is the standard deviation of this signal.
The *value* shown is the average of this signal variable for the subject/activity combination.

**Data Type:**
Numeric class.
Units: all data have been normalised.
`-1..+1`

### Column 25

**Variable Name:**
averagetbodygyrostdy

**Description:**
The *signal* is the angular velocity (body component) in the y axis.
This is for the time domain.
The *signal variable* is the standard deviation of this signal.
The *value* shown is the average of this signal variable for the subject/activity combination.

**Data Type:**
Numeric class.
Units: all data have been normalised.
`-1..+1`

### Column 26

**Variable Name:**
averagetbodygyrostdz

**Description:**
The *signal* is the angular velocity (body component) in the z axis.
This is for the time domain.
The *signal variable* is the standard deviation of this signal.
The *value* shown is the average of this signal variable for the subject/activity combination.

**Data Type:**
Numeric class.
Units: all data have been normalised.
`-1..+1`

### Column 27

**Variable Name:**
averagetbodygyrojerkmeanx

**Description:**
The *signal* is the jerk signal of the angular velocity (body component) in the x axis.
This is for the time domain.
The *signal variable* is the mean of this signal.
The *value* shown is the average of this signal variable for the subject/activity combination.

**Data Type:**
Numeric class.
Units: all data have been normalised.
`-1..+1`

### Column 28

**Variable Name:**
averagetbodygyrojerkmeany

**Description:**
The *signal* is the jerk signal of the angular velocity (body component) in the y axis.
This is for the time domain.
The *signal variable* is the mean of this signal.
The *value* shown is the average of this signal variable for the subject/activity combination.

**Data Type:**
Numeric class.
Units: all data have been normalised.
`-1..+1`

### Column 29

**Variable Name:**
averagetbodygyrojerkmeanz

**Description:**
The *signal* is the jerk signal of the angular velocity (body component) in the z axis.
This is for the time domain.
The *signal variable* is the mean of this signal.
The *value* shown is the average of this signal variable for the subject/activity combination.

**Data Type:**
Numeric class.
Units: all data have been normalised.
`-1..+1`

### Column 30

**Variable Name:**
averagetbodygyrojerkstdx

**Description:**
The *signal* is the jerk signal of the angular velocity (body component) in the x axis.
This is for the time domain.
The *signal variable* is the standard deviation of this signal.
The *value* shown is the average of this signal variable for the subject/activity combination.

**Data Type:**
Numeric class.
Units: all data have been normalised.
`-1..+1`

### Column 31

**Variable Name:**
averagetbodygyrojerkstdy

**Description:**
The *signal* is the jerk signal of the angular velocity (body component) in the y axis.
This is for the time domain.
The *signal variable* is the standard deviation of this signal.
The *value* shown is the average of this signal variable for the subject/activity combination.

**Data Type:**
Numeric class.
Units: all data have been normalised.
`-1..+1`

### Column 32

**Variable Name:**
averagetbodygyrojerkstdz

**Description:**
The *signal* is the jerk signal of the angular velocity (body component) in the z axis.
This is for the time domain.
The *signal variable* is the standard deviation of this signal.
The *value* shown is the average of this signal variable for the subject/activity combination.

**Data Type:**
Numeric class.
Units: all data have been normalised.
`-1..+1`

### Column 33

**Variable Name:**
averagetbodyaccmagmean

**Description:**
The *signal* is the magnitude of the linear acceleration (body component).
This is for the time domain.
The *signal variable* is the mean of this signal.
The *value* shown is the average of this signal variable for the subject/activity combination.

**Data Type:**
Numeric class.
Units: all data have been normalised.
`-1..+1`

### Column 34

**Variable Name:**
averagetbodyaccmagstd

**Description:**
The *signal* is the magnitude of the linear acceleration (body component).
This is for the time domain.
The *signal variable* is the standard deviation of this signal.
The *value* shown is the average of this signal variable for the subject/activity combination.

**Data Type:**
Numeric class.
Units: all data have been normalised.
`-1..+1`

### Column 35

**Variable Name:**
averagetgravityaccmagmean

**Description:**
The *signal* is the magnitude of the linear acceleration (gravity component).
This is for the time domain.
The *signal variable* is the mean of this signal.
The *value* shown is the average of this signal variable for the subject/activity combination.

**Data Type:**
Numeric class.
Units: all data have been normalised.
`-1..+1`

### Column 36

**Variable Name:**
averagetgravityaccmagstd

**Description:**
The *signal* is the magnitude of the linear acceleration (gravity component).
This is for the time domain.
The *signal variable* is the standard deviation of this signal.
The *value* shown is the average of this signal variable for the subject/activity combination.

**Data Type:**
Numeric class.
Units: all data have been normalised.
`-1..+1`

### Column 37

**Variable Name:**
averagetbodyaccjerkmagmean

**Description:**
The *signal* is the magnitude of the jerk signal of the linear acceleration (body component).
This is for the time domain.
The *signal variable* is the mean of this signal.
The *value* shown is the average of this signal variable for the subject/activity combination.

**Data Type:**
Numeric class.
Units: all data have been normalised.
`-1..+1`

### Column 38

**Variable Name:**
averagetbodyaccjerkmagstd

**Description:**
The *signal* is the magnitude of the jerk signal of the linear acceleration (body component).
This is for the time domain.
The *signal variable* is the standard deviation of this signal.
The *value* shown is the average of this signal variable for the subject/activity combination.

**Data Type:**
Numeric class.
Units: all data have been normalised.
`-1..+1`

### Column 39

**Variable Name:**
averagetbodygyromagmean

**Description:**
The *signal* is the magnitude of the angular velocity (body component).
This is for the time domain.
The *signal variable* is the mean of this signal.
The *value* shown is the average of this signal variable for the subject/activity combination.

**Data Type:**
Numeric class.
Units: all data have been normalised.
`-1..+1`

### Column 40

**Variable Name:**
averagetbodygyromagstd

**Description:**
The *signal* is the magnitude of the angular velocity (body component).
This is for the time domain.
The *signal variable* is the standard deviation of this signal.
The *value* shown is the average of this signal variable for the subject/activity combination.

**Data Type:**
Numeric class.
Units: all data have been normalised.
`-1..+1`

### Column 41

**Variable Name:**
averagetbodygyrojerkmagmean

**Description:**
The *signal* is the magnitude of the jerk signal of the angular velocity (body component).
This is for the time domain.
The *signal variable* is the mean of this signal.
The *value* shown is the average of this signal variable for the subject/activity combination.

**Data Type:**
Numeric class.
Units: all data have been normalised.
`-1..+1`

### Column 42

**Variable Name:**
averagetbodygyrojerkmagstd

**Description:**
The *signal* is the magnitude of the jerk signal of the angular velocity (body component).
This is for the time domain.
The *signal variable* is the standard deviation of this signal.
The *value* shown is the average of this signal variable for the subject/activity combination.

**Data Type:**
Numeric class.
Units: all data have been normalised.
`-1..+1`

### Column 43

**Variable Name:**
averagefbodyaccmeanx

**Description:**
The *signal* is linear acceleration (body component) in the x axis.
This is for the frequency domain.
The *signal variable* is the mean of this signal.
The *value* shown is the average of this signal variable for the subject/activity combination.

**Data Type:**
Numeric class.
Units: all data have been normalised.
`-1..+1`

### Column 44

**Variable Name:**
averagefbodyaccmeany

**Description:**
The *signal* is linear acceleration (body component) in the y axis.
This is for the frequency domain.
The *signal variable* is the mean of this signal.
The *value* shown is the average of this signal variable for the subject/activity combination.

**Data Type:**
Numeric class.
Units: all data have been normalised.
`-1..+1`

### Column 45

**Variable Name:**
averagefbodyaccmeanz

**Description:**
The *signal* is linear acceleration (body component) in the z axis.
This is for the frequency domain.
The *signal variable* is the mean of this signal.
The *value* shown is the average of this signal variable for the subject/activity combination.

**Data Type:**
Numeric class.
Units: all data have been normalised.
`-1..+1`

### Column 46

**Variable Name:**
averagefbodyaccstdx

**Description:**
The *signal* is linear acceleration (body component) in the x axis.
This is for the frequency domain.
The *signal variable* is the standard deviation of this signal.
The *value* shown is the average of this signal variable for the subject/activity combination.

**Data Type:**
Numeric class.
Units: all data have been normalised.
`-1..+1`

### Column 47

**Variable Name:**
averagefbodyaccstdy

**Description:**
The *signal* is linear acceleration (body component) in the y axis.
This is for the frequency domain.
The *signal variable* is the standard deviation of this signal.
The *value* shown is the average of this signal variable for the subject/activity combination.

**Data Type:**
Numeric class.
Units: all data have been normalised.
`-1..+1`

### Column 48

**Variable Name:**
averagefbodyaccstdz

**Description:**
The *signal* is linear acceleration (body component) in the z axis.
This is for the frequency domain.
The *signal variable* is the standard deviation of this signal.
The *value* shown is the average of this signal variable for the subject/activity combination.

**Data Type:**
Numeric class.
Units: all data have been normalised.
`-1..+1`

### Column 49

**Variable Name:**
averagefbodyaccjerkmeanx

**Description:**
The *signal* is the jerk signal of the linear acceleration (body component) in the x axis.
This is for the frequency domain.
The *signal variable* is the mean of this signal.
The *value* shown is the average of this signal variable for the subject/activity combination.

**Data Type:**
Numeric class.
Units: all data have been normalised.
`-1..+1`

### Column 50

**Variable Name:**
averagefbodyaccjerkmeany

**Description:**
The *signal* is the jerk signal of the linear acceleration (body component) in the y axis.
This is for the frequency domain.
The *signal variable* is the mean of this signal.
The *value* shown is the average of this signal variable for the subject/activity combination.

**Data Type:**
Numeric class.
Units: all data have been normalised.
`-1..+1`

### Column 51

**Variable Name:**
averagefbodyaccjerkmeanz

**Description:**
The *signal* is the jerk signal of the linear acceleration (body component) in the z axis.
This is for the frequency domain.
The *signal variable* is the mean of this signal.
The *value* shown is the average of this signal variable for the subject/activity combination.

**Data Type:**
Numeric class.
Units: all data have been normalised.
`-1..+1`

### Column 52

**Variable Name:**
averagefbodyaccjerkstdx

**Description:**
The *signal* is the jerk signal of the linear acceleration (body component) in the x axis.
This is for the frequency domain.
The *signal variable* is the standard deviation of this signal.
The *value* shown is the average of this signal variable for the subject/activity combination.

**Data Type:**
Numeric class.
Units: all data have been normalised.
`-1..+1`

### Column 53

**Variable Name:**
averagefbodyaccjerkstdy

**Description:**
The *signal* is the jerk signal of the linear acceleration (body component) in the y axis.
This is for the frequency domain.
The *signal variable* is the standard deviation of this signal.
The *value* shown is the average of this signal variable for the subject/activity combination.

**Data Type:**
Numeric class.
Units: all data have been normalised.
`-1..+1`

### Column 54

**Variable Name:**
averagefbodyaccjerkstdz

**Description:**
The *signal* is the jerk signal of the linear acceleration (body component) in the z axis.
This is for the frequency domain.
The *signal variable* is the standard deviation of this signal.
The *value* shown is the average of this signal variable for the subject/activity combination.

**Data Type:**
Numeric class.
Units: all data have been normalised.
`-1..+1`

### Column 55

**Variable Name:**
averagefbodygyromeanx

**Description:**
The *signal* is the angular velocity (body component) in the x axis.
This is for the frequency domain.
The *signal variable* is the mean of this signal.
The *value* shown is the average of this signal variable for the subject/activity combination.

**Data Type:**
Numeric class.
Units: all data have been normalised.
`-1..+1`

### Column 56

**Variable Name:**
averagefbodygyromeany

**Description:**
The *signal* is the angular velocity (body component) in the y axis.
This is for the frequency domain.
The *signal variable* is the mean of this signal.
The *value* shown is the average of this signal variable for the subject/activity combination.

**Data Type:**
Numeric class.
Units: all data have been normalised.
`-1..+1`

### Column 57

**Variable Name:**
averagefbodygyromeanz

**Description:**
The *signal* is the angular velocity (body component) in the z axis.
This is for the frequency domain.
The *signal variable* is the mean of this signal.
The *value* shown is the average of this signal variable for the subject/activity combination.

**Data Type:**
Numeric class.
Units: all data have been normalised.
`-1..+1`

### Column 58

**Variable Name:**
averagefbodygyrostdx

**Description:**
The *signal* is the angular velocity (body component) in the x axis.
This is for the frequency domain.
The *signal variable* is the standard deviation of this signal.
The *value* shown is the average of this signal variable for the subject/activity combination.

**Data Type:**
Numeric class.
Units: all data have been normalised.
`-1..+1`

### Column 59

**Variable Name:**
averagefbodygyrostdy

**Description:**
The *signal* is the angular velocity (body component) in the y axis.
This is for the frequency domain.
The *signal variable* is the standard deviation of this signal.
The *value* shown is the average of this signal variable for the subject/activity combination.

**Data Type:**
Numeric class.
Units: all data have been normalised.
`-1..+1`

### Column 60

**Variable Name:**
averagefbodygyrostdz

**Description:**
The *signal* is the angular velocity (body component) in the z axis.
This is for the frequency domain.
The *signal variable* is the standard deviation of this signal.
The *value* shown is the average of this signal variable for the subject/activity combination.

**Data Type:**
Numeric class.
Units: all data have been normalised.
`-1..+1`

### Column 61

**Variable Name:**
averagefbodyaccmagmean

**Description:**
The *signal* is the magnitude of the linear acceleration (body component).
This is for the frequency domain.
The *signal variable* is the mean of this signal.
The *value* shown is the average of this signal variable for the subject/activity combination.

**Data Type:**
Numeric class.
Units: all data have been normalised.
`-1..+1`

### Column 62

**Variable Name:**
averagefbodyaccmagstd

**Description:**
The *signal* is the magnitude of the linear acceleration (body component).
This is for the frequency domain.
The *signal variable* is the standard deviation of this signal.
The *value* shown is the average of this signal variable for the subject/activity combination.

**Data Type:**
Numeric class.
Units: all data have been normalised.
`-1..+1`

### Column 63

**Variable Name:**
averagefbodyaccjerkmagmean

**Description:**
The *signal* is the magnitude of the jerk signal of the linear acceleration (body component).
This is for the frequency domain.
The *signal variable* is the mean of this signal.
The *value* shown is the average of this signal variable for the subject/activity combination.

**Data Type:**
Numeric class.
Units: all data have been normalised.
`-1..+1`

### Column 64

**Variable Name:**
averagefbodyaccjerkmagstd

**Description:**
The *signal* is the magnitude of the jerk signal of the linear acceleration (body component).
This is for the frequency domain.
The *signal variable* is the standard deviation of this signal.
The *value* shown is the average of this signal variable for the subject/activity combination.

**Data Type:**
Numeric class.
Units: all data have been normalised.
`-1..+1`

### Column 65

**Variable Name:**
averagefbodygyromagmean

**Description:**
The *signal* is the magnitude of the angular velocity (body component).
This is for the frequency domain.
The *signal variable* is the mean of this signal.
The *value* shown is the average of this signal variable for the subject/activity combination.

**Data Type:**
Numeric class.
Units: all data have been normalised.
`-1..+1`

### Column 66

**Variable Name:**
averagefbodygyromagstd

**Description:**
The *signal* is the magnitude of the angular velocity (body component).
This is for the frequency domain.
The *signal variable* is the standard deviation of this signal.
The *value* shown is the average of this signal variable for the subject/activity combination.

**Data Type:**
Numeric class.
Units: all data have been normalised.
`-1..+1`

### Column 67

**Variable Name:**
averagefbodygyrojerkmagmean

**Description:**
The *signal* is the magnitude of the jerk signal of the angular velocity (body component).
This is for the frequency domain.
The *signal variable* is the mean of this signal.
The *value* shown is the average of this signal variable for the subject/activity combination.

**Data Type:**
Numeric class.
Units: all data have been normalised.
`-1..+1`

### Column 68

**Variable Name:**
averagefbodygyrojerkmagstd

**Description:**
The *signal* is the magnitude of the jerk signal of the angular velocity (body component).
This is for the frequency domain.
The *signal variable* is the standard deviation of this signal.
The *value* shown is the average of this signal variable for the subject/activity combination.

**Data Type:**
Numeric class.
Units: all data have been normalised.
`-1..+1`