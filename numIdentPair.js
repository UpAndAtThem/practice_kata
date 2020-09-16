//  Given an array of integers nums.
// A pair (i,j) is called good if nums[i] == nums[j] and i < j.
// Return the number of good pairs.

// Example 1:

// Input: nums = [1,2,3,1,1,3]
// Output: 4
// Explanation: There are 4 good pairs (0,3), (0,4), (3,4), (2,5) 0-indexed.


 // My Algorithm 

 // initialize a goodPairs variable to 0
 // Create a copy of nums named copyNums.
 // Create main loop that runs as long as copy nums length >= 2;
 // initialize current comparison number by popping off copyNums.
 // loop over copyNums with num
 //    increment by 1 goodPairs if currentComparisonNum === num
 // return goodPairs;

var numIdenticalPairs = function(nums) {
    let goodPairs = 0;
    let copyNums = [...nums];
    
    while(copyNums.length >= 2) {
        let currentComparisonNum = copyNums.shift();
        
        for(let i = 0; i < copyNums.length; i += 1) {
            if(currentComparisonNum === copyNums[i]) {
                goodPairs += 1;
            }
        }
    }
    
    return goodPairs;
};