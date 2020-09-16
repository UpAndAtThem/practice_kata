function removeDuplicates(nums) {
    var i = 0;
    
    nums.forEach(num => {
        if(num !== nums[i]) {
            nums[++i] = num;
        }
    });
    
    return i + 1;
};