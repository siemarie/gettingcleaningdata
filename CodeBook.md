GETTING AND CLEANING DATA - Peer Assessment 1
=============================================

**Data Set**

This project utilizes data from the Human Activity Recognition Using Smartphones Dataset[1]. 

For more information, visit: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The raw data can be accessed here: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

**Methods**

The R script found in this repository (run_analysis.R) runs the following methods to transform the raw data set into the resulting tidy data set:

 1. Imports the training data measurements [X_train.txt] and merges them with the corresponding participant IDs [subject_train.txt] and activity types [Y_train.txt].
 2. Imports the test data measurements [X_test.txt] and merges them with the corresponding participant IDs [subject_test.txt] and activity types [Y_test.txt].
 3. Merges the two data sets (training data and test data) into one data set.
 4. Reads measurement labels from features.txt and removes all measurement columns in the full data set that are not means (labeled with mean()) or standard deviations (labeled with std()).
 5. Adds column names that are in a human-readable format.
 6. Subsets the full data set by participant ID and activity type and calculates the mean for each measurement column, outputting a single row for each participant-activity combination.
 7. Renames each activity to a human-readable description instead of an identifier.
 8. Outputs a text file with the tidy data set to the working directory.

**Variables**




**Footnotes**

[1]: Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
