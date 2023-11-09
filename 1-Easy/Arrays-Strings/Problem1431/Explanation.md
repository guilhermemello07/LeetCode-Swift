# Explanation: Kids with the Greatest Number of Candies

## Problem Description
You are given an array candies, where each element candies[i] represents the number of candies the i-th kid has, and an integer extraCandies, denoting the number of extra candies you have. Your task is to return a boolean array result of length n, where result[i] is true if, after giving the i-th kid all the extra candies, they will have the greatest number of candies among all the kids. Otherwise, it should be false.

## Solution Approach
To solve this problem, you need to follow these steps:

- Initialize an empty array result to store the boolean values indicating whether each kid can have the greatest number of candies.

- Find the maximum number of candies among all the kids in the array. You can do this by using the max() function to find the maximum value in the candies array and store it in the variable maxCandie.

- Iterate through the candies array using a loop, and for each kid, calculate whether giving them extraCandies would make them have the greatest number of candies.

  - For each kid, check if candies[i] + extraCandies is greater than or equal to maxCandie. If it is, append true to the result array, indicating that this kid can have the greatest number of candies after receiving extra candies. Otherwise, append false.

- Finally, return the result array, which contains the boolean values for all the kids.

## Complexity Analysis
The time complexity of this solution is O(n), where n is the number of kids (the length of the candies array). This is because we perform a single pass through the candies array to determine the result for each kid. The space complexity is O(n) as well, as we store the result array, which has the same length as the candies array.

## LeetCode Feedback

![126381B1-C432-4C07-9029-2F7EDFEB5AA8](https://github.com/guilhermemello07/LeetCode-Swift/assets/72673965/86d2a687-0eb5-4d98-a17b-7684aedfcc52)
