
This file  describes in detail all the transformations made to the data and the explanation of variables.

Data source is : http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

# Files Used
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


##The activity numbers and corresponding names are:
* 1 - WALKING
* 2 - WALKING_UPSTAIRS
* 3 - WALKING_DOWNSTAIRS
* 4 - SITTING
* 5 - STANDING
* 6 - LAYING

##the only means and standard deviations included are:
"subject"                  
"activity"
"tBodyAccMeanX"           
"tBodyAccMeanY"
"tBodyAccMeanZ"
"tBodyAccStdX"            
"tBodyAccStdY"
"tBodyAccStdZ"
"tGravityAccMeanX"
"tGravityAccMeanY"
"tGravityAccMeanZ"
"tGravityAccStdX"         
"tGravityAccStdY"
"tGravityAccStdZ"
"tBodyAccJerkMeanX"       
"tBodyAccJerkMeanY"
"tBodyAccJerkMeanZ"
"tBodyAccJerkStdX"        
"tBodyAccJerkStdY"
"tBodyAccJerkStdZ"
"tBodyGyroMeanX"          
"tBodyGyroMeanY"
"tBodyGyroMeanZ"
"tBodyGyroStdX"           
"tBodyGyroStdY"
"tBodyGyroStdZ"
"tBodyGyroJerkMeanX"
"tBodyGyroJerkMeanY"
"tBodyGyroJerkMeanZ"
"tBodyGyroJerkStdX"       
"tBodyGyroJerkStdY"
"tBodyGyroJerkStdZ"
"tBodyAccMagMean"         
"tBodyAccMagStd"
"tGravityAccMagMean" 
"tGravityAccMagStd"       
"tBodyAccJerkMagMean" 
"tBodyAccJerkMagStd"
"tBodyGyroMagMean"        
"tBodyGyroMagStd"
"tBodyGyroJerkMagMean" 
"tBodyGyroJerkMagStd"     
"fBodyAccMeanX"
"fBodyAccMeanY" 
"fBodyAccMeanZ"           
"fBodyAccStdX" 
"fBodyAccStdY"      
"fBodyAccStdZ"            
"fBodyAccJerkMeanX"  
"fBodyAccJerkMeanY" 
"fBodyAccJerkMeanZ"       
"fBodyAccJerkStdX"   
"fBodyAccJerkStdY"   
"fBodyAccJerkStdZ"        
"fBodyGyroMeanX"    
"fBodyGyroMeanY"     
"fBodyGyroMeanZ"          
"fBodyGyroStdX"    
"fBodyGyroStdY"     
"fBodyGyroStdZ"           
"fBodyAccMagMean"    
"fBodyAccMagStd"     
"fBodyBodyAccJerkMagMean" 
"fBodyBodyAccJerkMagStd"  
"fBodyBodyGyroMagMean"   
"fBodyBodyGyroMagStd"     
"fBodyBodyGyroJerkMagMean"
"fBodyBodyGyroJerkMagStd" 
