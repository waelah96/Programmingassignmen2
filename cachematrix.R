## The two functions that I will write below are used to compute 
## and cache the inverse of a matrix. This function will also store
## and cache the inverse of matrix so that it would not need to 
## compute it more than once.


## The first function below creates a matrix that is able to 
## cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
	i <- NULL
	set <- function(y) {
		x <<- y
		i <<- NULL
	}
	get <- function () x
	setinverse <- function(inverse) i <<- inverse
	getinverse <- function() i
	list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## The function below calculates the inverse of the matrix created
## in the function above. In the case that the inverse of the matrix
## has already been calculated, then the function would retrieve 
## the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        i <- x$getinverse()
        if(!is.null(i)) {
        	message("getting cached data")
        	return(i)
        }
        data <- x$get()
        i <- solve(mat, ...)
        x$setinverse(i)
        i
}
