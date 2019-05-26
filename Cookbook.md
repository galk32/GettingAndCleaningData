# **COOKBOOK**

### *By Giorgos Anastaskos*
### *date:25/5/19*
The Cookbook describes a project which have been made from me and it is relevant to 
a final Coursera project "Getting and Cleaning Data.

* A full description of the data origin is available at the below site where the data have been obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip *

The goal of the project is to merge the train and the data set of the above zip file 
containing only the mean and std variables. Moreover the new data set must have tidy
descriptive variables and also to contain the activity class.

# Activity Class:

1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING

#    Steps which i followed in order to transform the data set in its final condition:
1. Improt the 'activity_labels'.txt.
2. Import the 'features.txt' as a tibble.
3. From the 'feature object' make a new subset that contains the std and mean variables as an index.
4. Indexing Variable names
5. Importing and Tidyng 'x_data.txt' ,'y_test.txt' and subject.test.txt 
6. Binding the activity and the subject column with the Test data set
7. Rename activity and subject variables in order to be in the descriptive form.Rearrange colume subject and activity to 1:2
   position.
9. Transform activity variables to a factor
10. The same procedure(steps 5-9) was followed for the train data set with the corresponding names train instead of test.
11. Merging the final two new data sets('x_train_mean_sd_actv' and 'x_test_mean_sd_actv') and changing subject to factor 
12. Creating a second, independent tidy data set with the mean of each variable per subject and activity with the
    name 'avg_activity' and then exporting it as a txt file.
13. Viewing both 'Variable summaries' and 'mean values per subject and activity'.



# Variables:
1.Activity is a factor class.
2.The other Variables are quantative variables.

