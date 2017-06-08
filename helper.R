#normalize data
normalize <- function( x) { return(( x - min( x)) / (max( x) - min( x))) }
#get types of data
getTypes <- function(x){
  types <- as.data.frame(lapply(x, typeof))
  classes <- as.data.frame(lapply(x, class))
  results <- rbind(types, classes)
  return(results)
}
#results <- as.data.frame(mclapply(credit, typeof))

#convert currency to Float
toCurrency <- function(x) {as.numeric(gsub('[$,]', '', x))}



#get lowest 10
lowHigh <- function(x, amount = 10, decreasing = F) {
  if(is.vector(x)){
    results <- sort(x, decreasing = decreasing)[1:amount]
  }else{
    results <- "Not a vector"
  }
  return(results)
}