makeCacheMatrix <- function(x = matrix()) {
        m <- NULL # sets the value of m to NULL (default value)
        y <- NULL # sets the value of y to NULL (default value)
        setmatrix <- function(y) { #set the value of the matrix
                x <<- y ## save in cache the inputted matrix: cacheSolve can check whether the value in cache has been changed
                m <<- NULL # # sets the value of m to NULL; m is the inverse matrix in case you use cacheSolve
        }
        list(setmatrix = setmatrix, getmatrix = getmatrix, # the list to house the four functions
             setinverse = setinverse,
             getinverse = getinverse)
}