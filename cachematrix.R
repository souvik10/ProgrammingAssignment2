
# setMatrix function set the value of the matrix
  setMatrix <- function(newValue) {
  x <<- newValue
 cache <<- NULL
  }
# get the matrix
      getMatrix <- function() {
              x
      }
#to make the inverse of the matrix using the in built function solve
       cacheInverse <- function(solve) {
               cache <<- solve
      }
#returning the value
    getInverse <- function() {
               cache
     }
#returns the list of functions
        list(setMatrix = setMatrix, getMatrix = getMatrix, cacheInverse = cacheInverse, getInverse = getInverse)
}
cacheSolve <- function(y, ...) { inverse <- y$getInverse()
# if it get the cache value then there is no further computation
     if(!is.null(inverse)) {
 message("getting cached data")
 return(inverse)      }
#otherwise it returns after computing
 data <- y$getMatrix()
inverse <- solve(data)
y$cacheInverse(inverse)
 inverse
}
