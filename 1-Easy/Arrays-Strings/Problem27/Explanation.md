# Explanation: Remove Element

## Problem Description

The problem "Remove Element" asks us to remove all occurrences of a given value val from an integer array nums in-place. The order of the elements may change, but we need to return the count of elements in nums that are not equal to val.

## Solution Approach

To solve this problem, we will iterate through the array from right to left using a rightPointer. We will count the occurrences of val and remove them from the array. The difference between the total number of elements and the number of occurrences of val will give us the count of elements that are not equal to val.

- Initialize a variable difference to keep track of the count of elements that are not equal to val.
- Initialize a variable totalNumberOfElements to the initial count of elements in the array.
- Initialize a variable occurrences to keep track of the number of occurrences of val.
- Iterate through the array with the rightPointer variable starting from the last index and moving towards the first index.
  - If the element at the current rightPointer is equal to val, increment the occurrences count and remove the element from the array using the remove method.
- After iterating through the entire array, the occurrences count will give us the number of occurrences of val.
- Calculate the value of difference as the difference between totalNumberOfElements and occurrences.
- Return the value of difference as the count of elements in nums that are not equal to val.

## Example

Consider the example nums = [0,1,2,2,3,0,4,2] and val = 2.

- After applying the solution function, the array becomes [0, 1, 4, 0, 3, _, _, _], and difference is 5.
- The array [0, 1, 4, 0, 3] contains the elements that are not equal to val, and the rest of the array can be ignored.

## Time Complexity

The solution iterates through the array once, so the time complexity is O(n), where n is the length of the input array.

## Space Complexity

The solution uses a constant amount of extra space, so the space complexity is O(1).

## LeetCode Feedback
![Image 27-08-23 at 9 46 AM](https://github.com/guilhermemello07/LeetCode-Swift/assets/72673965/2572a9b9-6a23-4f93-8e95-4f2217fdf23c)


