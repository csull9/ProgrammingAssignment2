## Finds the inverse of a matrix, sometimes recalling from a cache 

## Takes a matrix and returns a list to set value of the matrix, get its value
## set the value of its inverse, and get the value of its inverse 

makeCacheMatrix <- function(x = matrix()) {
	inv <- NULL
	set <- function(y){
		x <<- y
		inv <<- NULL
	}
	get <- function() x 
	setinverse <- function(solve) inv <<- solve
	getinverse <- function() inv
	list(set = set, get = get,
		setinverse = setinverse,
		getinverse = getinverse)
}


## Takes the above function and computes matrix of inverse, saying if it has been
## calculated from a cache 

cacheSolve <- function(x, ...) {
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
