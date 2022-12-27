# Getting_and_Cleaning_Data_Course_Project
This repository contains the R script and documentation for the Peer-graded Assignment: Getting and Cleaning Data Course Project.
The analysis file reads, cleans, and creates a summarized tidy dataset as output.

## Dataset
The dataset used in this project is the Human Activity Recognition Using Smartphones Data Set from the [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).
You can also download the data for the project directly [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

The dataset contains data collected from the accelerometers and gyroscopes of a smartphone worn by 30 subjects while performing various activities.

## R Script
The `run_analysis.R` script performs the following tasks:

1. Loads the test and training datasets
2. Merges the test and training datasets
3. Names the activities with descriptive names
4. Labels the dataset with descriptive variable names
5. Extracts only the means and standard deviations from the data
6. Creates a tidy dataset with the average of each variable for each activity and each subject
7. Write the tidy dataset to a text file called `tidy_data.txt` (comma-separated).

## Documentation
The `CodeBook.md` file provides a description of the variables, the data, and the transformations performed to clean the data.
