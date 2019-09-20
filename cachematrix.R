## Put comments here that give an overall description of what your
## functions do

##Make a Matrix, Set a Matrix, Create Inverse, Set Inverse ##

makecacheMatrix <- function(x = numeric()) {
m <- NULL
set <- function(y) {
  x <<- y
  m <<- NULL
}
  get <- function() x
  setinverse <- function(solve) m <<- mean
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Creating cache functionality, find if cache exisits, if yes (return) and if no (solve for inverse) ##

cachesolve <- function(x, ...) {
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
}
