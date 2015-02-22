## These functions allow to save potentially long computational
## time by caching the inverse of a matrix.

## This function creates a matrix, sets its value,
##gets its value, sets the value of its inverse, gets
## the value of its inverse

makeCacheMatrix <- function(x = matrix()) {

    m <- NULL # iniitalize m
    set <- function(y) { # set value of matrix
      x <<- y
      m <<- NULL
    }
    get <- function() x # get value of matrix
    setinv <- function(inv) m <<- inv # set value of inverse
    getinv <- function() m # get value of inverse
    list(set = set, get = get,
         setinv = setinv,
         getinv = getinv)
}


## This function gets the cached value of the inverse matrix
## if it has been already calculated. Otherwise it calculates
## the inverse.

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
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
