cacheSolve <- function(x, ...) {
  m <- x$getinv() 
  if(!is.null(m)) { # checks if inverse is already calculated
    message("getting cached data")
    return(m) # if it has been calculated, get the inverse
  }
  data <- x$get() #get the matrix value
  m <- solve(data, ...) #calculate the inverse
  x$setinv(m) 
  m
}