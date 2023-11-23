# Explanation: Reverse Words in a String

## Problem Description
Given an input string s, the goal is to reverse the order of the words in the string.

A "word" is defined as a sequence of non-space characters. The words in s are separated by at least one space.

The task is to return a string with the words in reverse order, concatenated by a single space.

Note:

The input string s may contain leading or trailing spaces or multiple spaces between two words.
The output should have a single space between words. Extra spaces should be removed.

## Solution Approach
The solution to reverse the words in a string s can be achieved using these steps:

- Split the input string s by spaces to get an array sArray of individual words.
- Initialize an empty string resultString to store the final reversed string.
- Traverse the sArray from the last element to the first.
  - Append each word to resultString.
  - Add a space after each word except for the last word.
- Return the resultString.

## Complexity Analysis
The time complexity of this solution is O(n), where n is the length of the input string s. It involves splitting the string and traversing the words.

The space complexity is also O(n) due to the space occupied by the sArray and the resultString.

## LeetCode Feedback
![5EB97C5D-636F-400A-AC1C-86C981C638C7](https://github.com/guilhermemello07/LeetCode-Swift/assets/72673965/c9695bb1-a9bc-4c37-a492-f3b10dc84081)

