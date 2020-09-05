// Write a function logMultiples that takes one argument number. 
// It should log all multiples of the argument between 0 and 100 (inclusive) that are also odd numbers. 
// Log the values in descending order.

// You may assume that number is an integer between 0 and 100.

// Example
// logMultiples(17);
// // output (5x, 3x and 1x)
// 85
// 51
// 17

// logMultiples(21);
// // output (3x and 1x)
// 63
// 21

// iterate over range between logMultiples divisor and 100

// for loop i set to divisor; i <= 100 condition;  (add the divisor to i at end of each iteration)
//   if i is odd console log i


function logMultiples(divisor) {
  for(let i = divisor; i <= 100; i += divisor) {
    if(i % 2 !== 0) {
      console.log(i);
    }
  }
}

logMultiples(17);
