// Implement a function that takes a String as an argument and returns an object that contains a count of the 
// repeated characters.

// input:
//   word: string
// output
//   object with key value being letter and letter count.  only if the letter is repeated (no single instances tracked).

// algorithm:
// make string lowercase split at every char
// iterate over charArr
// obj[char] = res[char] + 1 || 1
// delete props of counts less than 2

function repeatedCharacters(word) {
  let charArr = word.toLowerCase().split('');

  let letterCountObj = charArr.reduce((accum, letter) => {
    accum[letter] = accum[letter] + 1 || 1;
    
    return accum;
  }, new Object())

  for(let letter in letterCountObj) {
    if(letterCountObj[letter] <= 1) {
      delete letterCountObj[letter]
    }
  }

  return letterCountObj
}

console.log(repeatedCharacters('Programming'));    // { r: 2, g: 2, m: 2 }
console.log(repeatedCharacters('Combination'));    // { o: 2, i: 2, n: 2 }
console.log(repeatedCharacters('Pet'));            // {}
console.log(repeatedCharacters('Paper'));          // { p: 2 }
console.log(repeatedCharacters('Baseless'));       // { s: 3, e: 2 }