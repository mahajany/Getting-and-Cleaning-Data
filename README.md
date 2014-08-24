#Course Project -  Getting and Cleaning Data
##run_analysis.R 
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