var reverseBits = function(int) {
    let binRep = int.toString(2);
    let numLeadingZeros = (32 - (int.toString(2).length));
    
    let leadingZeros = new Array(numLeadingZeros + 1).join('0');
    let revBinStr = (leadingZeros + binRep).split('').reverse().join('');
    
    return parseInt(revBinStr, 2);
};
