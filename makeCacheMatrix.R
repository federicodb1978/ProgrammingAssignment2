makeCacheMatrix <- function(x = matrix()) {
        m <- NULL # sets the value of m to NULL (provides a default if cacheSolve has not yet been used)
        y <- NULL # sets the value of y to NULL (provides a default if cacheSolve has not yet been used)
        setmatrix <- function(y) { #set the value of the matrix
                x <<- y ## caches the inputted matrix so that cacheSolve can check whether it has changed (note this is within the setmatrix function)
                m <<- NULL # # sets the value of m (the matrix inverse if used cacheSolve) to NULL
        }
        list(setmatrix = setmatrix, getmatrix = getmatrix, # creates a list to house the four functions
             setinverse = setinverse,
             getinverse = getinverse)
}