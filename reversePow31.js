var reverse = function(x) {
    let numStrArr = String(x).split('');
    let minus = numStrArr[0] === '-' ? numStrArr.shift() : '';
    let newNum = Number(minus + numStrArr.reverse().join(''))

    return (Math.abs(newNum) > Math.pow(2,31)) ? 0 : newNum;
};

reverse(1563847412)