## variables_summary
`$`subject`
  1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16  17  18  19  20  21  22  23  24 25  26  27  28  29  30:
347 302 341 317 302 325 308 281 288 294 316 320 327 323 328 366 368 364 360 354 408 321 372 381 409 392 376 382 344 383 
  


$activity
 walking    walking_ustairs walking_downstairs            sitting            stading    laying :
              
  1722               1544               1406               1777               1906       1944
            

$`tBodyAcc-mean()-X`
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-1.0000  0.2626  0.2772  0.2743  0.2884  1.0000 

$`tBodyAcc-mean()-Y`
    Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
-1.00000 -0.02490 -0.01716 -0.01774 -0.01062  1.00000 

$`tBodyAcc-mean()-Z`
    Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
-1.00000 -0.12102 -0.10860 -0.10892 -0.09759  1.00000 

$`tBodyAcc-std()-X`
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-1.0000 -0.9924 -0.9430 -0.6078 -0.2503  1.0000 

$`tBodyAcc-std()-Y`
    Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
-1.00000 -0.97699 -0.83503 -0.51019 -0.05734  1.00000 

$`tBodyAcc-std()-Z`
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-1.0000 -0.9791 -0.8508 -0.6131 -0.2787  1.0000 

$`tGravityAcc-mean()-X`
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-1.0000  0.8117  0.9218  0.6692  0.9547  1.0000 

$`tGravityAcc-mean()-Y`
     Min.   1st Qu.    Median      Mean   3rd Qu.      Max. 
-1.000000 -0.242943 -0.143551  0.004039  0.118905  1.000000 

$`tGravityAcc-mean()-Z`
    Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
-1.00000 -0.11671  0.03680  0.09215  0.21621  1.00000 

$`tGravityAcc-std()-X`
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-1.0000 -0.9949 -0.9819 -0.9652 -0.9615  1.0000 

$`tGravityAcc-std()-Y`
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-1.0000 -0.9913 -0.9759 -0.9544 -0.9464  1.0000 

$`tGravityAcc-std()-Z`
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-1.0000 -0.9866 -0.9665 -0.9389 -0.9296  1.0000 

$`tBodyAccJerk-mean()-X`
    Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
-1.00000  0.06298  0.07597  0.07894  0.09131  1.00000 

$`tBodyAccJerk-mean()-Y`
     Min.   1st Qu.    Median      Mean   3rd Qu.      Max. 
-1.000000 -0.018555  0.010753  0.007948  0.033538  1.000000 

$`tBodyAccJerk-mean()-Z`
     Min.   1st Qu.    Median      Mean   3rd Qu.      Max. 
-1.000000 -0.031552 -0.001159 -0.004675  0.024578  1.000000 

$`tBodyAccJerk-std()-X`
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-1.0000 -0.9913 -0.9513 -0.6398 -0.2912  1.0000 

$`tBodyAccJerk-std()-Y`
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-1.0000 -0.9850 -0.9250 -0.6080 -0.2218  1.0000 

$`tBodyAccJerk-std()-Z`
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-1.0000 -0.9892 -0.9543 -0.7628 -0.5485  1.0000 

$`tBodyGyro-mean()-X`
    Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
-1.00000 -0.04579 -0.02776 -0.03098 -0.01058  1.00000 

$`tBodyGyro-mean()-Y`
    Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
-1.00000 -0.10399 -0.07477 -0.07472 -0.05110  1.00000 

$`tBodyGyro-mean()-Z`
    Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
-1.00000  0.06485  0.08626  0.08836  0.11044  1.00000 

$`tBodyGyro-std()-X`
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-1.0000 -0.9872 -0.9016 -0.7212 -0.4822  1.0000 

$`tBodyGyro-std()-Y`
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-1.0000 -0.9819 -0.9106 -0.6827 -0.4461  1.0000 

$`tBodyGyro-std()-Z`
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-1.0000 -0.9850 -0.8819 -0.6537 -0.3379  1.0000 

$`tBodyGyroJerk-mean()-X`
    Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
-1.00000 -0.11723 -0.09824 -0.09671 -0.07930  1.00000 

$`tBodyGyroJerk-mean()-Y`
    Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
-1.00000 -0.05868 -0.04056 -0.04232 -0.02521  1.00000 

$`tBodyGyroJerk-mean()-Z`
    Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
-1.00000 -0.07936 -0.05455 -0.05483 -0.03168  1.00000 

$`tBodyGyroJerk-std()-X`
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-1.0000 -0.9907 -0.9348 -0.7313 -0.4865  1.0000 

$`tBodyGyroJerk-std()-Y`
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-1.0000 -0.9922 -0.9548 -0.7861 -0.6268  1.0000 

$`tBodyGyroJerk-std()-Z`
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-1.0000 -0.9926 -0.9503 -0.7399 -0.5097  1.0000 

$`tBodyAccMag-mean()`
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-1.0000 -0.9819 -0.8746 -0.5482 -0.1201  1.0000 

$`tBodyAccMag-std()`
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-1.0000 -0.9822 -0.8437 -0.5912 -0.2423  1.0000 

$`tGravityAccMag-mean()`
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-1.0000 -0.9819 -0.8746 -0.5482 -0.1201  1.0000 

$`tGravityAccMag-std()`
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-1.0000 -0.9822 -0.8437 -0.5912 -0.2423  1.0000 

$`tBodyAccJerkMag-mean()`
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-1.0000 -0.9896 -0.9481 -0.6494 -0.2956  1.0000 

$`tBodyAccJerkMag-std()`
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-1.0000 -0.9907 -0.9288 -0.6278 -0.2733  1.0000 

$`tBodyGyroMag-mean()`
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-1.0000 -0.9781 -0.8223 -0.6052 -0.2454  1.0000 

$`tBodyGyroMag-std()`
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-1.0000 -0.9775 -0.8259 -0.6625 -0.3940  1.0000 

$`tBodyGyroJerkMag-mean()`
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-1.0000 -0.9923 -0.9559 -0.7621 -0.5499  1.0000 

$`tBodyGyroJerkMag-std()`
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-1.0000 -0.9922 -0.9403 -0.7780 -0.6093  1.0000 

$`fBodyAcc-mean()-X`
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-1.0000 -0.9913 -0.9456 -0.6228 -0.2646  1.0000 

$`fBodyAcc-mean()-Y`
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-1.0000 -0.9792 -0.8643 -0.5375 -0.1032  1.0000 

$`fBodyAcc-mean()-Z`
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-1.0000 -0.9832 -0.8954 -0.6650 -0.3662  1.0000 

$`fBodyAcc-std()-X`
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-1.0000 -0.9929 -0.9416 -0.6034 -0.2493  1.0000 

$`fBodyAcc-std()-Y`
    Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
-1.00000 -0.97689 -0.83261 -0.52842 -0.09216  1.00000 

$`fBodyAcc-std()-Z`
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-1.0000 -0.9780 -0.8398 -0.6179 -0.3023  1.0000 

$`fBodyAcc-meanFreq()-X`
    Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
-1.00000 -0.41878 -0.23825 -0.22147 -0.02043  1.00000 

$`fBodyAcc-meanFreq()-Y`
     Min.   1st Qu.    Median      Mean   3rd Qu.      Max. 
-1.000000 -0.144772  0.004666  0.015401  0.176603  1.000000 

$`fBodyAcc-meanFreq()-Z`
    Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
-1.00000 -0.13845  0.06084  0.04731  0.24922  1.00000 

$`fBodyAccJerk-mean()-X`
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-1.0000 -0.9912 -0.9516 -0.6567 -0.3270  1.0000 

$`fBodyAccJerk-mean()-Y`
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-1.0000 -0.9848 -0.9257 -0.6290 -0.2638  1.0000 

$`fBodyAccJerk-mean()-Z`
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-1.0000 -0.9873 -0.9475 -0.7436 -0.5133  1.0000 

$`fBodyAccJerk-std()-X`
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-1.0000 -0.9920 -0.9562 -0.6550 -0.3203  1.0000 

$`fBodyAccJerk-std()-Y`
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-1.0000 -0.9865 -0.9280 -0.6122 -0.2361  1.0000 

$`fBodyAccJerk-std()-Z`
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-1.0000 -0.9895 -0.9590 -0.7809 -0.5903  1.0000 

$`fBodyAccJerk-meanFreq()-X`
    Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
-1.00000 -0.29770 -0.04544 -0.04771  0.20447  1.00000 

$`fBodyAccJerk-meanFreq()-Y`
     Min.   1st Qu.    Median      Mean   3rd Qu.      Max. 
-1.000000 -0.427951 -0.236530 -0.213393  0.008651  1.000000 

$`fBodyAccJerk-meanFreq()-Z`
    Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
-1.00000 -0.33139 -0.10246 -0.12383  0.09124  1.00000 

$`fBodyGyro-mean()-X`
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-1.0000 -0.9853 -0.8917 -0.6721 -0.3837  1.0000 

$`fBodyGyro-mean()-Y`
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-1.0000 -0.9847 -0.9197 -0.7062 -0.4735  1.0000 

$`fBodyGyro-mean()-Z`
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-1.0000 -0.9851 -0.8877 -0.6442 -0.3225  1.0000 

$`fBodyGyro-std()-X`
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-1.0000 -0.9881 -0.9053 -0.7386 -0.5225  1.0000 

$`fBodyGyro-std()-Y`
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-1.0000 -0.9808 -0.9061 -0.6742 -0.4385  1.0000 

$`fBodyGyro-std()-Z`
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-1.0000 -0.9862 -0.8915 -0.6904 -0.4168  1.0000 

$`fBodyGyro-meanFreq()-X`
    Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
-1.00000 -0.27189 -0.09868 -0.10104  0.06810  1.00000 

$`fBodyGyro-meanFreq()-Y`
    Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
-1.00000 -0.36257 -0.17298 -0.17428  0.01366  1.00000 

$`fBodyGyro-meanFreq()-Z`
    Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
-1.00000 -0.23240 -0.05369 -0.05139  0.12251  1.00000 

$`fBodyAccMag-mean()`
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-1.0000 -0.9847 -0.8755 -0.5860 -0.2173  1.0000 

$`fBodyAccMag-std()`
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-1.0000 -0.9829 -0.8547 -0.6595 -0.3823  1.0000 

$`fBodyAccMag-meanFreq()`
    Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
-1.00000 -0.09663  0.07026  0.07688  0.24495  1.00000 

$`fBodyBodyAccJerkMag-mean()`
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-1.0000 -0.9898 -0.9290 -0.6208 -0.2600  1.0000 

$`fBodyBodyAccJerkMag-std()`
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-1.0000 -0.9907 -0.9255 -0.6401 -0.3082  1.0000 

$`fBodyBodyAccJerkMag-meanFreq()`
     Min.   1st Qu.    Median      Mean   3rd Qu.      Max. 
-1.000000 -0.002959  0.164180  0.173220  0.357307  1.000000 

$`fBodyBodyGyroMag-mean()`
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-1.0000 -0.9825 -0.8756 -0.6974 -0.4514  1.0000 

$`fBodyBodyGyroMag-std()`
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-1.0000 -0.9781 -0.8275 -0.7000 -0.4713  1.0000 

$`fBodyBodyGyroMag-meanFreq()`
    Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
-1.00000 -0.23436 -0.05210 -0.04156  0.15158  1.00000 

$`fBodyBodyGyroJerkMag-mean()`
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-1.0000 -0.9921 -0.9453 -0.7798 -0.6122  1.0000 

$`fBodyBodyGyroJerkMag-std()`
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-1.0000 -0.9926 -0.9382 -0.7922 -0.6437  1.0000 

$`fBodyBodyGyroJerkMag-meanFreq()`
    Min.  1st Qu.   Median     Mean  3rd Qu.     Max. `
-1.00000 -0.01948  0.13625  0.12671  0.28896  1.00000 
