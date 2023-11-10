# Explanation: Can Place Flowers

## Problem Description
You have a long flowerbed in which some of the plots are planted, and some are not. However, flowers cannot be planted in adjacent plots. Given an integer array flowerbed containing 0's and 1's, where 0 means empty and 1 means not empty, and an integer n, your task is to return true if n new flowers can be planted in the flowerbed without violating the no-adjacent-flowers rule, and false otherwise.

## Solution Approach
To solve this problem, follow these steps:

- Initialize a counter variable counter to keep track of the number of flowers that can be planted.
- Create a copy of the flowerbed array, named flowerbedCopy, to avoid modifying the original array.
- If n is 0, return true immediately since no new flowers need to be planted.
- Check the base case where flowerbedCopy has only one plot and n is 1. If the plot is empty, return true; otherwise, return false.
- Iterate through each plot in the flowerbedCopy array.
  - For each plot, check if it is surrounded by empty plots on both sides (if applicable).
    - If the current plot is empty and has empty plots on both sides, plant a flower in that plot, decrement counter by 1.
  - Continue this process until counter becomes 0 or the end of the flowerbedCopy array is reached.
- After the iteration, check if counter is 0. If it is, return true; otherwise, return false.

## Complexity Analysis
The time complexity of this solution is O(n), where n is the length of the flowerbed array. This is because we iterate through the entire array once. The space complexity is O(n) as well, as we create a copy of the flowerbed array.

## LeetCode Feedback

![DF02E177-3500-477A-AB84-8CF964E2CC55](https://github.com/guilhermemello07/LeetCode-Swift/assets/72673965/5a46b35e-a130-4860-90ca-8b95b21bea13)
