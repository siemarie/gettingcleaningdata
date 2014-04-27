Getting &amp; Cleaning Data
=======================

This repository contains the following files:

 - run_analysis.R
 - CodeBook.md
 - tidydata.txt

The R script (run_analysis.R) creates a tidy data set from the Human Activity Recognition Using Smartphones Dataset[1] which includes the mean of the mean and standard deviation measurements collected for each volunteer participant by activity. 

This script requires that the raw data be downloaded and extracted into your working directory. The raw data can be accessed here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

After running the script, a file (tidydata.txt) should be written to your working directory. Assuming no changes in the data [last accessed for this project on 27 Apr. 2014], the resulting file should match tidydata.txt found in this repository.

For further information, read CodeBook.md.

**Footnotes**

[1]: Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
