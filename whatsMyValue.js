// What will the following program log to the console? Can you explain why?

const array = ['Apples', 'Peaches', 'Grapes'];

array[3.4] = 'Oranges';

console.log(array.length);
console.log(Object.keys(array).length);

array[-2] = 'Watermelon';

console.log(array.length);
console.log(Object.keys(array).length);

// line 6 will log to the screen the number 3.  It isn't 4 because when you assigning with bracket notation, 
// anything that isn't a non negative integer isn't considered an element of the array and is rather a propterty 
// of the array.  The length property has a value of one more than the largest index of the array. 

// line 7 will log to the screen 3.  this is because length only references the number of elements and elements are only indexed with non neg ints.

// line 8 will log to the screen the length of the array which is the return of the static method 'keys' of Object.
// the method is given array as the argument.  This will return an array of properties of the array which is '0', '1', and any
// custom properties given by the developer.  in our case it would return ['0', '1', '2', 3.4].  the length property is called and logged to the screen

// line  10 will still print 3 because we still haven't assigned a property that isn't a non negative integer since line 3.

// line 11 will log 5 because the keys method will return not just elements but all the properties and references the length property. 
// in our case its the length of [0, 1, 2, 3.4, -2] which is 5