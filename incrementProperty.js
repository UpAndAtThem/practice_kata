// Write a function named incrementProperty that takes two arguments: an Object and a String. 
// If the Object contains a property with the specified name, the function should increment the value of that property. 
// If the property does not exist, the function should add a new property with a value of 1. 
// The function should return the new value of the property.

// input:
//   arg1: key: name, value: wins of type Obj;
//   arg2 is a propery name of type String,

// outupt: void (mutates obj passed in)

// check if arg2 is a property of arg1.
//   if true
//     increment by 1
//   else
//     initialize to 1

function incrementProperty(obj, propName) {
  obj[propName] ? obj[propName] += 1 : obj[propName] = 1;
}  

let wins = {
  steve: 3,
  susie: 4,
};

incrementProperty(wins, 'susie');   // 5
console.log(wins);                              // { steve: 3, susie: 5 }
incrementProperty(wins, 'lucy');    // 1
console.log(wins);                              // { steve: 3, susie: 5 }
