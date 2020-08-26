// Write a function that takes a positive integer as an argument, 
// and logs all the odd numbers from 1 to the passed in number (inclusive). 
// All numbers should be logged on separate lines.

// input: integer int
// output: void
// side effect: outputs number to screen

// iterate over range from 1 to endRange
// if current number in iterating range isn't divisible by 2
//  // log number to screen

function logOddNumbers(endRange) {
  for(let i = 1; i <= endRange; i += 1) {
    if(i % 2 !== 0) {
      console.log(i);
    }
  }
}

logOddNumbers(19);

// Example
// logOddNumbers(19);

// // output on console
// 1
// 3
// 5
// 7
// 9
// 11
// 13
// 15
// 17
// 19