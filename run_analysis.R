  
  ## READ TRAINING DATA
  trainingResults <- read.table("UCIHARDataset/train/X_train.txt");
  trainingSubjects <- read.table("UCIHARDataset/train/subject_train.txt") 
  trainingActivities <- read.table("UCIHARDataset/train/Y_train.txt")
  trainingData <- cbind(trainingSubjects,trainingResults,trainingActivities)
  trainingData$DataType <- rep("training",nrow(trainingData))
  
  ## READ TEST DATA
  testResults <- read.table("UCIHARDataset/test/X_test.txt")
  testActivities <- read.table("UCIHARDataset/test/Y_test.txt")
  testSubjects <- read.table("UCIHARDataset/test/subject_test.txt")
  testData <- cbind(testSubjects,testResults,testActivities)
  testData$DataType <- rep("test",nrow(testData))
  
  ## MERGE DATA SETS
  fullSet <- rbind(trainingData,testData)
  
  ## CREATE OBSERVATION ID COLUMN
  fullSet <- cbind(id=seq_len(nrow(fullSet)), fullSet)
  
  ## REMOVE UNNECCESSARY MEASUREMENT COLUMNS
  measurementLabels <- read.table("UCIHARDataset/features.txt")
  
  i <- 1
  removalList<-c()
  while(i<=nrow(measurementLabels)) {
    label <- measurementLabels[i,2]
    if(grepl("mean()",label)==TRUE || grepl("std()",label)==TRUE) {
      if(grepl("meanFreq()",label)==FALSE) {
        names(fullSet)[i+2]=as.character(label);
      } else {
        removalList<-c(removalList,i+2)
      }
    } else {
      removalList<-c(removalList,i+2)
    }
    i <- i+1
  }
  
  simpleSet<-subset(fullSet,select=-(removalList),drop=TRUE)
  
  ## LABEL VARIABLES  
  names(simpleSet)[1] <- "ObservationId"
  names(simpleSet)[2] <- "SubjectId"
  names(simpleSet)[ncol(simpleSet)-1] <- "ActivityId"
  names(simpleSet) <- sapply(names(simpleSet),gsub,pattern="tBody",replacement="TotalBody")
  names(simpleSet) <- sapply(names(simpleSet),gsub,pattern="tGravity",replacement="TotalGravity")
  names(simpleSet) <- sapply(names(simpleSet),gsub,pattern="fBody",replacement="FullBody")
  names(simpleSet) <- sapply(names(simpleSet),gsub,pattern="Mag",replacement="Magnitude")
  names(simpleSet) <- sapply(names(simpleSet),gsub,pattern="Gyro",replacement="Gyroscope")
  names(simpleSet) <- sapply(names(simpleSet),gsub,pattern="Acc",replacement="Acceleration")
  names(simpleSet) <- sapply(names(simpleSet),gsub,pattern="std()",replacement="StandardDeviation")
  names(simpleSet) <- sapply(names(simpleSet),gsub,pattern="mean()",replacement="Mean")
  
  ## SUMMARIZE MEASURES BY SUBJECT AND ACTIVITY
  i<-1
  tidySet<-data.frame()
  while(i<=max(simpleSet$SubjectId)) {
    a<-1
    while(a<=max(simpleSet$ActivityId)) {
      summaryData<-simpleSet[simpleSet$SubjectId==i & simpleSet$ActivityId==a,]
      means<-colMeans(summaryData[2:69])
      tidySet<-rbind(tidySet,means)
      names(tidySet)<-names(means)
      a<-a+1
    }
    i<-i+1
  }
  
  ## LABEL ACTIVITES
  activityLabels <- read.table("UCIHARDataset/activity_labels.txt")
  i<-1
  while(i<=nrow(activityLabels)) {
    tidySet$ActivityId <- sapply(tidySet$ActivityId,gsub,pattern=i,replacement=activityLabels[i,2])
    i<-i+1
  }
  
  write.table(tidySet, file="tidydata.txt", sep="\t", row.names=FALSE)
