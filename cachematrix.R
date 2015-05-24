## These functions will create a special object that stores a matrix and caches its inverse.

## This function creates a special matrix by creating a list which sets the matrix value,
## gets the value, sets the inverse value, and gets the inverse value

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
        x <- y
        m <- NULL
        }
        get <- function() x
        setinverse <- function(solve) m <- solve
        getinverse <- function() m
        list(set = set, get = get,
                setinverse = setinverse,
                getinverse = getinverse)
}


## This function computes  the inverse of the special matrix created by makeCacheMatrix;
## if inverse as already been calculated, it retrieves the inverse

cacheSolve <- function(x, ...) {
        m <- x$getinverse()
        if(!is.null(m) {
                message("gettng cached data")
                return(m)
        }
        data < x$get()
        m <- solve(data, ...)
        x$setinverse(m)
        m
}


