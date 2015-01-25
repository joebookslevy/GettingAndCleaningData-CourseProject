##You should create one R script called run_analysis.R that does the following. 
##1. Merges the training and the test sets to create one data set.
##2. Extracts only the measurements on the mean and standard deviation for each measurement. 
##3. Uses descriptive activity names to name the activities in the data set
##4. Appropriately labels the data set with descriptive variable names. 
##5. From the data set in step 4, creates a second, independent tidy data set with the average 
##   of each variable for each activity and each subject.


##Make sure the following packages are installed and running
library(data.table)
library(reshape2)
library(dplyr)

##Download zip file of dataset from which tidy dataset is to be created
if(!file.exists("./data")){dir.create("./data")}
fileURL<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
destfile<-"getdata-projectfiles-UCI-HAR-Dataset.zip"
download.file(fileURL, destfile=paste("data", destfile, sep="/"))
unzip(paste("data", destfile, sep="/"), exdir="data")
directory<-setdiff(dir("data"), destfile)
dateDownloaded<-date()
dateDownloaded

##Import labels from dataset
activity_labels<-read.table("./UCI HAR Dataset/activity_labels.txt")[,2]

##Import features and set up variable for needed features
features<-read.table("./UCI HAR Dataset/features.txt")[,2]
needed_features<-grepl("-mean\\(\\)|-std\\(\\)", features)

##Import X and Y test data
X_test<-read.table("./UCI HAR Dataset/test/X_test.txt")
Y_test<-read.table("./UCI HAR Dataset/test/y_test.txt")
subject_test<-read.table("./UCI HAR Dataset/test/subject_test.txt")
names(X_test)=features

##Extract only needed measurements of mean and standard deviation for test data
X_test=X_test[,needed_features]

##Import activity labels for test data
Y_test[,2]=activity_labels[Y_test[,1]]
names(Y_test)=c("Activity_ID", "Activity_Label")
names(subject_test)="Subject"

##Bind test data together
test_data<-cbind(as.data.table(subject_test), Y_test, X_test)
test_data2<-select(test_data, -Activity_ID)  ##Removes Acitivity ID column. It's
                                             ##basically a duplicate of Activity 
                                             ##Label, so it should be removed to
                                             ##to prep data to be tidy.

##Import and process X and Y training data
X_train<-read.table("./UCI HAR Dataset/train/X_train.txt")
Y_train<-read.table("./UCI HAR Dataset/train/y_train.txt")
subject_train<-read.table("./UCI HAR Dataset/train/subject_train.txt")
names(X_train)=features

##Extract only needed measurements of mean and standard deviation for training data
X_train=X_train[,needed_features]

##Import activity labels for training data
Y_train[,2]=activity_labels[Y_train[,1]]
names(Y_train)=c("Activity_ID", "Activity_Label")
names(subject_train)="Subject"

##Bind training data together
train_data<-cbind(as.data.table(subject_train), Y_train, X_train)
train_data2<-select(train_data, -Activity_ID)  ##Removes Acitivity ID column. It's
                                                ##basically a duplicate of Activity 
                                                ##Label, so it should be removed to
                                                ##to prep data to be tidy.

##Merge test and training data together
combined=rbind(test_data2, train_data2)
id_info=c("Subject", "Activity_Label")
data_info=setdiff(colnames(combined), id_info)
melt_combined=melt(combined, id=id_info, measure.vars=data_info)

##Apply mean function to dataset using dcast function to create indepdendent data set
independent_data=dcast(melt_combined, Subject+Activity_Label~variable, mean)

#Clarify descriptive names of variables
cnames<-names(independent_data)
rename<-sub("()", "", cnames, fixed=TRUE)  ##Removes () from variable names
rename2<-sub("-", "", rename, fixed=TRUE)  ##Removes the first set of -
rename3<-sub("-", "", rename2, fixed=TRUE)  ##Removes second set of -
rename4<-sub("t", "time", rename3, fixed=TRUE)  ##Replaces t's with time
rename5<-sub("stime", "St", rename4, fixed=TRUE)  ##Makes sure Std remains
rename6<-sub("f", "frequency", rename5, fixed=TRUE)  ##Replaces f's with frequency
rename7<-sub("BodyBody", "Body", rename6, fixed=TRUE)  ##Replaces "BodyBody" instances with just "Body"
rename8<-sub("Acc", "Accelerometer", rename7, fixed=TRUE) ##Replaces Acc with Accelerometer
rename9<-sub("Gyro", "Gyroscope", rename8, fixed=TRUE) ##Replaces Gyro with Gyroscope
mean_fix<-sub("mean", "Mean", rename9, fixed=TRUE) ##Capitalizes mean
sub_fix<-sub("Subjectime", "Subject", mean_fix, fixed=TRUE) ##Fixes Subject
activity_fix<-sub("Actimeivity_Label", "Activity Label", sub_fix, fixed=TRUE) ##Fixes Activity Label
setnames(independent_data, cnames, activity_fix)  ##Sets column names as new/updated and more descriptive names

##Create tidy data file
write.table(independent_data, file="./tidy_data.txt", row.name=FALSE)
