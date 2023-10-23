# Explanation: Plus One

## Problem Description
You are given a large integer represented as an integer array digits, where each digits[i] is the i-th digit of the integer. The digits are ordered from most significant to least significant in left-to-right order. The large integer does not contain any leading 0's. The task is to increment the large integer by one and return the resulting array of digits.

## Solution Approach
To solve this problem, you can simulate the process of adding one to the integer represented by the digits array. Here's the step-by-step approach:

- First, handle the base case: if the digits array is empty, return an empty array, as there's nothing to increment.

- Initialize a new array called updated to store the result. Copy the values from the digits array to updated. This is done to avoid modifying the original array.

- Traverse the updated array in reverse order (from right to left) using a loop. We start from the least significant digit (the last element of the array).

- For each digit, check if it is equal to 9:

  - If it is 9, set it to 0 to simulate carrying over to the next digit.
  - If it is not 9, increment it by 1 and return the updated array as the result. Since adding 1 does not result in carrying over, you can return the result immediately.
- If the loop completes without returning, it means the entire number was composed of nines. In this case, insert 1 at the beginning of the updated array to represent the carry.

- Return the updated array as the final result.

## Examples
Consider the examples provided in the problem description:

For digits = [1,2,3], you start with 123 and add 1, resulting in 124. So, the output should be [1,2,4].

For digits = [4,3,2,1], you start with 4321 and add 1, resulting in 4322. So, the output should be [4,3,2,2].

For digits = [9], you start with 9 and add 1, resulting in 10. So, the output should be [1,0].

## Time Complexity
The time complexity of this solution is O(n), where n is the length of the digits array. We iterate through the array once, and the insert operation at the beginning of the array is O(n) as well.

## Space Complexity
The space complexity is O(n) because we create a new array, updated, to store the result, where n is the length of the digits array.

## LeetCode Feedback
![2F5BA7BF-91F1-4DB7-9481-E620044E9138](https://github.com/guilhermemello07/LeetCode-Swift/assets/72673965/b5086692-838d-4d1f-b991-4680a122cca4)

