function fibRecursive(nth) {
  if(nth <= 2) {
    return 1;
  }

  return fib(nth - 2) + fib(nth - 1) 
}
