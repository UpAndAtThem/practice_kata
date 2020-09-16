 // initialize an empty array as resultArr
 // iterate over indices as indexElem with the iteration index as well.
 //    resultArr[indexElem] = s[index];
 // return resultArr.join('')
 

var restoreString = function(s, indices) {
    const decodedArr = [];
    
    indices.forEach((indexElem, index) => {
        decodedArr[indexElem] = s[index];
    });
    
    return decodedArr.join('');
};