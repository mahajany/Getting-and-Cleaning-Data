#Course Project -  Getting and Cleaning Data
##Script: run_analysis.R 
##Description:
1 .Get the data in this format (Ref: https://class.coursera.org/getdata-006/forum/thread?thread_id=43 , David Hood ) 
           |<--features.txt-->|                                             |          |
           | X                | Y : Training ID -- from activity_labels.txt | Subject  |
           |   _test          |                                             |          |
           |   _train        |                                              |          |
2. Creat the tidy dataset from this data.
3. Return a data-frame for above "tidy" dataset: 
##How to run:
Enter following on R command prompt and press enter:
run_analysis()

###Input paramenter: 
* Input UCI HAR Dataset - Optional, defaulted to 	"./UCI HAR Dataset"

###Outputs:
* A dataset (text file) run_analysis.Output.txt in the current directory (of run_analysis.R)
* A data-frame of tidy dataaset

### Assumptions: 
* Data is already downloaded
* Relative path of data downloaded is .\UCI HAR Dataset (w.r.t script's location)

###Helper functions:
* readFileToDF() - The generic read.table...reads every text file

###Steps in script:
1. Get refernce data / column-name - features.txt, and activity_labels.txt, load in data-frames.
2. Get test data - X, Y and Subject
3. Get train data - X, Y and Subject
4. Now join/merge test and train data
5. Calculate mean for all the features, grouped by subject-IDs and activities.
6. Write it to a file run_analysis.Output.txt, and
7. Return a data-frame object to calling environment.