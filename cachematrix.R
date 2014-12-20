

## Coursera R Programming course assignment 2  

## These two functions handles big matrices and their inverses with caching implemted with lexical scoping. 


## makeCacheMatrix creates a structure that contains a matrix and methods to get the matrix and setter 
## and getter for its inverse.

## How this works:
## When this function is called, it sets a inv variable as null
## The get -method gets the original matrix given in the argument
## getinverse -method gets the calculated inverse
## setinverse -methods assigns a inverse into inv variable
makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL #inverse of the function
  get <- function() x # returns the original matrix
  setinverse <- function(inverse) inv <<- inverse 
  getinverse <- function() inv
  list(get=get, setinverse=setinverse, getinverse=getinverse) 
}


## Write a short comment describing this function


## calculates an inverse of the cached matrix
## If matrix have a precalculated inverse return it
## otherwise, calculate an inverse and assign it to cached matrix and return it
cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inv <- x$getinverse()
  if(!is.null(inv)) {
    message("getting cached inverse")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data,...)
  x$setinverse(m)
  inv
}
