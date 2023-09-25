# Explanation: Convert Sorted Array to Binary Search Tree

## Problem Description

Given an integer array nums where the elements are sorted in ascending order, the task is to convert it into a height-balanced binary search tree (BST).

A height-balanced BST is a binary tree in which the depth of the two subtrees of every node never differs by more than one.

## Solution Approach

To convert a sorted array into a height-balanced BST, we can use a recursive approach:

- First, we handle the base case: if the nums array is empty, we return nil since there are no elements to create a tree from.
- In the main function sortedArrayToBST, we call a helper function buildTree with the following parameters:
  - nums: The sorted array.
  - start: The index of the first element in the current subarray.
  - end: The index of the last element in the current subarray.
- Inside the buildTree function, we handle the base case as follows:
  - If start is greater than end, it means there are no elements in the current subarray. In this case, we return nil to indicate an empty subtree.
- To create a balanced BST, we find the middle element of the current subarray by calculating mid = start + (end - start) / 2.
- We get the value of the middle element midVal from the nums array.
- We create a new TreeNode with the value midVal, which represents the root of the current subtree.
- We recursively call buildTree for the left and right subtrees using the following parameters:
  - For the left subtree: start to mid - 1.
  - For the right subtree: mid + 1 to end.
- We set the left and right children of the current rootNode to the values returned by the recursive calls in step 7.
- Finally, we return the rootNode of the current subtree, which represents a balanced BST.


## Example

Consider the example nums = [-10,-3,0,5,9]:

- The sortedArrayToBST function is called with nums as input.
- Inside sortedArrayToBST, the buildTree function is called with start = 0 and end = 4.
- In the first recursive call, mid = 2, and midVal = 0. We create a TreeNode with value 0.
- We make recursive calls to build the left and right subtrees:
  - Left subtree: start = 0 to mid - 1 = 1. This results in -10 and -3 as left children of the root.
  - Right subtree: mid + 1 = 1 to end = 4. This results in 5 and 9 as right children of the root.
- The final tree structure is [0,-10,5,null,-3,null,9], which is a height-balanced BST.

## Time Complexity

The time complexity of this solution is O(n), where n is the number of elements in the nums array. This is because we visit each element of the array once to build the corresponding nodes of the tree.

## Space Complexity

The space complexity is O(log n) on average for a balanced binary tree. This is due to the recursive function calls and the space required for the call stack. In the worst case, when the binary tree is completely unbalanced, the space complexity can be O(n).

## LeetCode feedback
![Image 25-09-23 at 7 49 AM](https://github.com/guilhermemello07/LeetCode-Swift/assets/72673965/91002e50-c03c-4102-89a2-efd01dede40b)


