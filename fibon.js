function memoizeFib() {
  memo = {};

  return function fibonacci(nth) {
    if(nth === 1 || nth === 2) {
      memo[nth] = 1;
      return 1;
    }

    if(memo[nth]) {
      return memo[nth];
    } else {
      memo[nth] = fibonacci(nth - 1) + fibonacci(nth - 2);
    }

    return memo[nth];
  }
}

const fibonacci = memoizeFib();

fibonacci(20);      // 6765