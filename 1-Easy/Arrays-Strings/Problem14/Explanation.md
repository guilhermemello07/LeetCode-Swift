# Explanation: Longest Common Prefix

## Problem Description
The "Longest Common Prefix" problem involves finding the longest common prefix string among an array of strings. If there is no common prefix, the function should return an empty string ("").

## Solution Approach
To solve this problem, we can use the following approach:

- If the input array strs is empty, there is no common prefix, so we return an empty string.

- We initialize the prefix variable with the first string in the array, strs[0].

- We iterate through the array of strings, starting from the second string (str) in the array.

  - For each string str, we use a while loop to compare it with the current prefix. We keep removing the last character from prefix until str has the same prefix as prefix using the hasPrefix method.

- After iterating through all the strings in the array, prefix will contain the longest common prefix among all the strings.

- We return the prefix as the result.

## Example
Consider the example strs = ["flower","flow","flight"].

- We initialize prefix as "flower", the first string in the array.

- We compare "flower" with the second string "flow". Since "flow" is a prefix of "flower," we update prefix to "flow."

- Next, we compare "flow" with the third string "flight." "fl" is the longest common prefix among "flow" and "flight," so we update prefix to "fl."

- After iterating through all the strings, we have found the longest common prefix "fl."

- We return "fl" as the result.

## Time Complexity
The time complexity of this solution is O(n * m), where n is the number of strings in the array strs, and m is the average length of the strings. In the worst case, we may need to compare all characters of each string.

## Space Complexity
The space complexity is O(1) because we use a constant amount of extra space to store the prefix variable.

## LeetCode Feedback

![ECEB71B0-1BCB-4AE6-A2BC-C0F5A2831E45](https://github.com/guilhermemello07/LeetCode-Swift/assets/72673965/9adc482b-07de-483b-9ad9-c9ee642e0ef8)
