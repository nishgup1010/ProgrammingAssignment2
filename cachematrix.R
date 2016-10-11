## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function returns the list containing functions.These functions are used 
## to make the matrix cache matrix

makeCacheMatrix <- function(x = matrix()) {
	parCacheMatrix = NULL
	setMatrix <- function (argSetMatrix) {
		argMatrix <<- argSetMatrix
	}
	getMatrix <- function () argMatrix
	setCacheMatrix <- function () {
		parCacheMatrix <<- argMatrix 
	}	
	getCacheMatrix <- function () parCacheMatrix 
	list(setMatrix = setMatrix, getMatrix = getMatrix, 
					setCacheMatrix = setCacheMatrix, 
					getCacheMatrix = getCacheMatrix )
}


## Write a short comment describing this function
## This functions check if the inverse is present in cache. if it is not present
## in cache then it stores the inverse of matrix in cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	parMatrix <- x$getMatrix()
	message("printing matrix")
	print(parMatrix)
	parInverseMatrix <- x$getCacheMatrix()
	message("printing inverse matrix")
	print(parInverseMatrix)
	if(!is.null(parInverseMatrix)) {
		message ("Getting cached data")
		return(parInverseMatrix)
	}
	parInverseMatrix <-solve(parMatrix)
	x$setCacheMatrix()
	parInverseMatrix
}
