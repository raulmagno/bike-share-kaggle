library(Hmisc)
trainData <- read.csv("train.csv", sep = ",",stringsAsFactor = FALSE)
featurePlot(x = trainData[,c("temp","atemp","humidity","windspeed")], y = trainData$count)
featurePlot(x = trainData[,c("casual","registered")], y = trainData$count)
featurePlot(x = trainData[,c("holiday","workingday")], y = trainData$count)
featurePlot(x = trainData[,c("season")], y = trainData$count)

data[,-c("datetime")]

cor(trainData$windspeed,trainData$casual)
ctab <- cor(trainData[,-c(1,12)])
#mtcars is a data frame 
rcorr(as.matrix(mtcars))

subsetseason <- subset(traning,traning$season == 1)
qplot(x = atemp,y = casual, data = traning)

qplot(subsetseason$casual,colour = season, data = subsetseason)

ggplot(aes(x = datetime, y = registered), data = trainData) +
  geom_point(alpha = 1/5)

modFit <- rpart(season ~ 
                 atemp + humidity , data=traning_standardize)

modFit <- rpart(weather~ humidity + windspeed, data=traning_standardize)

modFit <- rpart(season ~  weather +
                  atemp + humidity + windspeed, data=traning_standardize)


fancyRpartPlot(modFit$finalModel)
fancyRpartPlot(modFit,main='season');
dev.off()
plot(modFit)


# Fazer operações com dataframe para entender operações com matrix


x <- sample(1:8,5,replace=T)
y <- sample(1:8,5,replace=T)
df = data.frame(x,y)





