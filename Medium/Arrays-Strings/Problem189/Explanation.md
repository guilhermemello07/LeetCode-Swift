# Explanation: Rotate Array

## Problem Description

The "Rotate Array" problem asks us to rotate an integer array nums to the right by k steps, where k is non-negative. This means that the last k elements of the array should become the new first elements, and the rest of the elements should shift to the right.

## Solution Approach

To solve this problem, we will perform the rotation in two steps:

1- Calculate the effective number of rotations: Since rotating an array by its length doesn't change its order, we need to find the effective number of rotations, which is the remainder of k divided by the length of the array.

2- Split and reassemble the array: We'll split the array into two parts: the first part contains the elements that need to move to the end, and the second part contains the elements that need to move to the front. Then, we'll reassemble the array by concatenating the second part with the first part.


- Calculate the effective number of rotations by taking k % nums.count. This ensures that we don't perform unnecessary rotations.
- Create two subarrays:
  - firstPartOfArray: Contains the elements from index 0 to nums.count - timesToRotate - 1.
  - lastPartOfArray: Contains the elements from index nums.count - timesToRotate to the end of the array.
- Reassemble the array by concatenating lastPartOfArray with firstPartOfArray. Assign the result back to the nums array.

## Example

Consider the example nums = [1,2,3,4,5,6,7] and k = 3.

After applying the solution function, the array becomes [5, 6, 7, 1, 2, 3, 4].
The last 3 elements ([5, 6, 7]) have become the new first elements, and the rest have shifted to the right.

## Time Complexity

The solution involves slicing and concatenating arrays, which take O(n) time, where n is the length of the input array nums.

## Space Complexity

The solution uses extra space to store the firstPartOfArray and lastPartOfArray, resulting in O(n) space complexity. 
But the creation of those arrays is only for organization purposes, which we can ignore and consider the space complexity to be O(1), as you can see the way I did in the image below.

## LeetCode Feedback

![Image 29-08-23 at 12 29 PM](https://github.com/guilhermemello07/LeetCode-Swift/assets/72673965/8fa84c1f-e2bf-4727-abba-6a8a5536a6eb)
