# Explanation: Contains Duplicate

## Problem Description
You are given an integer array nums. The task is to determine whether any value appears at least twice in the array. If any element in the array appears more than once, return true. If every element is distinct (no duplicates), return false.

## Solution Approach
To solve this problem, you can use a Set data structure. Here's how the approach works:

- Convert the input array nums into a Set called setNums. A Set is a collection of distinct elements, so it automatically removes duplicates from the array.

- Compare the size of the setNums with the size of the original nums array. If the size of setNums is less than the size of nums, it means there are duplicates in the original array, and you return true. Otherwise, if the sizes are the same, it means all elements are distinct, and you return false.

## Examples
Consider the examples provided in the problem description:

- For nums = [1,2,3,1], you have duplicates (1 appears twice), so the output should be true.

- For nums = [1,2,3,4], all elements are distinct, so the output should be false.

- For nums = [1,1,1,3,3,4,3,2,4,2], you have duplicates (1, 3, and 4 appear multiple times), so the output should be true.

## Time Complexity
The time complexity of this solution is O(n), where n is the length of the input array nums. Converting nums into a Set and comparing the sizes of sets are both linear operations.

## Space Complexity
The space complexity is O(n) because the Set setNums may contain up to n distinct elements.

## LeetCode Feedback
![41F3BC38-9E56-4492-963E-6E75D2E1BB8C](https://github.com/guilhermemello07/LeetCode-Swift/assets/72673965/be53b7a9-3d07-4e8d-915d-174386ccbb38)

