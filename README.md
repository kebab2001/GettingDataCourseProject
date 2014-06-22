# Coursera Getting & Cleaning Data course project

## How to run the script
The script is in a single file, *run_analysis.R*
The script requires *reshape2* library

# Description of the script
- First, the script combines test and train material from *UCI HAR Dataset//test* and *UCI HAR Dataset//train* folders. Then, the data frame columns are labeled according to the *features.txt*, which is included in the original material. 
- Then, the script makes a list of all variables with mean() or std() and uses this list to make a thinner dataframe with just the required columns for the subsequent analysis
- After this, the subject and activity lists, for both test and training datasets are read, combined and finally combined with the thin dataframe. Also, the activity list is transformed into descriptive, according to *activity_labels.txt*
- Finally, the thin dataframe is melted into even thinner dataframe and the averages are calculated for each subject, activity and *mean() or *std() columns. After this, the results are saved in a separate file