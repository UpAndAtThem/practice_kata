var kidsWithCandies = function(candies, extraCandies) {
    let greatestCandyCount = Math.max(...candies);
    
    return candies.map(currentCount => greatestCandyCount <= currentCount + extraCandies)
};