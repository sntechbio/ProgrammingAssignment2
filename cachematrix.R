## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  arr <- function(y) {
    x <<- y
    inv <<- NULL
  }
  rec <- function() {x}
  arrInverse <- function(inverse) {inv <<- inverse}
  recInverse <- function() {inv}
  list(arr = arr, rec = rec, arrInverse = arrInverse, recInverse = recInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  inv <- x$recInverse()
  if(!is.null(inv)) {
    message("getting cache data")
    return(inv)
  }
  mat <- x$rec()
  inv <- solve(mat, ...)
  x$arrInverse(inv)
  inv
        ## Return a matrix that is the inverse of 'x'
}
