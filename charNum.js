// In this exercise, you will write a program that asks the user for a phrase, 
// then outputs the number of characters in that phrase. 
// Go over the documentation for String to find an appropriate method to use.

// Examples:

// Please enter a phrase: walk
// // console output
// There are 4 characters in "walk".

// Please enter a phrase: walk, don't run
// // console output
// There are 15 characters in "walk, don't run".

// Algorithm

// prompt the user for input 'Please enter a phrase: '
// store input as userPhrase variable
// console log the template literal `There are ${ userPhrase.length } in ${ userPhrase }`


function numberCharacters() {
  let userPhrase = prompt('Please enter a phrase');

  console.log(`There are ${ userPhrase.length } characters in '${ userPhrase }'`);
}