# ReadMe

Coursera Data Science Specialization - Getting and Cleaning Data - Course Project

Written by Hao-Wen Sim, May 2015

## Reading tidydataset.txt

My tidydataset.txt file can be read directly from Coursera with the following code:

```
tidydataset <- read.table("http://s3.amazonaws.com/coursera-uploads/user-1489c57441b0e38ffc72daef/973501/asst-3/bba8fb80004711e59f12ffcb0298def7.txt", header = TRUE)
View(tidydataset)
```

Alternatively, it can be downloaded into the working directory, then read locally with the following code:


```
tidydataset <- read.table("tidydataset.txt", header = TRUE)
View(tidydataset)
```

## Other files in repository

Please note that my Github repository also contains the required:

* R script (run_analysis.R), which generates the tidy data set

* codebook (CodeBook.md), which explains the variables in the tidy data set

## Assumptions

The run_analysis.R script assumes the following:

* Windows 8.1 operating system
* R 3.2.0 installed
* dplyr 0.4.1 installed
* tidyr 0.2.0 installed
* the UCI HAR Dataset folder is located in the current working directory

## Commentary of run_analysis.R

### Step 1: Check dplyr package installed

The script checks whether the dplyr package is already installed.

If not, the script terminates with an error message, 
which instructs the user to install dplyr using *install.packages("dplyr")*.

The script will not automatically install this, 
since I feel it is inappropriate to install packages without permission.

### Step 2: Check tidyr package installed

The script checks whether the tidyr package is already installed.

If not, the script terminates with an error message, 
which instructs the user to install tidyr using *install.packages("tidyr")*.

The script will not automatically install this, 
since I feel it is inappropriate to install packages without permission.

### Step 3: Locate UCI HAR Dataset folder

The script checks whether the UCI HAR Dataset folder is located in the current working directory.

If not, it will attempt to download it from 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
and then unzip it.

### Step 4: Load data files

The script loads the relevant data files from the UCI HAR Dataset folder:

* subject_train.txt

* y_train.txt

* x_train.txt

* subject_test.txt

* y_test.txt

* x_test.txt

* features.txt

* activity_labels.txt

### Step 5: Merges corresponding subjects, activity labels and data sets

The script unifies all the training data into a single data frame called *train*:

* subject_train.txt

* y_train.txt

* x_train.txt

It also unifies all the test data into a single data frame called *test*:

* subject_test.txt

* y_test.txt

* x_test.txt

In the process, I have renamed the subject column (from V1 to subject)
and the activity column (from V1 to activity)
to prevent duplicate column names.

### Step 6: Merges the training and the test sets to create one data set 

**Course Project Requirement #1**

The script combines the rows of *train* and *test* into a new data frame called *data*.

For completeness, an additional variable called *set* is created to distinguish 
between data originating from *train* vs. *test* 
(albeit this variable is subsequently discarded).

### Step 7: Extracts only the measurements on the mean and standard deviation for each measurement

**Course Project Requirement #2**

There is much conjecture about which columns are measurements on the mean and standard deviation.
Does it refer to entries that include mean() and std() at the end,
or does it include entries with mean in an earlier part of the name as well?

*David's personal course project FAQ* at https://class.coursera.org/getdata-014/forum/thread?thread_id=30
suggests that either is acceptable provided the choice is explained.

I have adopted the former interpretation i.e. only included variables containing mean() or std().

This search strategy deliberately excludes meanFreq(), as this represents weighted averages instead.
This excludes 13 variables.

This search strategy also deliberately excludes the angle variables
(containing gravityMean, tBodyAccMean, tBodyAccJerkMean, tBodyGyroMean and tBodyGyroJerkMean), 
as these represent derivations of angle data, as opposed to the original feature vector.
To support this viewpoint, there are no corresponding standard deviation measurements for these.
This excludes 7 variables.

The result is that *data* contains 68 variables:

* 1 variable for subject

* 1 variable for activity

* 33 variables for means of the feature vector

* 33 variables for standard deviations of the feature vector

### Step 8: Uses descriptive activity names to name the activities in the data set

**Course Project Requirement #3**

The activity codes in *data$activity* are replaced by their corresponding descriptions
(as outlined in the activities table).

### Step 9: Appropriately labels the data set with descriptive variable names

**Course Project Requirement #4**

The subject and activity columns were renamed during Step 5.

Now, the feature vector column names are replaced by their corresponding descriptions
(as outlined in the features table).

Importantly, as discussed at https://class.coursera.org/getdata-014/forum/thread?thread_id=111,
I have corrected the following typos:

* fBodyBodyAccJerkMag-mean() --> fBodyAccJerkMag-mean()

* fBodyBodyAccJerkMag-std() --> fBodyAccJerkMag-std()

* fBodyBodyGyroMag-mean() --> fBodyGyroMag-mean()

* fBodyBodyGyroMag-std() --> fBodyGyroMag-std()

* fBodyBodyGyroJerkMag-mean() --> fBodyGyroJerkMag-mean()

* fBodyBodyGyroJerkMag-std() --> fBodyGyroJerkMag-std()

The script also changes all column names to lowercase, and removes the hyphens and brackets.

**As such, they adhere to the requirements of descriptive variable names, as per Lecture 4.1 Editing Text Variables, Slide 16.**

* all lowercase when possible

* descriptive
(NB: I take the viewpoint that the descriptions in the features table are already sufficiently descriptive)

* not duplicated

* not have underscores or dots or whitespaces

### Step 10: Creates a second, independent tidy data set with the average of each variable for each activity and each subject

**Course Project Requirement #5**

The script relies on the dplyr and tidyr packages.

Firstly, the script uses the gather function to melt the signal variables (i.e. the feature vector columns).
This results in a 4-column data frame containing every combination of 
subject vs. activity vs. signal variable, and a corresponding value.

Next, the script uses the group_by and summarize functions to compute the averages of these values
(grouped by every combination of subject vs. activity vs. signal variable).

Finally, the script uses the spread function to cast the signal variables back into columns.

These column names are prefixed with the word *average*
to emphasise that these are calculated summaries (averages) of signal variables,
thereby ensuring the column names remain appropriately descriptive.

**The result is a tidy data set that meets the principles of Hadley Wickham.**

* each column contains one variable (independent measurements of subject/activity actions, 
which have been summarised as averages of signal variables)

* each row contains one observation (each subject/activity action i.e. 30 subjects x 6 actions = 180 rows)

Notably, I have interpreted an observation to comprise the measurements associated with each subject/activity action.
This results in a wide form.
The distinction between wide and long forms has been discussed in depth at
https://class.coursera.org/getdata-014/forum/thread?thread_id=31.
It is stated that both forms are acceptable solutions to this course project.

### Step 11: Output

The script writes the final data to *tidydataset.txt*.

It also shows the final data on the screen.