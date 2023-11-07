# Explanation: Merge Strings Alternately

## Problem Description
You are given two strings, word1 and word2. Your task is to merge the strings by adding letters in alternating order, starting with word1. If one string is longer than the other, append the additional letters onto the end of the merged string. You need to return the merged string.

## Solution Approach
To solve this problem, you can use two arrays to represent the characters of word1 and word2. Then, merge these arrays alternately, considering the length of each string. Here's the step-by-step approach to solve the problem:

- Convert word1 and word2 into character arrays, word1Array and word2Array, respectively.

- Initialize an empty string, resultString, to store the merged string.

- Compare the lengths of word1Array and word2Array:

  - If they have the same length, iterate through both arrays in parallel and append characters alternately to resultString.

  - If word1Array is longer, iterate through both arrays, appending characters from each array alternately. When you reach the end of word2Array, continue appending the remaining characters from word1Array.

  - If word2Array is longer, follow a similar process but with word2Array.

- Return the resultString as the merged string.

## Examples
Let's consider the examples provided in the problem description:

For word1 = "abc" and word2 = "pqr", the merged string alternates between characters from word1 and word2 to create "apbqcr".

For word1 = "ab" and word2 = "pqrs", since word2 is longer, the merged string is created by alternating characters and appending the remaining characters from word2. The result is "apbqrs".

For word1 = "abcd" and word2 = "pq", since word1 is longer, the merged string alternates characters from both words and appends the remaining characters from word1. The result is "apbqcd".

## Time Complexity
The time complexity of this solution is O(max(n, m)), where n and m are the lengths of word1 and word2. This is because you iterate through both arrays once, considering the longer array.

## Space Complexity
The space complexity is O(n + m), as you create character arrays for word1 and word2, and resultString stores the merged string.

## LeetCode Feedback
![9958FF43-FE6D-499B-802A-5736E0D0FE05](https://github.com/guilhermemello07/LeetCode-Swift/assets/72673965/ed9a3032-32f0-421d-9929-e698bb2d7c9d)

