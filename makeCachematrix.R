makeCacheMatrix <- function(x = matrix()) {
  m <- NULL # iniitalize m
  set <- function(y) { # set value of vector
    x <<- y
    m <<- NULL
  }
  get <- function() x # get value of vector
  setinv <- function(inv) m <<- inv # set value of inverse
  getinv <- function() m # get value of inverse
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
}