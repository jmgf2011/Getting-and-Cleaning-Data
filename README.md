Script : run_analysis.R
Available : https://github.com/rodrigodmartins/Getting-and-Cleaning-Data/blob/master/tidy_data.txt
Date : August 23, 2014

1. HISTORY :

This script was designed to summarize the data set available at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones, from UCI. For additional information about the original work, please go to UCI site provided.

The original data set can be downloaded as a ZIP file at http://archive.ics.uci.edu/ml/machine-learning-databases/00240/UCI%20HAR%20Dataset.zip.

2. HOW TO USE THE SCRIPT :

- Download the original data set from UCI repository website (given above) and unzip it. It is important that the contents of ZIP file are inside a folder called "UCI HAR Dataset".
- Set your working directory at R to be one level ouside the folder which contains the original data set.
- Example : If your folder with original data set is at "~\Desktop\UCI HAR Dataset", please set your working directory at R to be "~\Desktop".
- Load the provided script "run_analysis.R" in R or RStudio and run the script.
- Wait until the end of data analysis.
- In the end, a folder called "tidy_data" will be created inside "UCI HAR Dataset" ("~\UCI HAR Dataset\tidy_data"), containing a TXT file called "tidy_data.txt" containing the resulting tidy data.

3. HOW TO USE "tidy_data.txt" :

- Set the working directory accordingly in R.
- Please use the following command : "read.table("tidy_data.txt",header=T)" (Withou quotes).
- Remember to address the result of above commend to an object. Example : "df<-read.table("tidy_data.txt",header=T)" (without quotes).

4. WHICH VARIABLES WERE INCLUDED IN TIDY DATA SET AND ITS NEW DESCRIPTIONS :

All the variables wich included the mean value, standard deviation of measurements in original data set were included in final tidy data set. It was also decided to include mean frequency measurements, as they also account as a mean value. 

The original descriptions in the original data set were changed according the following list :

