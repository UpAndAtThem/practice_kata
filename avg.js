// We need a piece of reusable code that returns the average of three numbers. 
// Define a function named average that takes three parameters, a, b, and c, and returns their average. 
// Call the function with three numbers and log the result.

// input: 3 parameters
//   param1: number
//   param2: number
//   param3: number

// output: void
// side effect: logs to the screen the average of parameters

function average(...numbers) {
  return numbers.reduce((num, accum) => num + accum, 0) / arguments.length;
} 

console.log(average(10, 10, 13, 13, 11.5, 23, 0));