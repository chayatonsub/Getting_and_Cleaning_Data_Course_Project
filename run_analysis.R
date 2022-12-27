if (!require("tidyverse")) install.packages("tidyverse")
library(tidyverse)

dir <- "UCI HAR Dataset"
## read necessary tables
activities <- read.table(paste(dir, "activity_labels.txt", sep="/"))
features <- read.table(paste(dir, "features.txt", sep="/"))
subject_test <- read.table(paste(dir, "test", "subject_test.txt", sep="/"))
X_test <- read.table(paste(dir, "test", "X_test.txt", sep="/"))
y_test <- read.table(paste(dir, "test", "y_test.txt", sep="/"))
subject_train <- read.table(paste(dir, "train", "subject_train.txt", sep="/"))
X_train <- read.table(paste(dir, "train", "X_train.txt", sep="/"))
y_train <- read.table(paste(dir, "train", "y_train.txt", sep="/"))

## combining train and test datasets
X <- rbind(X_test, X_train)
y <- rbind(y_test, y_train)
subject <- rbind(subject_test, subject_train)

## changing column names
names(X) <- features$V2
names(y) <- "activity_code"
names(subject) <- "subject"

mean_std_cols <- grep("mean\\(\\)|std\\(\\)", names(X), value = TRUE)
mean_std_X <- select(X, mean_std_cols)
data <- cbind(subject, y, mean_std_X)

data <- merge(activities, data, by.x = "V1", by.y = "activity_code")
names(data)[1] <- "activity_code"
names(data)[2] <- "activity"

final_data <- data %>% 
  select(-activity_code) %>% 
  group_by(activity, subject) %>% 
  summarize_all(mean)

write.table(final_data, "tidy_data.txt", sep = ",", row.names = FALSE)
