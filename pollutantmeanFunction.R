pollutantmean <- function(dir, pollutecol, id = 1:332) {
  Allfiles = list.files(path = dir, pattern="*.csv", full.names = TRUE)
  allobservations <- numeric()
  for (i in id){
    datapart <- read.csv(Allfiles[i])
    allobservations <- c(allobservations, datapart[[pollutecol]])
  }
  
  mean(allobservations, na.rm = TRUE)
}
