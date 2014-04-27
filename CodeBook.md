CodeBook.md
===========

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

"SubjectId" - An indentifier ranging from 1 - 30 representing each unique participant in the study.

"ActivityId" - The activity that the participant was engaged in while measurements were taken.

The following variables represent the means of measurements for each participant-activity combination. The original data was collected using the built-in accelerometer and gyroscope of the smartphones used in the experiments. Many of these measurements (labeled -X, -Y or -Z) were collected on three axises. For additional information about the collection of the raw data, see http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.

 "TotalBodyAcceleration-Mean()-X"                           
 "TotalBodyAcceleration-Mean()-Y"                           
 "TotalBodyAcceleration-Mean()-Z"                           
 "TotalBodyAcceleration-StandardDeviation()-X"              
 "TotalBodyAcceleration-StandardDeviation()-Y"              
 "TotalBodyAcceleration-StandardDeviation()-Z"              
 "TotalGravityAcceleration-Mean()-X"                            
 "TotalGravityAcceleration-Mean()-Y"                            
 "TotalGravityAcceleration-Mean()-Z"                            
 "TotalGravityAcceleration-StandardDeviation()-X"               
 "TotalGravityAcceleration-StandardDeviation()-Y"               
 "TotalGravityAcceleration-StandardDeviation()-Z"               
 "TotalBodyAccelerationJerk-Mean()-X"                       
 "TotalBodyAccelerationJerk-Mean()-Y"                       
 "TotalBodyAccelerationJerk-Mean()-Z"                       
 "TotalBodyAccelerationJerk-StandardDeviation()-X"          
 "TotalBodyAccelerationJerk-StandardDeviation()-Y"          
 "TotalBodyAccelerationJerk-StandardDeviation()-Z"          
 "TotalBodyGyroscope-Mean()-X"                              
 "TotalBodyGyroscope-Mean()-Y"                              
 "TotalBodyGyroscope-Mean()-Z"                              
 "TotalBodyGyroscope-StandardDeviation()-X"                 
 "TotalBodyGyroscope-StandardDeviation()-Y"                 
 "TotalBodyGyroscope-StandardDeviation()-Z"                 
 "TotalBodyGyroscopeJerk-Mean()-X"                          
 "TotalBodyGyroscopeJerk-Mean()-Y"                          
 "TotalBodyGyroscopeJerk-Mean()-Z"                          
 "TotalBodyGyroscopeJerk-StandardDeviation()-X"             
 "TotalBodyGyroscopeJerk-StandardDeviation()-Y"             
 "TotalBodyGyroscopeJerk-StandardDeviation()-Z"             
 "TotalBodyAccelerationMagnitude-Mean()"                    
 "TotalBodyAccelerationMagnitude-StandardDeviation()"       
 "TotalGravityAccelerationMagnitude-Mean()"                     
 "TotalGravityAccelerationMagnitude-StandardDeviation()"        
 "TotalBodyAccelerationJerkMagnitude-Mean()"                
 "TotalBodyAccelerationJerkMagnitude-StandardDeviation()"   
 "TotalBodyGyroscopeMagnitude-Mean()"                       
 "TotalBodyGyroscopeMagnitude-StandardDeviation()"          
 "TotalBodyGyroscopeJerkMagnitude-Mean()"                   
 "TotalBodyGyroscopeJerkMagnitude-StandardDeviation()"      
 "FullBodyAcceleration-Mean()-X"                            
 "FullBodyAcceleration-Mean()-Y"                            
 "FullBodyAcceleration-Mean()-Z"                            
 "FullBodyAcceleration-StandardDeviation()-X"               
 "FullBodyAcceleration-StandardDeviation()-Y"               
 "FullBodyAcceleration-StandardDeviation()-Z"               
 "FullBodyAccelerationJerk-Mean()-X"                        
 "FullBodyAccelerationJerk-Mean()-Y"                        
 "FullBodyAccelerationJerk-Mean()-Z"                        
 "FullBodyAccelerationJerk-StandardDeviation()-X"           
 "FullBodyAccelerationJerk-StandardDeviation()-Y"           
 "FullBodyAccelerationJerk-StandardDeviation()-Z"           
 "FullBodyGyroscope-Mean()-X"                               
 "FullBodyGyroscope-Mean()-Y"                               
 "FullBodyGyroscope-Mean()-Z"                               
 "FullBodyGyroscope-StandardDeviation()-X"                  
 "FullBodyGyroscope-StandardDeviation()-Y"                  
 "FullBodyGyroscope-StandardDeviation()-Z"                  
 "FullBodyAccelerationMagnitude-Mean()"                     
 "FullBodyAccelerationMagnitude-StandardDeviation()"        
 "FullBodyBodyAccelerationJerkMagnitude-Mean()"             
 "FullBodyBodyAccelerationJerkMagnitude-StandardDeviation()"
 "FullBodyBodyGyroscopeMagnitude-Mean()"                    
 "FullBodyBodyGyroscopeMagnitude-StandardDeviation()"       
 "FullBodyBodyGyroscopeJerkMagnitude-Mean()"                
 "FullBodyBodyGyroscopeJerkMagnitude-StandardDeviation()"   

**Footnotes**

[1]: Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
