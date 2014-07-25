## Like the instructions, using makeCacheMatrix function, inv stores the inversed matrix
## cacheSolve looks if an inv has already existing data, if not inverses the matrix

## Set the value of the matrix
## Get the value of the matrix
## Compute the inverse of a square matrix
## Get the value of the inverse matrix

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(y){
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        setsolve <- function(solve) inv <<-solve
        getsolve <- function() inv 
        list(set = set, get = get, setsolve = setsolve, getsolve = getsolve)
}        

## If inv is not null, then get the cached data
## If inv is null, then inverse the matrix

cacheSolve <- function(x, ...) {
       inv <- x$getsolve()
       if(!is.null(inv)){
               message("getting cached data")
               return(inv)               
       }
       data <- x$get()
       inv <- solve(data)
       x$setsolve(inv)
       inv
}
