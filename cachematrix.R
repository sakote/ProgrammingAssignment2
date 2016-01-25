## Put comments here that give an overall description of what your
## functions do
# 1. set the value of the matrix
# 2. get the value of the matrix
# 3. set the value of inverse of the matrix
# 4. get the value of inverse of the matrix

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  minv <- NULL
  set <- function(y) {
    x <<- y
    minv <<- NULL
  }
  get <- function() x
  setminv <- function(inverse) minv <<- inverse
  getminv <- function() minv
  list(set=set, get=get, setminv=setminv, getminv=getminv)
}


## Write a short comment describing this function
# The following function returns the inverse of the matrix x. 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  minv <- x$getminv()
  if(!is.null(minv)) {
    message("getting cached data.")
    return(minv)
  }
  data <- x$get()
  minv <- solve(data)
  x$setminv(minv)
  minv
}
