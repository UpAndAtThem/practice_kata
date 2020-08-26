// Write a function that logs the integers from 1 to 100 (inclusive) that are multiples of either 3 or 5. 
// If the number is divisible by both 3 and 5, append an "!" to the number.

// Example
// multiplesOfThreeAndFive();



function isDivisibleFactory(divisor) {
  return function isMultiple(number) {
    return number % divisor == 0;
  }
}

function multiplesOfThreeAndFive() {
  isDivisbleByFive = isDivisibleFactory(5);
  isDivisbleByThree = isDivisibleFactory(3);

  for(let i = 1; i <= 100; i += 1) {
    if(isDivisbleByThree(i) || isDivisbleByFive(i)) {
      let exclimation = isDivisbleByThree(i) && isDivisbleByFive(i) && '!';

      console.log(i + exclimation);
    }
  }
}

multiplesOfThreeAndFive();

// // output on console
// '3'
// '5'
// '6'
// '9'
// '10'
// '12'
// '15!'
// // … remainder of output omitted for brevity