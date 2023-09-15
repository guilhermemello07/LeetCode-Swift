# Explanation: Two Sum

## Problem Description
Given an array of integers nums and an integer target, the task is to return the indices of two numbers in the array such that they add up to the target.

You can assume that each input will have exactly one solution, and you may not use the same element twice. The order of returning the indices does not matter.

## Solution Approach
To find the indices of two numbers that add up to the target, we can use a two-pointer approach. Here's how the algorithm works:

- Initialize two pointers, leftPointer and rightPointer, both initially pointing to the first element (index 0) and the second element (index 1) of the nums array, respectively.

- While leftPointer is less than the length of the nums array minus one, repeat the following steps:

  - Calculate the sum of the elements at nums[leftPointer] and nums[rightPointer].
- If the sum is equal to the target, return [leftPointer, rightPointer] as the indices.

- If the sum is less than the target, increment rightPointer to move to the next element.

- If the sum is greater than the target, increment leftPointer to move to the next element and reset rightPointer to leftPointer + 1.

- Repeat steps 2-5 until a solution is found.

- If no solution is found after exhausting all pairs, return an empty array [] to indicate that no valid indices were found.

## Example
Consider the example nums = [2,7,11,15] and target = 9:

- Initialize leftPointer to 0 and rightPointer to 1.

- In the first iteration:

  - Calculate the sum: 2 + 7 = 9, which is equal to the target.
  - Return [leftPointer, rightPointer], which is [0, 1].
- The function returns [0, 1] as the indices of the two numbers that add up to the target.

## Time Complexity
The time complexity of this solution is O(N), where N is the length of the nums array. We iterate through the array once.

## Space Complexity
The space complexity is O(1) because we use only a constant amount of extra space to store variables.

## LeetCode Feedback
![D4BF0BFE-E3DE-490B-8296-2D88C2B9E3E9](https://github.com/guilhermemello07/LeetCode-Swift/assets/72673965/c60857ae-645e-4dfd-bce4-68b19a3d6d9c)

