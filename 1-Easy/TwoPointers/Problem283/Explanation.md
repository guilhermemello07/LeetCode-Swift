# Explanation: Move Zeroes

## Problem Description
Given an integer array nums, the task is to move all 0's to the end of the array while maintaining the relative order of the non-zero elements.

The solution must perform this task in-place without creating a separate copy of the array.

## Solution Approach
To move the zeroes in the array to the end while preserving the order of non-zero elements, follow these steps:

- Initialize two pointers, leftPointer at the beginning of the array (0) and rightPointer at the end of the array (nums.count).
- Iterate through the array using the leftPointer and rightPointer.
  - Check if the element at nums[leftPointer] is 0.
    - If it is 0, remove the 0 by appending 0 at the end of the array and removing the 0 at the current index (leftPointer) using nums.remove(at: leftPointer).
    - Decrement rightPointer as a 0 is moved to the end.
  - If the element at nums[leftPointer] is not 0, increment leftPointer.
- Continue this process until leftPointer crosses rightPointer.

## Complexity Analysis
The time complexity of this solution is O(n), where n is the length of the input array nums. This is because we iterate through the entire array once.

The space complexity of this solution is O(1) as we perform the operation in-place without using any additional data structures.

## LeetCode Feedback
![53784377-4B39-4284-B60F-25D6E777D19A](https://github.com/guilhermemello07/LeetCode-Swift/assets/72673965/25aff06f-cc05-4194-a3a3-64aeb496d94e)

