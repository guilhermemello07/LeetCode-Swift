# Explanation: Remove Duplicates from Sorted Array II

## Problem Description

The problem "Remove Duplicates from Sorted Array II" requires us to remove duplicates from a sorted array while keeping each unique element appear at most twice. The goal is to modify the input array in-place and return the count of elements after removing duplicates.

## Solution Approach

We will use two pointers – a leftPointer and a rightPointer – to keep track of the position where the next unique or duplicate element should be placed.

- Initialize the leftPointer variable to 1. We start from index 1 because the first element is already considered unique.
- Initialize a boolean variable isTwice to keep track of whether the current element has appeared twice.
- Iterate through the array with the rightPointer variable starting from index 1.
- Compare the element at the current rightPointer with the element at the previous index (rightPointer - 1).
  - If the elements are the same:
    - If isTwice is false, it means we have encountered a new duplicate element. Place it at the position of the leftPointer, set isTwice to true, and increment the leftPointer by 1.
    - If isTwice is true, it means we have encountered a third occurrence of the same element, so we skip it.
  - If the elements are different:
    - If isTwice is true, it means the previous element appeared twice. Place the current element at the position of the leftPointer, set isTwice to false, and increment the leftPointer by 1.
    - If isTwice is false, it means the previous element appeared only once. Place the current element at the position of the leftPointer and increment the leftPointer by 1.
- After iterating through the entire array, the leftPointer will indicate the count of elements after removing duplicates.
- Return the value of leftPointer as the count of elements without duplicates.


## Example

Consider the example nums = [0,0,1,1,1,1,2,3,3].

- After applying the solution function, the array becomes [0, 0, 1, 1, 2, 3, 3, _, _], and leftPointer is 7.
- The array [0, 0, 1, 1, 2, 3, 3] contains the unique or twice-occurring elements, and the rest of the array can be ignored.

## Time Complexity

The solution iterates through the array exactly once, so the time complexity is O(n), where n is the length of the input array.

## Space Complexity

The solution uses a constant amount of extra space, so the space complexity is O(1).

## LeetCode Feedback
![Image 26-08-23 at 5 34 PM](https://github.com/guilhermemello07/LeetCode-Swift/assets/72673965/fdbdced3-a232-4df7-9978-31c4575e28da)

