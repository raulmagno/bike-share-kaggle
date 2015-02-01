
MLModel <- function(traning_standardize,test_standardize){

    modFit <- train(casual  ~  holiday + workingday + weather 
                    + atemp + humidity + windspeed + year + day + mon + hour,
                    data=traning_standardize, method = "gbm",  verbose = FALSE)
    
    pred <- predict(modFit, newdata = test_standardize)
    test_standardize$casual <- round(pred,digits = 0) 
    
    modFit <- train(registered  ~ season + holiday + workingday + weather 
                    + atemp + humidity + windspeed + casual + year + day + mon + hour,
                    data=traning_standardize, method = "gbm",  verbose = FALSE)
    
    pred <- predict(modFit, newdata = test_standardize)
    test_standardize$registered <- round(pred,digits = 0) 
    
    # Prepare to Output , I will change this code
    test_standardize$casual <- ifelse(test_standardize$casual < 0,0,test_standardize$casual)
    test_standardize$registered <- ifelse(test_standardize$registered < 0,0,test_standardize$registered)
    test_standardize$count <- (test_standardize$registered + test_standardize$casual) 
    return(test_standardize)
}


