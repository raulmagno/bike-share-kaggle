CreateCsvWithResults <- function(test_standardize){  
  result <- data.frame(test_standardize$datetime,test_standardize$count)
  colnames(result)[1] <- "datetime"
  colnames(result)[2] <- "count"
  write.csv(result,"bikelmFinalBoosting.csv", row.names = FALSE)
}

