

The data comes from "Human Activity Recognition Using Smartphones Data Set"
see http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones


This file  describes in detail all the transformations made to the data and the explanation of variables.

Data source url is : https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

# Files used from the data source
1. X_train.txt (contains values of all the features)
2. Y_train.txt (activity code for user activity e.g. walking, standing etc)
3. subject_train.txt (subject id of user)
4. X_test.txt
5. Y_test.txt
6. subject_test.txt
7. features.txt (names of all the features)
8. activity_labels.txt (activity names for corresponding activity codes)

# Transformations
1. X, Y and subject data are combined to get one large data set (stored in all_data)
2. From the features table, features with mean() or std() are kept (meanFreq were omitted). There are 66 features in total.
3. The columns are labeled with the activity names in activity_labels. the columns names are renamed to be cleaner (ex: tBodyAccMeanY for  tBodyAcc-mean()-Y).
4. Two columns  are prepend to the dataset clean_data
   - subject : subect identiifer
   - activity : Activities performed by the subjects.
5. Average of each feature by subject and activity is stored in a new data set called tidy_data. 
6. tidy_data is written to "tidy_data_means.txt"


##The activities names are:
* 1 - WALKING
* 2 - WALKING_UPSTAIRS
* 3 - WALKING_DOWNSTAIRS
* 4 - SITTING
* 5 - STANDING
* 6 - LAYING

##Dataset columns names :
Only means and standard deviations are included
Subject Identifier
- "subject"

Activity Name
- "activity"

######Time Domain
Body acceleration signals X, Y, Z components; mean and standard deviation.
- "tBodyAccMeanX"           
- "tBodyAccMeanY"
- "tBodyAccMeanZ"
- "tBodyAccStdX"            
- "tBodyAccStdY"
- "tBodyAccStdZ"

Gravity acceleration signals X, Y, Z components; mean and standard deviation.
- "tGravityAccMeanX"
- "tGravityAccMeanY"
- "tGravityAccMeanZ"
- "tGravityAccStdX"         
- "tGravityAccStdY"
- "tGravityAccStdZ"

Body acceleration Jerk signals X, Y, Z components; mean and standard deviation.
- "tBodyAccJerkMeanX"       
- "tBodyAccJerkMeanY"
- "tBodyAccJerkMeanZ"
- "tBodyAccJerkStdX"        
- "tBodyAccJerkStdY"
- "tBodyAccJerkStdZ"

Body gyroscope signals X, Y, Z components; mean and standard deviation.
- "tBodyGyroMeanX"          
- "tBodyGyroMeanY"
- "tBodyGyroMeanZ"
- "tBodyGyroStdX"           
- "tBodyGyroStdY"
- "tBodyGyroStdZ"

Body gyroscope Jerk signals X, Y, Z components; mean and standard deviation.
- "tBodyGyroJerkMeanX"
- "tBodyGyroJerkMeanY"
- "tBodyGyroJerkMeanZ"
- "tBodyGyroJerkStdX"       
- "tBodyGyroJerkStdY"
- "tBodyGyroJerkStdZ"

Body linear acceleration magnitude; mean and standard deviation.
- "tBodyAccMagMean"         
- "tBodyAccMagStd"

Gravity acceleration magnitude; mean and standard deviation.
- "tGravityAccMagMean" 
- "tGravityAccMagStd"  

Body acceleration Jerk magnitude; mean and standard deviati
- "tBodyAccJerkMagMean" 
- "tBodyAccJerkMagStd"

Body gyroscope magnitude; mean and standard deviation.
- "tBodyGyroMagMean"        
- "tBodyGyroMagStd"

Body gyroscope Jerk magnitude; mean and standard deviation.
- "tBodyGyroJerkMagMean" 
- "tBodyGyroJerkMagStd"

######Frequency Domain

Body linear acceleration X, Y, Z components; mean and standard deviation
- "fBodyAccMeanX"
- "fBodyAccMeanY" 
- "fBodyAccMeanZ"           
- "fBodyAccStdX" 
- "fBodyAccStdY"      
- "fBodyAccStdZ" 

Body linear acceleration Jerk X, Y, Z components; mean and standard deviation.
- "fBodyAccJerkMeanX"  
- "fBodyAccJerkMeanY" 
- "fBodyAccJerkMeanZ"       
- "fBodyAccJerkStdX"   
- "fBodyAccJerkStdY"   
- "fBodyAccJerkStdZ" 

Body gyroscope signals X, Y, Z components; mean and standard deviation.
- "fBodyGyroMeanX"    
- "fBodyGyroMeanY"     
- "fBodyGyroMeanZ"          
- "fBodyGyroStdX"    
- "fBodyGyroStdY"     
- "fBodyGyroStdZ" 

Body linear acceleration magnitude; mean and standard deviation.
- "fBodyAccMagMean"    
- "fBodyAccMagStd"   

Body linear acceleration Jerk magnitude; mean and standard deviation.
- "fBodyBodyAccJerkMagMean" 
- "fBodyBodyAccJerkMagStd" 

Body gyroscope magnitude; mean and standard deviation.
- "fBodyBodyGyroMagMean"   
- "fBodyBodyGyroMagStd"

Body gyroscope Jerk magnitude; mean and standard deviation.
- "fBodyBodyGyroJerkMagMean"
- "fBodyBodyGyroJerkMagStd" 
