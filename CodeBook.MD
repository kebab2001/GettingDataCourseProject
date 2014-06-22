## Codebook for Getting and Cleaning Data course project

This codebook describes the inputs and transformations, which are done on the original data, before the final tidy data set is produced

### Input files
All the input files are from the 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
file.
The following files are used in the project:
X_test.txt
X_train.txt
features.txt
subject_train.txt
subject_test.txt
y_test.txt
y_train.txt
activity_labels.txt (not in the script)

### Output files
results.txt (tab-separated file)

## Procedures done to original files
- Combining Test and Train files to a common one
- Renaming the columns according to features.txt
- Extracting ONLY the columns with mean() or std() values (omitting e.g. meanFreq() values) to a new narrow dataframe
- Adding the subject and activity (which was first made more descriptive) information to the narrow dataframe
- Melting the new dataframe to even narrower one, and the calculating means for all 1. subject 2. activity 3. variable combinations
- Writing a separate results.txt file

## Variables in the results.txt

Subj
1-30, individual numbers

Activity
WALKING
WALKING_UPSTAIRS
WALKING_DOWNSTAIRS
SITTING
STANDING
LAYING

For each of the following, the range is -1...1 (total 66 variables) and the exact description can be found in features_info.txt file, included with the original data

tBodyAcc-mean()-X        
tBodyAcc-mean()-Y	
tBodyAcc-mean()-Z	
tBodyAcc-std()-X	
tBodyAcc-std()-Y	
tBodyAcc-std()-Z	
tGravityAcc-mean()-X	
tGravityAcc-mean()-Y	
tGravityAcc-mean()-Z	
tGravityAcc-std()-X	
tGravityAcc-std()-Y	
tGravityAcc-std()-Z	
tBodyAccJerk-mean()-X	
tBodyAccJerk-mean()-Y	
tBodyAccJerk-mean()-Z	
tBodyAccJerk-std()-X	
tBodyAccJerk-std()-Y	
tBodyAccJerk-std()-Z	
tBodyGyro-mean()-X	
tBodyGyro-mean()-Y	
tBodyGyro-mean()-Z	
tBodyGyro-std()-X	
tBodyGyro-std()-Y	
tBodyGyro-std()-Z	
tBodyGyroJerk-mean()-X	
tBodyGyroJerk-mean()-Y	
tBodyGyroJerk-mean()-Z	
tBodyGyroJerk-std()-X	
tBodyGyroJerk-std()-Y	
tBodyGyroJerk-std()-Z	
tBodyAccMag-mean()	
tBodyAccMag-std()	
tGravityAccMag-mean()	
tGravityAccMag-std()	
tBodyAccJerkMag-mean()	
tBodyAccJerkMag-std()	
tBodyGyroMag-mean()	
tBodyGyroMag-std()	
tBodyGyroJerkMag-mean()	
tBodyGyroJerkMag-std()	
fBodyAcc-mean()-X	
fBodyAcc-mean()-Y	
fBodyAcc-mean()-Z	
fBodyAcc-std()-X	
fBodyAcc-std()-Y	
fBodyAcc-std()-Z	
fBodyAccJerk-mean()-X	
fBodyAccJerk-mean()-Y	
fBodyAccJerk-mean()-Z	
fBodyAccJerk-std()-X	
fBodyAccJerk-std()-Y	
fBodyAccJerk-std()-Z	
fBodyGyro-mean()-X	
fBodyGyro-mean()-Y	
fBodyGyro-std()-X	
fBodyGyro-std()-Y	
fBodyGyro-std()-Z	
fBodyAccMag-mean()	
fBodyAccMag-std()	
fBodyBodyAccJerkMag-mean()	
fBodyBodyAccJerkMag-std()	
fBodyBodyGyroMag-mean()	
fBodyBodyGyroMag-std()	
fBodyBodyGyroJerkMag-mean()	
fBodyBodyGyroJerkMag-std()
fBodyGyro-mean()-Z	