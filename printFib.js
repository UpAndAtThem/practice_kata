const memoFib = function() {
  let memo = {}
  
  return function fib(n) {
    if (n in memo) { return memo[n] }
    else { 
      if (n <= 1) { memo[n] = n } 
      else { memo[n] = fib(n - 1) + fib(n - 2) } 
      return memo[n]
    }
  }
 }


let mFib = memoFib();

console.log(mFib(5))