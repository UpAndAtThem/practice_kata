const letters = 'abcdefghijklmnopqrstuvwxyz'.split('');
const letterPosition = {};

letters.forEach((letter, index) => {
  letterPosition[letter] = index;
});

function alphabetPosition(str) {
  const letterArray = str.toLowerCase().replace(/[^a-z]/g, '').split('');

  return letterArray.map(letter => (letterPosition[letter])).join(' ');
}

console.log(alphabetPosition("The sunset sets at twelve o' clock."));