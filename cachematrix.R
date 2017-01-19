Fork the GitHub repository containing the stub R files at https://github.com/rdpeng/ProgrammingAssignment2 to create a copy under your own account.
Clone your forked GitHub repository to your computer so that you can edit the files locally on your own machine.
Edit the R file contained in the git repository and place your solution in that file (please do not rename the file).
Commit your completed R file into YOUR git repository and push your git branch to the GitHub repository under your account.
Submit to Coursera the URL to your GitHub repository that contains the completed R code for the assignment.## Put comments here that give an overall description of what your
## functions do

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
