# Code Book

This code book describes the variables, the data, and the transformations performed to clean the data for the Peer-graded Assignment: Getting and Cleaning Data Course Project.

## Dataset

The dataset used in this project is the Human Activity Recognition Using Smartphones Data Set from the [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

The dataset contains data collected from the accelerometers and gyroscopes of a smartphone worn by 30 subjects while performing various activities. The data are divided into a training set and a test set.

## Variables

The dataset includes the following variables:

- Subject: An integer representing the subject who performed the activity.
- Activity: A character string describing the activity performed. Possible values are "WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", and "LAYING".
- Measurement: A character string describing the measurement taken. The measurements are based on the accelerometer and gyroscope readings and include mean and standard deviation values.

## Transformations

The `run_analysis.R` script performs the following transformations on the data:

1. Merges the training and test datasets into a single dataset.
2. Uses descriptive activity names to name the activities in the dataset.
3. Labels the dataset with descriptive variable names.
4. Extracts only the mean and standard deviation measurements from the dataset.
5. Creates a tidy dataset with the average of each variable for each activity and each subject.
6. Writes the tidy dataset to a text file called `tidy_data.txt` (comma-separated).

## Output

The output of the `run_analysis.R` script is a text file called `tidy_data.txt` (comma-separated), which contains a tidy dataset with the average of each variable for each activity and each subject.
