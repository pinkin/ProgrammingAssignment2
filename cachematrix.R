## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# makeCacheMatrix creates a list containing a function to
## 1. set the value of the matrix
## 2. get the value of the matrix
## . set the value of inverse of the matrix
## 4. get the value of inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function
## The following function returns the inverse of the matrix.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}

makeCachematrix<-function(a=matrix()) {
 inv<-NULL
set<-function(b) {
  a<<-b
  inv<<-NULL
}
get<-function() a
setinverse<-function(inverse) inv<<- inverse
getinverse<- function() inv
list (set=set,get=get,setinverse=setinverse,getinverse=getinverse)
}

cacheSolve<- function(a,...){
inv<-a$getinverse()
if(!is.null(inv)) {
message("getting data that is cached")
return(inv)
}
mat<-a$get()
inv<-solve(mat,...)
a$setinverse(inv)
inv
}