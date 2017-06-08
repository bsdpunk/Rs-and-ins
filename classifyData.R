#get types of data
classifyData <- function(x) {
  types <- as.data.frame(lapply(x, typeof))
  classes <- as.data.frame(lapply(x, class))
  results <- rbind(types, classes)
  factorCols <- which(results[2,] == 'factor')
  fLevels <- as.data.frame(lapply(x[,factorCols], levels))
  for(i in factorCols) {
    levLeng <- length(levels(nashHouse[,i]))
    fLevels[i] <- levLeng
  }
  fLevels.df <- as.data.frame(row.names = colnames(results), fLevels)
  rbind(results, fLevels.df)
  return(results)
}

fLevels.df <- data.frame(t(as.character(fLevels)), stringsAsFactors = T)
fLevels.df <- data.frame(t(fLevels))
fLevels <- numeric(ncol(x))
fLevels[ncol(x)] <- 0
fLevel <- data.frame(row.names = colnames(x))
for(i in factorCols) {}
for(i in factorCols) { levLeng <- length(levels(nashHouse[,i])); fLevels[i] <- levLeng; }