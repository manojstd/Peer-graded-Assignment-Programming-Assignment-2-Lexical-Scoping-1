## function that cache the inverse of a matrix:
## Pair of functions that are used to create a special object that stores a matriz and caches its inverse

## This function create a special matrix object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
                inv <- NULL
                set <- function (y)
                        x <<- y
                        invs <<- NULL
        }
        get <- function() x
        setInverse <- function(inverse) inv <<- inverse
        getInverse <- function () inv
        list (set = set, get = get, setInverse = setInverse, getinverse = getInverse)
  
}

## This function computes the inverse of the special matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getInverse()
        if(!is.null(inv)) {
                message("getting cached data")
                return(inv)
         }
        data <- x$get()
        inv <- solve(data)
        x$setInverse(inv)
        inv
}
