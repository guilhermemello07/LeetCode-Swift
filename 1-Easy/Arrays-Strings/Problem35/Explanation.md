# Explanation: Search Insert Position

## Problem Description
Given a sorted array of distinct integers nums and a target value target, the task is to return the index where the target is found in the array. If the target is not found, return the index where it would be inserted in ascending order.

The key requirement is to write an algorithm with O(log n) runtime complexity.

## Solution Approach
To efficiently find the target or its insertion position in the sorted array, we can use a binary search algorithm. Here's how the algorithm works:

- Initialize two pointers, leftPointer and rightPointer, to the first and last indices of the array, respectively.

- Use a while loop to continue searching until leftPointer is less than or equal to rightPointer.

  - Inside the loop, calculate the middle index, middle, as (leftPointer + rightPointer) / 2.

    - Check if the element at the middle index is equal to the target. If it is, return middle as the index where the target is found.

      - If the element at the middle index is greater than the target, it means the target should be in the left half of the remaining array. Update rightPointer to middle - 1.

      - If the element at the middle index is less than the target, it means the target should be in the right half of the remaining array. Update leftPointer to middle + 1.

- Repeat steps 3-6 until the target is found or until leftPointer becomes greater than rightPointer.

- If the target is not found during the search, return leftPointer as the index where it should be inserted. This represents the position in ascending order.

## Example
Consider the example nums = [1,3,5,6] and target = 5:

- Initialize leftPointer to 0 and rightPointer to 3.

- In the first iteration:

  - Calculate middle = (0 + 3) / 2 = 1.
  - Check if nums[1] (which is 3) is equal to the target (5). It's not equal.
  - Since nums[1] (3) is less than the target (5), update leftPointer to 2.

- In the second iteration:

  - Calculate middle = (2 + 3) / 2 = 2.
  - Check if nums[2] (which is 5) is equal to the target (5). It is equal.
  - Return middle, which is 2.

- The function returns 2, indicating that the target 5 is found at index 2 in the array.

## Time Complexity
The time complexity of this solution is O(log n), where n is the length of the nums array. Binary search reduces the search space by half in each iteration.

## Space Complexity
The space complexity is O(1) because we use only a constant amount of extra space to store variables.

## LeetCode Feedback
![2DA0E75D-28C3-40EC-8A35-B1F6A2A30C32](https://github.com/guilhermemello07/LeetCode-Swift/assets/72673965/db931a44-7a09-406d-94fb-d0a74f3874a5)

