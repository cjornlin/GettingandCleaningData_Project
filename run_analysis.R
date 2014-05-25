
##Load feature/column names
features<-read.table("features.txt",row.names=1)
features<-as.vector(features$V2)

##Load and merge test data set, subjects and activity labels
test<-read.table("./test/X_test.txt",col.names=features,check.names=FALSE)
test<-cbind(test,read.table("./test/subject_test.txt",col.names="Subject"))
test<-cbind(test,read.table("./test/y_test.txt",col.names="Act"))

##Load and merge training data set, subjects and activity labels
train<-read.table("./train/X_train.txt",col.names=features,check.names=FALSE)
train<-cbind(train,read.table("./train/subject_train.txt",col.names="Subject"))
train<-cbind(train,read.table("./train/y_train.txt",col.names="Act"))

##Merge test and training data set
merged<-rbind(test,train)

##Remove unnecessary data frames to conserve memory
remove(test)
remove(train)

##Load activity labels and names
activities<-read.table("activity_labels.txt",col.names=c("Act","Activity"))

##Merge activity names with merged test and training data by the activity label
merged<-merge(merged,activities, by = "Act",check.names=FALSE)

##Remove unnecessary data frame to conserve memory
remove(activities)

##Remove unnecessary activity label column
merged$Act<-NULL


##Identify columns to be saved that contain a mean, standard deviation, subject
##identifier or activity name
savecols<-sort(c(grep("mean\\(\\)",names(merged)),
                 grep("std\\(\\)",names(merged)),
                 grep("Subject",names(merged)),
                 grep("Activity",names(merged))))

##Trim data down to the saved columns list
mtrimmed<-merged[,savecols]

##Melt and cast data to create long, tidy data set with the average of each
##measurement for each subject and activity
melted<-melt(mtrimmed,id=c("Subject","Activity"))
tidyData<-dcast(melted,Subject + Activity ~ variable,mean)

##Create a tab separated variable file of the summary data
write.table(tidyData,"summary_by_subject_and_activity.txt",sep="\t",row.names=FALSE)
