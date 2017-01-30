## Both these functions work together to produce inverted-matrix outputs for a series of 
## input matrices such that eliminates redundant operations. 



## This function takes a matrix object as input and caches the result in a variable, tmp.

makeCacheMatrix <- function(x = matrix()) {
  
  tmp <<- x
  return(tmp)
}


## This function takes a matrix as input and returns the inverse of the matrix. 
## If inverse of a matrix already has been computed, a cached result is returned instead.

tmp_in = matrix()

cacheSolve <- function(x) {
        
  if(!identical(x, tmp_in)){
    tmp_in <<- x
    return(makeCacheMatrix(solve(x)))
  }
        
  else {
    return(tmp) 
  }
}



