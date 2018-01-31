
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
unduplicatedData <- mergedTestTrainData[ , !duplicated(colnames(mergedTestTrainData))]
#use dplyr to select columns containing mean and std
meanStdevData<-select(unduplicatedData,matches('mean|std'))

activityHeaders<-c("activity","activityDesc")
names(activity_labels)<-activityHeaders

#make valid column names to mutate
valid_column_names <- make.names(names=names(mergedTestTrainData), unique=TRUE, allow_ = TRUE)
##replace with readable headers
valid_column_names<-gsub('[\\.]{2,3}', '\\.', valid_column_names, ignore.case = FALSE)
valid_column_names<-gsub('\\.$', '', valid_column_names, ignore.case = FALSE)

names(mergedTestTrainData) <- valid_column_names
mergedTestTrainData<-mutate(mergedTestTrainData,activity = as.character(factor(activity, levels=1:6,labels=activity_labels$activityDesc)))

#question 5: Get the mean for each subject and activity
tidydata<-mergedTestTrainData%>%group_by(subject,activity)%>%summarise_all(mean)
write.table(tidydata, file = "tidydata.txt", sep = " ", row.names=FALSE, quote = FALSE)

