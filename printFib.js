function printFibonacci(last, secondLast) {
  // The code above the recursive function call will be in descending order.
  if ( last == 1 && secondLast == 0 ){
    console.log(1);
    return;
  }

  printFibonacci(secondLast, last - secondLast);

  console.log(last);
}
printFibonacci(55,34);