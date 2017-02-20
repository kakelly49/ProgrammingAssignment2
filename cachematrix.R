## These functions read a square matrix 
## The makeCacheMatrix function returns a list consisting of x,i (inverse of x) and 
## the 4 functions set,get,setinverse and getinverse. To test this function use 
## matrix(1:4,nrow=2,ncol=2)

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL      
        set <- function(y) {
	     x<<-y
           m <<- NULL
       }
        get <- function() x
        setinverse <- function(solve) inv <<- solve
        getinverse <- function() inv
        list(set = set, get = get,
              setinverse = setinverse,
              getinverse = getinverse)	
 }


## The cacheSolve function reads the getinverse element from the list
## created in the makeCacheMatrix function (above). If the value of inv 
## is not null, the inverse is pulled from the getinverse item in the list. 
## Otherwise cacheSolve will calculate the inverse and post it to the list

cachesolve <- function(x, ...) {
         inv <- x$getinverse() #Get the getinverse element of list x returned by fuction makeMatrix
         if(!is.null(inv)) {
            # if inv is not NULL (inverse has been calculated and cached
            message("getting cached data")
                 return(inv)
         }
         data <- x$get()           # Get the get element of the list x returned by function makeMatrix
         inv <- solve(data, ...)   #Calculate the inverse of input matrix
         x$setinverse(inv)         # Update the value of the setinverse element of x with the value inv
         inv
        ## Return a matrix that is the inverse of 'x'

}
