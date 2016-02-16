## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## Pass any 2 dimensional square matrix
## use getter and setter to get or modify its values and 
## similarly use getter setter for its inverse.

makeCacheMatrix <- function(x = matrix()) {
  ix <- NULL
  set <- function(y) {
    x <<- y
    ix <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) ix <<- inverse
  getinverse <- function() ix
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)

}


## Write a short comment describing this function

## Pass the list which the makeCacheMatrix returns
## it will return inverse either by calculating it or 
## directly returning from cache if available. 

cacheSolve <- function(x) {
        ix <- x$getinverse()
        if(!is.null(ix)) {
          message("getting cached data")
          return(ix)
        }
        data <- x$get()
        ix <- solve(data)
        x$setinverse(ix)
        ix
}
