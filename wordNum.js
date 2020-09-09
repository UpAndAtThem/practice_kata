const wordDigit = {
  "one": 1,
  "two": 2,
  "three": 3,
  "four": 4,
  "five": 5,
  "six": 6,
  "seven": 7,
  "eight": 8,
  "nine": 9
};

function wordToDigit(wordStr) {
  const wordArr = wordStr.split(' ');

  let newWordArr = wordArr.map((word) => {
    let newWord = word.replace(/[^a-zA-Z]/g, '');

    return wordDigit[newWord] ? wordDigit[newWord] : word;
  });

  return newWordArr.join(' ')
}

console.log(wordToDigit('Please call me at five five five one two three four. Thanks.'));
// "Please call me at 5 5 5 1 2 3 4. Thanks."