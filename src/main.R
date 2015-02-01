setwd("~/R/RProjects/bikeshare/src/")
library("ggplot2")
library("caret")
library("Metrics")
library("dplyr")
library("rattle")
library("rpart")
library("rpart.plot")
source('pre_process_functions.R')
source('ml_model.R')
source('preprocess.R')
source('posprocess.R')
library(ellipse)
library(XML)


setwd("~/R/RProjects/bikeshare/DATA/")
trainData <- read.csv("train.csv", sep = ",",stringsAsFactor = FALSE)
testData <- read.csv("test.csv",sep = ",",stringsAsFactor = FALSE)
inTrain <- createDataPartition(y = trainData$count, p = 0.7 , list = FALSE)
training <- trainData[inTrain,]
testing <- trainData[-inTrain,]
training <- trainData
testing <- testData

PreProcess(training,testing)


















