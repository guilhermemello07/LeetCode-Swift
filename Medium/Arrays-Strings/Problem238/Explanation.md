# Explanation: Product of Array Except Self

## Problem Description
Given an integer array nums, the task is to return an array answer such that answer[i] is equal to the product of all the elements of nums except nums[i].

The product of any prefix or suffix of nums is guaranteed to fit in a 32-bit integer.

### Constraints:

The algorithm should run in O(n) time.
Division operation should not be used.

### Examples

#### Example 1:
Input: nums = [1, 2, 3, 4]
Output: [24, 12, 8, 6]

#### Example 2:
Input: nums = [-1, 1, 0, -3, 3]
Output: [0, 0, 9, 0, 0]

## Solution Approach
The solution to compute the product of array elements except self nums[i] involves:

- Create three arrays of the same length as nums: leftArray, rightArray, and answer.
- Initialize leftArray and rightArray with values such that they represent the product of elements to the left and right of each element nums[i] respectively.
- - Calculate the product of leftArray and rightArray elements for each nums[i] to get the final answer.

### Detailed Steps:

- Create leftArray and rightArray filled with initial values of 1.
  - Compute the products of elements to the left of nums[i] and store them in leftArray.
  - Compute the products of elements to the right of nums[i] and store them in rightArray.
  - Calculate the answer array by multiplying the corresponding elements from leftArray and rightArray.

## Complexity Analysis

Time Complexity: O(n) - The algorithm performs a linear traversal through the input array nums three times to compute leftArray, rightArray, and answer.
Space Complexity: O(n) - Three additional arrays (leftArray, rightArray, and answer) are used, each of size equal to the length of nums.

## LeetCode Feedback
![EE14F89C-6B14-452C-955A-C32B55519077](https://github.com/guilhermemello07/LeetCode-Swift/assets/72673965/b996cf12-ac78-43eb-9644-54e1dfcdce65)

