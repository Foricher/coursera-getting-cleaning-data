coursera-getting-cleaning-data
==============================
 
This file describes how run_analysis.R script works.
* First, unzip the data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
* Make sure the folder "UCI HAR Dataset" and the run_analysis.R script are both in the current working directory, setwd("<current working directory>")
* Use source("run_analysis.R") command in RStudio. 
* You will find two output files are generated in the current working directory:
  - clean_data.txt (7.96 Mb): it contains a data frame  with 10299*68 dimension.
  - tidy_data_means.txt (219 Kb): it contains a data frame with 180*68 dimension.
* A code book that describes the variables, the data, and any transformations and work performed to clean up the data 



