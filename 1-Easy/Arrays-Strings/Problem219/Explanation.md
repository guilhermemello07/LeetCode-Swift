# Explanation: Contains Duplicate II

## Problem Description
You are given an integer array nums and an integer k. Your task is to determine whether there are two distinct indices i and j in the array such that nums[i] is equal to nums[j] and the absolute difference between i and j is at most k.

## Solution Approach
To solve this problem, you can use a sliding window approach. Here's the step-by-step approach to solve the problem:

- Initialize two pointers, leftPointer and rightPointer, both initially pointing to the first element in the array.

- Check if the length of the nums array is less than 2. If it is, return false because you need at least two elements to have a duplicate.

- Use a nested loop structure to compare elements in the array:

  - The outer loop, controlled by leftPointer, iterates through the elements from index 0 to the second-to-last index.
    - The inner loop, controlled by rightPointer, iterates through the elements from the index immediately after leftPointer to the last index.
      - Within the inner loop, compare nums[leftPointer] and nums[rightPointer]. If they are equal, calculate the absolute difference between the indices leftPointer and rightPointer. If this difference is less than or equal to k, return true because you've found a pair of elements satisfying the conditions.

      - If the inner loop finishes without finding a matching pair, increment leftPointer and reset rightPointer to the next element after leftPointer.

  - Continue this process until leftPointer reaches the second-to-last element.

- If no matching pairs are found after examining all possible combinations, return false.

## Examples
Let's consider the examples provided in the problem description:

For nums = [1,2,3,1] and k = 3, there are two occurrences of the number 1, and their indices differ by 3. So, the output should be true.

For nums = [1,0,1,1] and k = 1, there are two occurrences of the number 1, and their indices differ by 1. So, the output should be true.

For nums = [1,2,3,1,2,3] and k = 2, there are no matching pairs of elements that satisfy the conditions. So, the output should be false.

## Time Complexity
The time complexity of this solution is O(n^2), where n is the length of the nums array. In the worst case, you need to compare all possible pairs of elements.

## Space Complexity
The space complexity is O(1) because you only use a constant amount of extra space for the two pointers.

## LeetCode Feedback
![C574082B-051F-48FA-852E-6D6F3D033CC4](https://github.com/guilhermemello07/LeetCode-Swift/assets/72673965/47e1610f-91e3-4abc-b88c-c6cc599f94d6)

