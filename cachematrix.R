## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
  myInv <- NULL
  
  #Gets the matrix to be inversed
  get <- function() d
  
  #Sets the matrix to be inversed
  set <- function(argd) {
    d <<- argd
    myInv <<- NULL
  }
  
  #Gets the inverse of the matrix
  getInverse <- function() myInv
  
  #Sets the inverse of the matrix
  setInverse <- function(argi) myInv <<- argi
  
  
  list(get = get, set = set, 
       getInverse = getInverse, setInverse = setInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  
  ## Return a matrix that is the inverse of 'x'
  m <- x$getInverse()
  
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  
  data <- x$get()
  m <- solve(data, ...)
  x$setInverse(m)
  m
}
