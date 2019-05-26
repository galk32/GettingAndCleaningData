library(tidyverse)

#Importing 

activity_labels <- read_table("activity_labels.txt")
#features
features <- read.table("features.txt",row.names=NULL)
features <- as.tibble(features)


#---------------------------------------features---------------------------------------------
head(features)
#filtering the mean and std variables
feature_mean_std_index <- features[grep("std|mean", features$V2),]

#making Variable names same with X_test.txt
feature_mean_std_index$V1 <- paste0("V",feature_mean_std_index$V1)

#indexing variable names
Var_name <- feature_mean_std_index$V2
#---------------------------------------------------------------------------------------------
#-----------------------A)IMPROTING AND TIDYNG TEST DATA SET----------------------------------
#---------------------------------------------------------------------------------------------

X_test <- read.table("./test/X_test.txt")
X_test <- as.tibble(X_test)

#choose mean and sd, variables
x_test_mean_sd <- X_test[,feature_mean_std_index$V1]

#rename variables
names(x_test_mean_sd) <- Var_name


#--------------------------------test. activity labeled-----------------------
y_test <- read.table("./test/y_test.txt")
y_test <- as.tibble(y_test)

#bind colume activity with the X_test_mean_sd_actv
x_test_mean_sd_actv <- bind_cols(x_test_mean_sd, y_test)

#rename variable V1 as activity 
x_test_mean_sd_actv %>% rename(activity = V1) -> x_test_mean_sd_actv

x_test_mean_sd_actv <- x_test_mean_sd_actv[c(80,1:79)]

x_test_mean_sd_actv$activity <- as.factor(x_test_mean_sd_actv$activity)

library(forcats)
#rename factors
x_test_mean_sd_actv$activity <- fct_recode(x_test_mean_sd_actv$activity,
                                           walking="1",walking_ustairs="2",
                                           walking_downstairs="3",
                                           sitting="4",stading="5",
                                           laying="6")
head(x_test_mean_sd_actv)
tail(x_test_mean_sd_actv)
#---------------------------------------------------------------------------------------------
#-----------------------A)IMPROTING AND TIDYNG TRAIN DATA SET---------------------------------
#---------------------------------------------------------------------------------------------

X_train <- read.table("./train/X_train.txt")
X_train <- as.tibble(X_train)

#choose mean and sd, variables
x_train_mean_sd <- X_train[,feature_mean_std_index$V1]

#rename variables
names(x_train_mean_sd) <- Var_name


#--------------------------------train activity labeled-----------------------
y_train <- read.table("./train/y_train.txt")
y_train <- as.tibble(y_train)

#bind colume activity with the X_test_mean_sd_actv
x_train_mean_sd_actv <- bind_cols(x_train_mean_sd, y_train)

#rename variable V1 as activity 
x_train_mean_sd_actv %>% rename(activity = V1) -> x_train_mean_sd_actv

x_train_mean_sd_actv <- x_train_mean_sd_actv[c(80,1:79)]

x_train_mean_sd_actv$activity <- as.factor(x_train_mean_sd_actv$activity)

library(forcats)
#rename factors
x_train_mean_sd_actv$activity <- fct_recode(x_train_mean_sd_actv$activity,
                                           walking="1",walking_ustairs="2",
                                           walking_downstairs="3",
                                           sitting="4",stading="5",
                                           laying="6")

head(x_train_mean_sd_actv)
tail(x_train_mean_sd_actv)

#----------------------------------MERGING TEST AND TRAIN DATA SETS---------------------

mergedataset <-bind_rows(x_train_mean_sd_actv,x_test_mean_sd_actv)

variables_summary <- lapply(mergedataset, summary)

# creates a second, independent tidy data set with the average 
# of each variable for each activity and each subject.

mergedataset %>% group_by(activity) %>% 
  summarize_all(mean) ->avg_activity


#average values per activity

View(avg_activity)
View(variables_summary)


#writing the file
write.table(x=avg_activity,file = "./avg_activity.txt", row.names = FALSE)
