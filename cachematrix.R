## Put comments here that give an overall description of what your
## functions do


## Write a short comment describing this function
# 1. Set the value of the matrix
# 2. Get the value of the matrix
# 3. Set the value of the inverse of the matrix
# 4. Get the value of the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
	inv <- NULL
	set <- function(y){
		x <<- y
		inv <<- NULL
	}
	get <- function() x
	setInverse <- function(inverse) inv<<- inverse
	getInverse <- function() inv
	list(set = set, get=get, setInverse=setInverse, getInverse=getInverse)
}


## Write a short comment describing this function
# this funciton gets the inverse matrix, it checks if inverse matrix has already been computed. If yes, it gets the result and skip the computation. If not, it computes the inverse, sets the value in the cache using setInverse function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv<- x$getInverse()
        if(!is.null(inv)){
        	message("getting cached inverse matrix")
        	return(inv)
        }
        data <- x$get()
        inv<-solve(data)
        x$setInverse(inv)
        inv
}
