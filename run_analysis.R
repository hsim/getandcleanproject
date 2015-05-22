# Check that dplyr package installed, otherwise show error message

if (!"dplyr" %in% installed.packages()) {
  stop("Please install dplyr package using install.packages(\"dplyr\")")
}

# Check that tidyr package installed, otherwise show error message

if (!"tidyr" %in% installed.packages()) {
  stop("Please install tidyr package using install.packages(\"tidyr\")")
}

# Check that UCI HAR Dataset folder located at ./UCI HAR Dataset/, otherwise download and unzip it

if (!file.exists("UCI HAR Dataset")) {
  weburl <- "http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  zipfile <- "getdata_projectfiles_UCI HAR Dataset.zip"
  download.file(weburl, zipfile, mode = "wb")
  unzip(zipfile)
}

# Load data files
print("Loading train data files...")

trainsub <- read.table(file.path("UCI HAR Dataset", "train", "subject_train.txt"))
trainlab <- read.table(file.path("UCI HAR Dataset", "train", "y_train.txt"))
trainset <- read.table(file.path("UCI HAR Dataset", "train", "x_train.txt"))

print("Loading test data files...")

testsub <- read.table(file.path("UCI HAR Dataset", "test", "subject_test.txt"))
testlab <- read.table(file.path("UCI HAR Dataset", "test", "y_test.txt"))
testset <- read.table(file.path("UCI HAR Dataset", "test", "x_test.txt"))

features <- read.table(file.path("UCI HAR Dataset", "features.txt"))
activities <- read.table(file.path("UCI HAR Dataset", "activity_labels.txt"))

# Cbind subjects - activity labels - sets

names(trainsub) = "subject"
names(trainlab) = "activity"
train <- cbind(trainsub, trainlab, trainset)

names(testsub) = "subject"
names(testlab) = "activity"
test <- cbind(testsub, testlab, testset)

# Merge train and test sets to create one data set

library(dplyr)
library(tidyr)

train <- mutate(train, set = "train")
test <- mutate(test, set = "test")
data <- bind_rows(train, test)

# Extract only the measurements on the mean and standard deviation for each measurement
# NB: col 1 = subject, col 2 = activity

featmean <- grep("mean\\(\\)", features$V2)
featsd <- grep("std\\(\\)", features$V2)

featmean <- featmean + 2
featsd <- featsd + 2
featindex <- sort(c(1, 2, featmean, featsd))
data <- data[, featindex]

# Use descriptive activity names to name the activities in the data set

data$activity <- sapply(data$activity, function(x) activities[activities$V1 == x, 2])

# Appropriately label the data set with descriptive variable names
# NB: col 1 = subject, col 2 = activity
# Use substring to remove leading V
# Change from factor to character vector
# Fix BodyBody typo
# Change to lowercase
# Remove symbols

datacol <- names(data)[3:ncol(data)]

datacol <- substr(datacol, 2, nchar(datacol))
datacol <- sapply(datacol, function(x) features[features$V1 == x, 2])
datacol <- as.character(datacol)

datacol <- gsub("BodyBody", "Body", datacol)
datacol <- tolower(datacol)
datacol <- gsub("[()-]", "", datacol)

names(data)[3:ncol(data)] <- datacol

# Create a second, independent tidy data set with the average of each variable for each activity and each subject

data2 <-
  data %>%
  gather(variable, value, -subject, -activity) %>%
  group_by(subject, activity, variable) %>%
  summarize(average = mean(value)) %>%
  spread(variable, average)

datacol <- names(data2)[3:ncol(data2)]
datacol <- sapply(datacol, function(x) paste0("average", x))
names(data2)[3:ncol(data2)] <- datacol

# Output tidy data set

write.table(data2, "tidydataset.txt", row.names = FALSE)
View(data2)