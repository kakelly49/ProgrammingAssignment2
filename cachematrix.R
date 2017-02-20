## These functions read a square matrix 
## functions do

## The makeCacheMatrix function returns a list consisting of x,i (inverse of x) and 
## the 4 functions set,get,setinverse and getinverse 

makeCacheMatrix <- function(x = matrix()) {
        #check to see if input x has an inverse   
        #if not,exit function    
        ##if(det(x) == 0){ 
	   ##   stop("Singular matrix - no inverse"
          ##}
        i <- NULL      
        set <- function(y) {
	     x<<-y
           m <<- NULL
       }
        get <- function() x
        setinverse <- function(solve) i <<- solve
        getinverse <- function() i
        list(set = set, get = get,
              setinverse = setinverse,
              getinverse = getinverse)	
 }


## The cacheSolve function 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

}
