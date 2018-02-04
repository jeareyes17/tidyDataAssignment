
# Human Activity Recognition Using Smartphones Analysis Dataset

## Overview

The dataset includes the following files:

- 'README.md'

- 'run_analysis.R': Shows processing involved in tidying the data taken from the Human Activity Recognition Using Smartphones Dataset.
                    The file includes the downloading and unzipping of the file from the original dataset, collating multiple files from 
                    the into a single dataset through the use of dplyr library and assigning of readable column names and lastly, the
                    calculation of the mean and standard for each features per subject and activity. The summary is displayed as output on
                    the tidydata.txt generated from running the run_analysis.R

- 'CodeBook.md':  List of all variables of the dataset with relevant information such as transformations performed.
- 'tidydata.txt': Contains the descriptive statistics specifically the mean and standard deviation per subject and activity. Each row                       contains the subject identifier, activity performed and the measures for each of the feature. This data is a cleaned      subset taken from the original Human Activity Recognition Using Smartphones Dataset as an output from the run_analysis.R     