'tBodyAcc-mean()-X'                 to 'time_body_linear_acceleration_mean_X_axis'                              
'tBodyAcc-mean()-Y'	                to 'time_body_linear_acceleration_mean_Y_axis'                              
'tBodyAcc-mean()-Z'	                to 'time_body_linear_acceleration_mean_Z_axis'                              
'tBodyAcc-std()-X'	                to 'time_body_linear_acceleration_stdv_X_axis'                              
'tBodyAcc-std()-Y'	                to 'time_body_linear_acceleration_stdv_Y_axis'                              
'tBodyAcc-std()-Z'	                to 'time_body_linear_acceleration_stdv_Z_axis'                              
'tGravityAcc-mean()-X'	            to 'time_gravity_linear_acceleration_mean_X_axis'                           
'tGravityAcc-mean()-Y'	            to 'time_gravity_linear_acceleration_mean_Y_axis'                           
'tGravityAcc-mean()-Z'	            to 'time_gravity_linear_acceleration_mean_Z_axis'                           
'tGravityAcc-std()-X'	            to 'time_gravity_linear_acceleration_stdv_X_axis'                           
'tGravityAcc-std()-Y'	            to 'time_gravity_linear_acceleration_stdv_Y_axis'                           
'tGravityAcc-std()-Z'	            to 'time_gravity_linear_acceleration_stdv_Z_axis'                           
'tBodyAccJerk-mean()-X'	            to 'time_body_linear_acceleration_jerk_signal_mean_X_axis'                  
'tBodyAccJerk-mean()-Y'	            to 'time_body_linear_acceleration_jerk_signal_mean_Y_axis'                  
'tBodyAccJerk-mean()-Z'	            to 'time_body_linear_acceleration_jerk_signal_mean_Z_axis'                  
'tBodyAccJerk-std()-X'	            to 'time_body_linear_acceleration_jerk_signal_stdv_X_axis'                  
'tBodyAccJerk-std()-Y'	            to 'time_body_linear_acceleration_jerk_signal_stdv_Y_axis'                  
'tBodyAccJerk-std()-Z'  	        to 'time_body_linear_acceleration_jerk_signal_stdv_Z_axis'                  
'tBodyGyro-mean()-X'	            to 'time_body_angular_velocity_mean_X_axis'                                 
'tBodyGyro-mean()-Y'	            to 'time_body_angular_velocity_mean_Y_axis'                                 
'tBodyGyro-mean()-Z'	            to 'time_body_angular_velocity_mean_Z_axis'                                 
'tBodyGyro-std()-X'	                to 'time_body_angular_velocity_stdv_X_axis'                                 
'tBodyGyro-std()-Y'	                to 'time_body_angular_velocity_stdv_Y_axis'                                 
'tBodyGyro-std()-Z'	                to 'time_body_angular_velocity_stdv_Z_axis'                                 
'tBodyGyroJerk-mean()-X'	        to 'time_body_angular_velocity_jerk_signal_mean_X_axis'                     
'tBodyGyroJerk-mean()-Y'	        to 'time_body_angular_velocity_jerk_signal_mean_Y_axis'                     
'tBodyGyroJerk-mean()-Z'	        to 'time_body_angular_velocity_jerk_signal_mean_Z_axis'                     
'tBodyGyroJerk-std()-X'	            to 'time_body_angular_velocity_jerk_signal_stdv_X_axis'                     
'tBodyGyroJerk-std()-Y'	            to 'time_body_angular_velocity_jerk_signal_stdv_Y_axis'                     
'tBodyGyroJerk-std()-Z'	            to 'time_body_angular_velocity_jerk_signal_stdv_Z_axis'                     
'tBodyAccMag-mean()'	            to 'time_body_linear_acceleration_magnitude_mean'                           
'tBodyAccMag-std()'	                to 'time_body_linear_acceleration_magnitude_stdv'                           
'tGravityAccMag-mean()'	            to 'time_gravity_linear_acceleration_magnitude_mean'                        
'tGravityAccMag-std()'	            to 'time_gravity_linear_acceleration_magnitude_stdv'                        
'tBodyAccJerkMag-mean()'	        to 'time_body_linear_acceleration_jerk_signal_magnitude_mean'               
'tBodyAccJerkMag-std()'	            to 'time_body_linear_acceleration_jerk_signal_magnitude_stdv'               
'tBodyGyroMag-mean()'	            to 'time_body_angular_velocity_magnitude_mean'                              
'tBodyGyroMag-std()'	            to 'time_body_angular_velocity_magnitude_stdv'                              
'tBodyGyroJerkMag-mean()'	        to 'time_body_angular_velocity_jerk_signal_magnitude_mean'                  
'tBodyGyroJerkMag-std()'	        to 'time_body_angular_velocity_jerk_signal_magnitude_stdv'                  
'fBodyAcc-mean()-X'	                to 'frequency_body_linear_acceleration_mean_X_axis'                         
'fBodyAcc-mean()-Y'	                to 'frequency_body_linear_acceleration_mean_Y_axis'                         
'fBodyAcc-mean()-Z'	                to 'frequency_body_linear_acceleration_mean_Z_axis'                         
'fBodyAcc-std()-X'	                to 'frequency_body_linear_acceleration_stdv_X_axis'                         
'fBodyAcc-std()-Y'	                to 'frequency_body_linear_acceleration_stdv_Y_axis'                         
'fBodyAcc-std()-Z'	                to 'frequency_body_linear_acceleration_stdv_Z_axis'                         
'fBodyAcc-meanFreq()-X'	            to 'frequency_body_linear_acceleration_mean_frequency_X_axis'               
'fBodyAcc-meanFreq()-Y'	            to 'frequency_body_linear_acceleration_mean_frequency_Y_axis'               
'fBodyAcc-meanFreq()-Z'	            to 'frequency_body_linear_acceleration_mean_frequency_Z_axis'               
'fBodyAccJerk-mean()-X'	            to 'frequency_body_linear_acceleration_jerk_signal_mean_X_axis'             
'fBodyAccJerk-mean()-Y'	            to 'frequency_body_linear_acceleration_jerk_signal_mean_Y_axis'             
'fBodyAccJerk-mean()-Z'	            to 'frequency_body_linear_acceleration_jerk_signal_mean_Z_axis'             
'fBodyAccJerk-std()-X'	            to 'frequency_body_linear_acceleration_jerk_signal_stdv_X_axis'             
'fBodyAccJerk-std()-Y'	            to 'frequency_body_linear_acceleration_jerk_signal_stdv_Y_axis'             
'fBodyAccJerk-std()-Z'	            to 'frequency_body_linear_acceleration_jerk_signal_stdv_Z_axis'             
'fBodyAccJerk-meanFreq()-X'         to 'frequency_body_linear_acceleration_jerk_signal_mean_frequency_X_axis'   
'fBodyAccJerk-meanFreq()-Y'	        to 'frequency_body_linear_acceleration_jerk_signal_mean_frequency_Y_axis'   
'fBodyAccJerk-meanFreq()-Z'	        to 'frequency_body_linear_acceleration_jerk_signal_mean_frequency_Z_axis'   
'fBodyGyro-mean()-X'	            to 'frequency_body_angular_velocity_mean_X_axis'                            
'fBodyGyro-mean()-Y'	            to 'frequency_body_angular_velocity_mean_Y_axis'                            
'fBodyGyro-mean()-Z'	            to 'frequency_body_angular_velocity_mean_Z_axis'                            
'fBodyGyro-std()-X'	                to 'frequency_body_angular_velocity_stdv_X_axis'                            
'fBodyGyro-std()-Y'	                to 'frequency_body_angular_velocity_stdv_Y_axis'                            
'fBodyGyro-std()-Z'	                to 'frequency_body_angular_velocity_stdv_Z_axis'                            
'fBodyGyro-meanFreq()-X'	        to 'frequency_body_angular_velocity_mean_frequency_X_axis'                  
'fBodyGyro-meanFreq()-Y'	        to 'frequency_body_angular_velocity_mean_frequency_Y_axis'                  
'fBodyGyro-meanFreq()-Z'	        to 'frequency_body_angular_velocity_mean_frequency_Z_axis'                  
'fBodyAccMag-mean()'	            to 'frequency_body_linear_acceleration_magnitude_mean'                      
'fBodyAccMag-std()'	                to 'frequency_body_linear_acceleration_magnitude_stdv'                      
'fBodyAccMag-meanFreq()'	        to 'frequency_body_linear_acceleration_magnitude_mean_frequency'            
'fBodyBodyAccJerkMag-mean()'	    to 'frequency_body_linear_acceleration_jerk_signal_magnitude_mean'          
'fBodyBodyAccJerkMag-std()'	        to 'frequency_body_linear_acceleration_jerk_signal_magnitude_stdv'          
'fBodyBodyAccJerkMag-meanFreq()'	to 'frequency_body_linear_acceleration_jerk_signal_magnitude_mean_frequency'
'fBodyBodyGyroMag-mean()'	        to 'frequency_body_angular_velocity_magnitude_mean'                         
'fBodyBodyGyroMag-std()'	        to 'frequency_body_angular_velocity_magnitude_stdv'                         
'fBodyBodyGyroMag-meanFreq()'	    to 'frequency_body_angular_velocity_magnitude_mean_frequency'               
'fBodyBodyGyroJerkMag-mean()'	    to 'frequency_body_angular_velocity_jerk_signal_magnitude_mean'             
'fBodyBodyGyroJerkMag-std()'	    to 'frequency_body_angular_velocity_jerk_signal_magnitude_stdv'             
'fBodyBodyGyroJerkMag-meanFreq()'	to 'frequency_body_angular_velocity_jerk_signal_magnitude_mean_frequency'

