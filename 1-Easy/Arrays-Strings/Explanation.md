# Explanation: Remove Duplicates from Sorted Array

## Problem Description

The problem "Remove Duplicates from Sorted Array" asks us to remove duplicates from a sorted array in-place while maintaining the relative order of the elements. The goal is to return the count of unique elements and modify the array so that the first k elements are the unique elements.

## Solution Approach

To solve this problem, we will use two pointers – a left pointer and a right pointer. The left pointer will keep track of the position where the next unique element should be placed, while the right pointer will iterate through the array.


- Initialize the `leftPointer` variable to 1. We start from index 1 because the first element is already considered unique.
- Iterate through the array with the `rightPointer` variable starting from index 1.
- Compare the element at the current `rightPointer` with the element at the previous index `(rightPointer - 1)`.
- If the elements are different, it means we have found a new unique element. Place it at the position of the `leftPointer` and increment the `leftPointer` by 1.
- If the elements are the same, it means we have encountered a duplicate. Continue iterating with the `rightPointer`.
- After iterating through the entire array, the `leftPointer` will indicate the count of unique elements. The first `leftPointer` elements in the array are the unique elements, and the rest can be ignored.
- Return the value of `leftPointer` as the count of unique elements.

## Example

Consider the example nums = [0,0,1,1,1,2,2,3,3,4].

After applying the solution function, the array becomes [0, 1, 2, 3, 4, 2, 2, 3, 3, 4], and leftPointer is 5.
The array [0, 1, 2, 3, 4] contains the unique elements, and the rest of the array can be ignored.

## Time Complexity

The solution iterates through the array exactly once, so the time complexity is O(n), where n is the length of the input array.

## Space Complexity

The solution uses a constant amount of extra space, so the space complexity is O(1).

## LeetCode Feedback
![Image 25-08-23 at 10 18 AM](https://github.com/guilhermemello07/LeetCode-Swift/assets/72673965/253d06f4-77d9-4132-8ede-2bcdeb6d6b46)
