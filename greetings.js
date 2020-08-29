// Write a function that takes two arguments, an array and an object. 
// The array will contain two or more elements that, when combined with spaces, produce a person's full name. 
// The object will contain two keys, title and occupation, and suitable values for both items. 
// Your function should log a greeting to the console that uses the person's full name, and mentions
// the person's title and occupation.

// Example:

// greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' });

// // console output
// Hello, John Q Doe! Nice to have a Master Plumber around.

// input:
  // an array of 2 or more strings combined to form a full name.
  // an objcet with 2 properties.
    // title: string
    // occupation: string

// side effect: output to screen
// mutations: none

// transform array into a string delimited by a space char.
// use template literals to interpolate the argument information into the greeting message.

function greetings(nameArr, occupationData) {
  let fullName = nameArr.join(' ');
  console.log(`Hello ${fullName}. Your title is: ${occupationData.title}, and your occupation is: ${occupationData.occupation}`);
}

greetings(['Jason', 'L', 'Nelson'], {occupation: 'Web-Developer', title: 'Duke'});