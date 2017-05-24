#Ex. 
hello_you <- function(name) {
  print(paste('Hello',name))
}

#1.
hello_you2 <- function(name) {
  return(paste('Hello', name))
}

#2.
prod <- function(a,b) {
  return(a*b)
}

#3.
num_count <- function(int, int_vec) {
  count <- 0
  for (val in int_vec) {
    if (val==int) {
      count <- count + 1
    }
  }
  return(count)
}

#4.
bar_count <- function(kg) {
  return((floor(kg/5) + (kg%%5)))
}

#5.
summer <- function(a,b,c) {
  nums <- c()
  for (val in c(a,b,c)) {
    if (val%%3 != 0) {
      nums <- append(nums, val)
    }
  }
  return(sum(nums))
}

#6.
prime_check <- function(n) {
  i <- 2
  while(i < n) {
    if (n%%i == 0) {
      return(F)
    }
    i <- i + 1
  }
  return(T)
}



