# Explanation: Length of Last Word

## Problem Description
The "Length of Last Word" problem involves finding the length of the last word in a given string s, where a word is defined as a maximal substring consisting of non-space characters.

## Solution Approach
To solve this problem, we'll perform the following steps:

- Split the input string s by spaces using the split method. This will give us an array of substrings, where each substring represents a word.

- Retrieve the last element (i.e., the last word) from the array of substrings.

- Calculate the length of the last word using the count property.

- Return the length of the last word as the result.

## Example
Consider the example s = "Hello World".

After applying the solution function, we split the string by spaces and obtain an array of substrings: ["Hello", "World"].

We retrieve the last element "World" and calculate its length, which is 5.

The length of the last word is 5.

## Time Complexity
The solution performs a single pass through the input string s, so the time complexity is O(n), where n is the length of the input string.

## Space Complexity
The solution uses extra space to store the array of substrings, which contributes to the space complexity. However, the space used is proportional to the number of words in the input string, so the space complexity is O(m), where m is the number of words in the input string.

## LeetCode Feedback

![58C90DF9-126C-4DA2-AC3E-5490EECF1E27](https://github.com/guilhermemello07/LeetCode-Swift/assets/72673965/d9dc79c2-8cb1-4cbd-88e9-24a3f4c9b8a6)

