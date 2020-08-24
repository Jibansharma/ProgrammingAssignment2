makeCacheMatrix <- function(x = matrix()) {
  invrs <- NULL
  set <- function(y) {
    x <- y
    invrs <- NULL
  }
  get <- function() x
  setinverse <- function(inverse) invrs <- inverse
  getinverse <- function() invrs
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## To make a cacheSolve function
cacheSolve <- function(x, ...) {
invrs <= x$getinverse()
    if(!is.null(invrs)) {
         message("to get cache data")
         return(invrs)
       }
     mat <- x$get()
     invrs <- solve(mat, ...)
     x$setinverse(invrs)
     invrs
   }

 f<- makeCacheMatrix(matrix(1:4, nrow= 2, ncol=2)) #to make a matrix function
 
  
 f$get()  ## to get makeCacheMatrix function
  
   f$getinverse() ##to get the inverse function of makeCacheMatrix function
 
   cacheSolve(f)  ## to get the cacheSolve of the df f
  
   cacheSolve(f)   ## to get cached data , again run this function
  
  f$getinverse() #to get inverse of cacheSolve function 