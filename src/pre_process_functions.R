
ZScoreStandardize <- function(dt_frame){
  dt_standardize <- dt_frame
  
  traning_standardize$atemp <- 
    (traning_standardize$atemp - mean(traning_standardize$atemp)
     /sd(traning_standardize$atemp)) 
  traning_standardize$humidity <- 
    (traning_standardize$humidity - mean(traning_standardize$humidity)
     /sd(traning_standardize$humidity)) 
  traning_standardize$windspeed <- 
    (traning_standardize$windspeed - mean(traning_standardize$windspeed)
     /sd(traning_standardize$windspeed)) 
  
  dt_standardize$atemp <- scale(dt_standardize$atemp, center = TRUE , scale = TRUE)
  dt_standardize$humidity <- scale(dt_standardize$humidity, center = TRUE , scale = TRUE)
  dt_standardize$windspeed <- scale(dt_standardize$windspeed , center = TRUE , scale = TRUE)
  return (dt_standardize)
}

AttributesEngineering <- function(dt_standardize){
  dt_standardize$year = (as.POSIXlt(dt_standardize$datetime))$year
  dt_standardize$day = (as.POSIXlt(dt_standardize$datetime))$mday
  dt_standardize$mon = ((as.POSIXlt(dt_standardize$datetime))$mon) + 1
  dt_standardize$hour = (as.POSIXlt(dt_standardize$datetime))$hour   
  return (dt_standardize)
  
}