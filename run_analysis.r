url<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

#create a destination file
destinationFile <- paste0(getwd(),"/","week4data.zip")
#download the zip file to the destination
download.file(url,destinationFile)
#unzip the downloaded file
unzip("week4data.zip",list=FALSE)

#read the headers
features<-read.table("features.txt",sep="",header=FALSE)
activity_labels<-read.table("activity_labels.txt",header=FALSE)

#read the data from the text file
x_test<-read.table("./test/X_test.txt", header = FALSE, sep = "",stringsAsFactors = FALSE)
#activity for test
y_test<-read.table("./test/y_test.txt", header = FALSE, sep = "",stringsAsFactors = FALSE)

x_train<-read.table("./train/X_train.txt",header=FALSE,sep="",stringsAsFactors=FALSE)
#activity for train
y_train<-read.table("./train/y_train.txt", header = FALSE, sep = "",stringsAsFactors = FALSE)

subject_test<-read.table("./test/subject_test.txt",sep="",header=FALSE, stringsAsFactors=FALSE)
subject_train<-read.table("./train/subject_train.txt",sep="",header=FALSE, stringsAsFactors=FALSE)
install.packages("dplyr")
library(dplyr)

#rename headers 
names(x_test)<- features$V2
names(x_train)<- features$V2

names(y_test)<-"activity"
names(y_train)<-"activity"

names(subject_test)<-"subject"
names(subject_train)<-"subject"

#merge columns coming from test
test<-cbind(x_test,y_test,subject_test)
train<-cbind(x_train,y_train,subject_train)
#merge rows coming from test and train
mergedTestTrainData<-rbind(test,train)

#filter out duplicated column names
valid_column_names <- make.names(names=names(mergedTestTrainData), unique=TRUE, allow_ = TRUE)
names(mergedTestTrainData) <- valid_column_names
#use dplyr to select columns containing mean and std
meanStdevData<-select(mergedTestTrainData,matches('mean|std'),activity,subject)

#assign column names to activity table
activityHeaders<-c("activity","activityDesc")
names(activity_labels)<-activityHeaders

#assign activity with activity description
meanStdevData<-mutate(meanStdevData,activity = as.character(factor(activity, levels=1:6,labels=activity_labels$activityDesc)))
#make activity data readable
meanStdevData$activity<-gsub("\\_", " ", meanStdevData$activity)
install.packages("lettercase")
library(lettercase)
meanStdevData$activity<-str_lower_case(meanStdevData$activity)
meanStdevData$activity<-str_cap_words(meanStdevData$activity)

#make column headers readable
names(meanStdevData)<-gsub("(^|\\p{P})\\s*(.)", "\\1\\U\\2", names(meanStdevData), perl=T)
names(meanStdevData)<-gsub('[\\.]{1,3}', '', names(meanStdevData), ignore.case = FALSE)

#question 5: Get the mean for each subject and activity
tidydata<-meanStdevData%>%group_by(Subject,Activity)%>%summarise_all(mean)
write.table(tidydata, file = "tidydata.txt", sep = " ", row.names=FALSE, quote = FALSE)

