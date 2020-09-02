// Write a function that takes two sorted arrays as arguments, and returns a new array that contains all the elements 
// from both input arrays in sorted order.

// You may not provide any solution that requires you to sort the result array. You must build the result array 
// one element at a time in the proper order.

// Your solution should not mutate the input arrays.

// Examples:

// input: 2 arguments: 2 sorted arrays (increasing)
// output: 1 sorted array (increasing)
// sideEffects: none

// algorithm:
// initialize result array
// create copies of parameter reasign params as copy param1 = [...param1]
// while there is still value in either array
//   if arr1[0] <= arr2[0] remove first element from array1 and add it to the end of result
//   otherwise to the same with array2
// return result

function merge(arr1, arr2) {
  arr1 = [...arr1];
  arr2 = [...arr2];

  let result = [];

  while(arr1.length > 0 || arr2.length > 0) {
    if(arr1.length === 0 && arr2.length !== 0) {
      result.push(arr2.shift());
    } else if (arr2.length === 0 && arr1.length !== 0) {
      result.push(arr1.shift());
    } else if(arr1[0] <= arr2[0]) {
      result.push(arr1.shift());
    } else {
      result.push(arr2.shift());
    }
  }

  return result;
}

function merge2(array1, array2) {
  const copy1 = array1.slice();
  const copy2 = array2.slice();
  const result = [];

  while (copy1.length > 0 && copy2.length > 0) {
    result.push(copy1[0] <= copy2[0] ? copy1.shift() : copy2.shift());
  }

  return result.concat(copy1.length === 0 ? copy2 : copy1);
}

merge([1, 5, 9], [2, 6, 8]);      // [1, 2, 5, 6, 8, 9]
merge([1, 1, 3], [2, 2]);         // [1, 1, 2, 2, 3]
merge([], [1, 4, 5]);             // [1, 4, 5]
merge([1, 4, 5], []);             // [1, 4, 5]