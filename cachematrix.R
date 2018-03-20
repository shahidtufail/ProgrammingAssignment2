## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
  
  
  invmat <- NULL
  set <- function(y) {         #defined to assign new values.
    x <<- y
    invmat <<- NULL
  }
  get <- function() x   #return the matrix
  setinv <- function(inverse) invmat <<- inverse #set the value of invmat in parent envioronemnt
  getinv <- function() invmat   #get the value of inverse
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
  

}


## inverse already calculated then matrix will not change and cacheSolve function will
##extract the value from the cache


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  
  invmat <- x$getinv()
  if(!is.null(invmat)) {
    message("getting cached data")
    return(invmat)
  }
  data <- x$get()
  invmat <- inverse(data, ...)
  x$setinv(invmat)
  invmat
  
  
}
