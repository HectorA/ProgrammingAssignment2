##FIRST FUNCTION
## 1. Set the value of the matrix
## 2. Get the value of the matrix
## 3. Set the value of the Inverse
## 4. Get the value of the Inverse

makeCacheMatrix <- function(x = matrix()) {
        cache <- NULL
        set <- function(y) {
                x <<- y
                cache <<- NULL
        }
#This will return a stored matrix
        get <- function() x
        setInvmatrix <- function(solve){
              cache <<- solve  
        } 
#This will gets a cache value
        getInvmatrix <- function() {
              cache
        }
#This will creates a list with all the functions
        list(set = set, get = get,
             setInvmatrix = setInvmatrix,
             getInvmatrix = getInvmatrix)
}


##SECOND FUNCTION 2
## The next function returns the cache matrix function created by MakeCacheMatrix().

cacheSolve <- function(x, ...) {
#Searchs for cache value
        cache <- x$getInvmatrix()
#If it exists it returns it.
        if(!is.null(m)) {
                message("getting cached data")
                return(cache)
        }
#if it doesn't exist it calculate it.
        data <- x$get()
        cache <- solve(x, ...)
#prints the matrix's inverse
        x$setInvmatrix(cache)
        cache
}
