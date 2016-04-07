## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y){ x <<- y
  inv <<- NULL}
  get <- function() x
  setinv <- function(x) {inv <<- x}
  getinv <- function() inv
  list(set = set, get = get, setinv = setinv, getinv = getinv)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
newmat <- x$get()
  newinv <- x$getinv()
  if (!is.null(newinv)) {
    message("Getting cached Inverse")
    return(newinv)
  }
  
  message("cached inverse not found. Calculating Inverse")
  newinv <- solve(newmat)
  x$setinv(newinv)
  newinv 
  ## Return a matrix that is the inverse of 'x'
}