5. HOW THE SCRIPT WORKS :

The script is fully commented in each line, in order to make clear the intention of each command. So, the evaluation of the script file itself should the self-explanatory.

The main steps of data manipulation provided by run_analysis.R are :

- Change working directory according to specific files location.
- Modify 'features.txt' file which contains summarized variable names, in order they can be more self-explanatory and descriptive (please refer to 'CodeBook.md' file to additional information on each variable meaning)
- Read data in 'X_test.txt' and assign to an object.
- Rename variables names in the object created in last step.
- Read data in 'y_test.txt' and assign to an object.
- Rename variables names in the object created in last step.
- Read data in 'subject_test.txt' and assign to an object.
- Rename variables names in the object created in last step.
- Create a variable to identify the group from which the data was read ('test' group).
- Merge all objects from 'test' group creating a bigger data frame called 'test_df'.
- Delete objects which will not be further used in order to release system memmory.
- Read data in 'X_train.txt' and assign to an object.
- Rename variables names in the object created in last step.
- Read data in 'y_train.txt' and assign to an object.
- Rename variables names in the object created in last step.
- Read data in 'subject_train.txt' and assign to an object.
- Rename variables names in the object created in last step.
- Create a variable to identify the group from which the data was read ('train' group).
- Merge all objects from 'train' group creating a bigger data frame called 'train_df'.
- Delete objects which will not be further used in order to release system memmory.
- Merge data frames from both 'test' and 'train' groups ('test_df' and 'train_df') into a single data frame called 'full_df'.
- Delete objects which will not be further used in order to release system memmory.
- Create a logical vector identifying the columns which should be selected to the final desired tidy data set. The desired data set is the one with variables related to the mean and standard deviation of measurements, added of 'Group', 'Subject' and 'Activity' columns which indentify the measurements itself.
- Extract the desired columns and generate an onject called 'final_df'.
- Read 'activity_labels.txt' file and create an object with the names for each category number in 'Activity' column in 'final_df'.
- Replace each category number under 'Activity' column in 'final_df' data frame with its descriptions.
- Calculate the mean of selected measurements, using columns 'Subject' and 'Activity' to group the results.
- Sort the calculated results by 'Subject' column.
- Rearrange the rows names which were changed during the process.
- Delete objects which will not be further used in order to release system memmory.
- Create the directory 'tidy_data' and save 'tidy_data.txt' file.

6. SOFTWARES AND VERSIONS :

The current script was made using the following softwares and versions :

- R for Mac OS X, Version 3.1.1 2014-07-11, R.app 1.65
- RStudio for Mac OS X, Version 0.98.994
- Mac OS X, Version 10.9.4