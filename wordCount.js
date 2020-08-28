// Write a function named wordCount that takes a single String as an argument. 
// The function should return an Object that contains the counts of each word that appears in the provided String. 
// In the returned Object, you should use the words as keys, and the counts as values.

// input:
//   arg1: wordStr String

// initialize an empty object resultObj
// split wordStr at every word and iterate over each word
// resultObj[word] ? resultObj[word] += 1 : resultObj[word] = 1;
// return resultObj

function wordCount(wordStr) {
  let resultObj = {};
  let wordArr = wordStr.split(' ');

  wordArr.forEach(word => {
    resultObj[word] ? resultObj[word] += 1 : resultObj[word] = 1;
  });

  return resultObj;
}

console.log(wordCount('box car cat bag box'));  // { box: 2, car: 1, cat: 1, bag: 1 }