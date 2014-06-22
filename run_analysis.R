## Coursera Getting Data - Course Project

## Requires reshape2

## Read test and train materials and combine them to the same data frame
test <- read.table("UCI HAR Dataset//test//X_test.txt")
train <- read.table("UCI HAR Dataset//train//X_train.txt")
combined <- rbind(test,train)

## Read the column descriptions, rename the columns in the combined file
names <- read.table("UCI HAR Dataset//features.txt")
names$V2 <- as.character(names$V2)
colnames(combined) <- names$V2

## Make a list of all variables, which we want
namesWanted <- names[grep("mean\\(\\)|std\\(\\)",names$V2),]

## Make a new data frame, which has only the columns of interest
combinedInterest <- combined[,namesWanted$V2]

## Read the subject lists from test and train materials, combine them
subj_train <- read.table("UCI HAR Dataset//train//subject_train.txt")
subj_test <- read.table("UCI HAR Dataset//test//subject_test.txt")
subj <- c(subj_test$V1,subj_train$V1)

## Read the activity lists from test and train materials, combine them
activity_test <- read.table("UCI HAR Dataset//test//y_test.txt")
activity_train <- read.table("UCI HAR Dataset//train//y_train.txt")
activity <- c(activity_test$V1,activity_train$V1)

## Rename the activities to descriptive names
activity <- sub(1, "WALKING", activity)
activity <- sub(2, "WALKING_UPSTAIRS", activity)
activity <- sub(3, "WALKING_DOWNSTAIRS", activity)
activity <- sub(4, "SITTING", activity)
activity <- sub(5, "STANDING", activity)
activity <- sub(6, "LAYING", activity)

## Combine the subject, activity label and combined test&train material into same data frame
combinedSubj <- cbind(subj, activity, combinedInterest)

## Melt the data frame and the cast mean on each group
melted <- melt(combinedSubj, id.vars=c("subj", "activity"))
results <- dcast(melted, subj + activity ~ variable, mean)

## Write the results to tab separated results.txt file
write.table(results, file="results.txt",sep="\t")
