# Explanation: Is Subsequence

## Problem Description
Given two strings s and t, the task is to determine whether s is a subsequence of t or not. A subsequence of a string is a new string that is formed from the original string by deleting some (possibly none) of the characters without disturbing the relative positions of the remaining characters. In other words, if we can obtain string s by deleting some characters from string t without changing the order of the remaining characters, then s is considered a subsequence of t.

## Solution Approach
To determine if s is a subsequence of t, we can use two pointers, leftPointer and rightPointer, to traverse both strings. Here's the approach:

- Convert both strings s and t into arrays of characters for easier traversal.

- Initialize leftPointer and rightPointer to 0.

- We start iterating through the characters of both strings:

  - If sArray[leftPointer] is equal to tArray[rightPointer], we increment both pointers to continue checking the next characters.
  - If they are not equal, we increment only the rightPointer to check the next character in t.
- We continue this process until we reach the end of either string or until we find a match for all characters in s. If we successfully traverse all characters in s, we return true because s is a subsequence of t. Otherwise, if we reach the end of t without finding all characters in s, we return false.

## Example
Consider the example s = "abc", t = "ahbgdc":

- We initialize leftPointer at index 0 and rightPointer at index 0.

- We compare characters "a" and "a" at these pointers, and they match. So, we increment both pointers.

- Next, we compare characters "b" and "h", which do not match. We increment only the rightPointer.

- We continue this process until we find characters "a", "b", and "c" in t, and they match with the characters in s. Therefore, we return true because s is a subsequence of t.

## Time Complexity
The time complexity of this solution is O(N), where N is the length of the string t. We traverse t once, and the comparisons and pointer movements are done in constant time.

## Space Complexity
The space complexity is O(1) because we do not use any additional data structures that grow with the input size. We only use two pointers and arrays for s and t.

## LeetCode Feedback

![02C844CB-8BAA-4930-AF3C-63B7028151C0](https://github.com/guilhermemello07/LeetCode-Swift/assets/72673965/bdee5056-e022-49ed-8ec6-84424110664d)
