## Put comments here that give an overall description of what your
## functions do

## this function creates a matrix that can cache its' inverse

makeCacheMatrix <- function(x = matrix()) {
      m <- NULL
      set <- funciton(y) {
        x <<- y
        m << - NULL
      }
      get <- function() x
      setinverse <- function(inverse) m <<- inverse
      getinverse <- function() m
      list(set = set, get = get, 
           setinverse = setinverse,
           getinverse = getinverse)
}


## This function computes the inverse; however, if inverse has already been calculated
## then cachesolve will retrieve inverse from cache

cacheSolve <- function(x, ...) {
      m <- x$getinverse()
      if!is.null(m)) {
          message("getting cached data")
          return(m)
      }
      data <- x$get()
      m <- solve(data, ...)
      x$setinverse(m)
      m
}
