## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## the function takes a matrix as its input , sets the value of the matrix , gets the value 
##get the value of the matrix, sets the inverse and then gets the inverse.

makeCacheMatrix <- function(x = matrix()) {
m <-NULL
set <- function(y){
        x<<-y
        m<<-NULL
}
get <- function()x
setInverse <-function(inverse) m<<- inverse
getInverse <- function()m
list(set = set , get = get ,setInverse = setInverse,getInverse  = getInverse)

}


## Write a short comment describing this function
## this function checks if the matrix has an inverse matrix or not.
## if it doesnt  then  it gets the matrix data and sets an inverse from the solve function
##if the input had an inverse  the a message would be displayed  and the cached object would be returned


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <-x$getInverse()
        if(!is.null(m)) {
         message("Getting Cached Invertible Matrix")   
        return(m)         
        }
        data <-x$get()
        m <-solve(data ,...)
        x$setInverse(m)
        m
}
