setwd("./UCI HAR Dataset") #Change directory
features<-read.table("features.txt"); features$V1<-NULL #Read 'features.txt' file, assign data to 'features' object, and delete extra column which is not used.
features<-gsub("tBody","time_body_",features$V2) #Adjustment of 'features' object to make variable names more descriptive.
features<-gsub("tGravity","time_gravity_",features) #Adjustment of 'features' object to make variable names more descriptive.
features<-gsub("fBodyBody","fBody",features) #Adjustment of 'features' object to make variable names more descriptive.
features<-gsub("fBody","frequency_body_",features) #Adjustment of 'features' object to make variable names more descriptive.
features<-gsub("Acc","linear_acceleration_",features) #Adjustment of 'features' object to make variable names more descriptive.
features<-gsub("Gyro","angular_velocity_",features) #Adjustment of 'features' object to make variable names more descriptive.
features<-gsub("Jerk","jerk_signal_",features) #Adjustment of 'features' object to make variable names more descriptive.
features<-gsub("Mag","magnitude_",features) #Adjustment of 'features' object to make variable names more descriptive.
features<-gsub("()","",features,fixed=T) #Adjustment of 'features' object to make variable names more descriptive.
features<-gsub("-","",features) #Adjustment of 'features' object to make variable names more descriptive.
features<-gsub("std","stdv",features) #Adjustment of 'features' object to make variable names more descriptive.
features<-gsub("X","_X_axis",features) #Adjustment of 'features' object to make variable names more descriptive.
features<-gsub("Y","_Y_axis",features) #Adjustment of 'features' object to make variable names more descriptive.
features<-gsub("Z","_Z_axis",features) #Adjustment of 'features' object to make variable names more descriptive.
features<-gsub("Freq","_frequency",features) #Adjustment of 'features' object to make variable names more descriptive.
setwd("./test/") #Change directory. 
xtest<-read.table("X_test.txt") #Read 'X_test.txt' file, assign data to 'xtest' object.
colnames(xtest)<-features #Set variables names in 'xtest' according list of all features provided by 'features' object.
ytest<-read.table("y_test.txt") #Read 'y_test.txt' file, assign data to 'ytest' object.
colnames(ytest)<-"Activity" #Set variable name in 'ytest' to 'Activity'.
subjtest<-read.table("subject_test.txt") #Read 'subject_test.txt' file, assign data to 'subjtest' object.
colnames(subjtest)<-"Subject" #Set variable name in 'subjtest' to 'Subject'.
group_test<-rep("Test",nrow(xtest)) #Create vector with string to identify the griuo of data and store in 'group_test' object.
group_test<-as.data.frame(group_test) #Transform 'group_test' object to data frame format.
colnames(group_test)<-"Group" #Set variable name in 'group_test' to 'Group'.
test_df<-data.frame(group_test,subjtest,ytest,xtest) #Merge all objects in a single data frame which contains all data from group 'test'.
rm(list= ls()[(ls() %in% c('xtest','ytest','subjtest','group_test'))]) #Delete objects which will no longer be used to release system memmory.
setwd("../") #Change directory.
setwd("./train/") #Change directory.
xtrain<-read.table("X_train.txt") #Read 'X_train.txt' file, assign data to 'xtrain' object.
colnames(xtrain)<-features #Set variables names in 'xtrain' according list of all features provided by 'features' object.
ytrain<-read.table("y_train.txt") #Read 'y_train.txt' file, assign data to 'ytrain' object.
colnames(ytrain)<-"Activity" #Set variable name in 'ytraint' to 'Activity'.
subjtrain<-read.table("subject_train.txt") #Read 'subject_train.txt' file, assign data to 'subjtrain' object.
colnames(subjtrain)<-"Subject" #Set variable name in 'subjtrain' to 'Subject'.
group_train<-rep("Train",nrow(xtrain)) #Create vector with string to identify the griuo of data and store in 'group_train' object.
group_train<-as.data.frame(group_train) #Transform 'group_train' object to data frame format.
colnames(group_train)<-"Group" #Set variable name in 'group_train' to 'Group'.
train_df<-data.frame(group_train,subjtrain,ytrain,xtrain) #Merge all objects in a single data frame which contains all data from group 'train'.
rm(list= ls()[(ls() %in% c('xtrain','ytrain','subjtrain','group_train','features'))]) #Delete objects which will no longer be used to release system memmory.
setwd("../") #Change directory.
full_df<-rbind(test_df,train_df) #Merge objects containing 'test'and 'train'data in a single data frame.
rm(list= ls()[(ls() %in% c('test_df','train_df'))]) #Delete objects which will no longer be used to release system memmory.
id<-grepl("Group|Subject|Activity|mean|stdv",colnames(full_df)) #Create a logical vector indicating the columns/variables of interest (Group, Subject, Activity, mean-containing, std-containing and Mean-containing).
clean_df<-full_df[,id] #Extract columns/variables of interest (Group, Subject, Activity, mean-containing, std-containing and Mean-containing) to object 'clean_df'.
lbls<-read.table("activity_labels.txt"); lbls$V1<-NULL #Read 'activity_labels.txt' file, assign data to 'lbls' object, and delete extra column which is not used.
clean_df$Activity<-factor(clean_df$Activity,levels=c(1:6),labels=lbls$V2) #Replace category numbers (1 to 6) in variable 'Activity' by its descriptions, as contained in object 'lbls'.
final_df<-aggregate(clean_df[,4:82],list(clean_df$Subject,clean_df$Activity),FUN=mean) #Calculate the mean values of all measurements, by 'Subject' and 'Activity' and obtain the final data frame 'final_df'.
names(final_df)[1]<-"Subject" #Replace the name of column to 'Subject' in object 'final_df'.
names(final_df)[2]<-"Activity" #Replace the name of column to 'Activity' in object 'final_df'.
tidy_data<-final_df[order(final_df$Subject),] #Sort object 'final_df' by 'Subject and create object 'tidy_data'.
row.names(tidy_data)<-seq(from=1,to=nrow(tidy_data),by=1) #Rearrange row names in data frame.
rm(list= ls()[(ls() %in% c('id','full_df','clean_df','lbls','final_df'))])
dir.create("./tidy_data",showWarnings=F) #Create folder 'tidy_data'
setwd("./tidy_data") #Change directory.
write.table(tidy_data,file="tidy_data.txt",row.names=F) #Write a TXT file with the obtained tidy data.
setwd("../") #Change directory.
setwd("../") #Change directory.