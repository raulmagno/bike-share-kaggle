
PreProcess <- function(training,testing){

  training_standardize <- training
  test_standardize <- testing
  training_standardize <- ZScoreStandardize(training_standardize)
  test_standardize <- ZScoreStandardize(test_standardize)
  training_standardize <- AttributesEngineering(training_standardize)
  test_standardize <- AttributesEngineering(test_standardize)
  test_standardize <- MLModel(training_standardize,test_standardize) 
  CreateCsvWithResults(test_standardize)
}


 




  



