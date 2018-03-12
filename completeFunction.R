complete <- function(dir, id=1:332){
  allFiles <- list.files(path=dir, pattern = ".csv", full.names = TRUE)
  nobs <- numeric()
  
  for (i in id){
    nobs <- c(nobs, sum(complete.cases(read.csv(allFiles[i]))))
    
  } 
  data.frame(id, nobs)
}
