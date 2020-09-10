function memoizeFib() {
  memo = {};
  count = 1;

  return function fibonacci(nth) {
    console.log(count++);

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


function noMemoizeFib() {
  count = 1;

  return function fibonacci(nth) {
    console.log(count++);

    if(nth === 1 || nth === 2) {
      return 1;
    }

    return fibonacci(nth - 1) + fibonacci(nth - 2);
  }
}

const fibonacci = noMemoizeFib();
const memFib = memoizeFib();

// console.log('fibNum at 20th place: ', fibonacci(20));      // 6765
console.log('fibNum at 20th place: ', memFib(20));         // 6765