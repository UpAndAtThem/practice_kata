// Write a function named copyProperties that takes two Objects as arguments. 
// The function should copy all properties from the first object to the second. 
// The function should return the number of properties copied.


// input:
//   obj1: Object
//   obj2: Object

//   iterate over the first obj keys.
//     take obj2 and add each property being iterated and assign it with the value of obj1[property]
//   return Object.keys(obj1).length;

function copyProperties(copyFrom, copyTo) {
  for(let property in copyFrom) {
    copyTo[property] = copyFrom[property]
  }

  return Object.keys(copyFrom).length;
}

let hal = {
  model: 9000,
  enabled: true,
};

let sal = {};

console.log('hal', hal);
console.log('sal', sal);
console.log(copyProperties(hal, sal));  // 2
console.log('hal', hal);
console.log('sal', sal);