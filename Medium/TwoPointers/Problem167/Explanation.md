# Explanation: Two Sum II - Input Array is Sorted

## Problem Description
Given a 1-indexed array of integers numbers that is already sorted in non-decreasing order, the task is to find two numbers in the array such that they add up to a specific target number. Let these two numbers be numbers[index1] and numbers[index2] where 1 <= index1 < index2 < numbers.length.

The function should return the indices of the two numbers as an integer array [index1, index2] of length 2. The tests are generated such that there is exactly one solution, and the same element cannot be used twice. The solution should use only constant extra space.

## Solution Approach
To find the indices of two numbers that add up to the target, we can use a two-pointer approach. Here's how the algorithm works:

- Initialize two pointers, leftPointer and rightPointer, both initially pointing to the first element (index 0) and the second element (index 1) of the numbers array, respectively.

- While leftPointer is less than the length of the numbers array, repeat the following steps:

  - Calculate the sum of the elements at numbers[leftPointer] and numbers[rightPointer].
- If the sum is equal to the target, return [leftPointer + 1, rightPointer + 1] as the indices (add one to each index to make it 1-indexed).

- If the sum is less than the target, increment rightPointer to move to the next element.

- If the sum is greater than the target, increment leftPointer to move to the next element and reset rightPointer to leftPointer + 1.

- Repeat steps 2-5 until a solution is found.

- If no solution is found after exhausting all pairs, return [0] to indicate that no valid indices were found.

## Example
Consider the example numbers = [2,7,11,15] and target = 9:

- Initialize leftPointer to 0 and rightPointer to 1.

- In the first iteration:

  - Calculate the sum: 2 + 7 = 9, which is equal to the target.
  - Return [leftPointer + 1, rightPointer + 1], which is [1, 2].
- The function returns [1, 2] as the indices of the two numbers that add up to the target.

## Time Complexity
The time complexity of this solution is O(N), where N is the length of the numbers array. We iterate through the array once.

## Space Complexity
The space complexity is O(1) because we use only a constant amount of extra space to store variables.

## LeetCode Feedback
![5C225C49-1DA7-4743-B12E-86074759C017](https://github.com/guilhermemello07/LeetCode-Swift/assets/72673965/b01de8ba-0c92-465a-b90f-770ec4b1476b)

