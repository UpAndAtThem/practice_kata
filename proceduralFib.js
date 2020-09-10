// initialize array of first 2 fib numbers [1, 1].
// iterate over range of 2..(nth - 1)
//   push fibArr[current - 1] + fibArr[current - 2]
// return fibArr[nth];


function fibonacci(nth) {
  const fibArr = [1, 1];

  for(let current = 2; current <= (nth - 1); current += 1) {
    fibArr.push(fibArr[current - 1] + fibArr[current - 2])
  }

  return fibArr[nth - 1];
}

fibonacci(20);       // 6765
fibonacci(50);       // 12586269025
fibonacci(75);       // 2111485077978050