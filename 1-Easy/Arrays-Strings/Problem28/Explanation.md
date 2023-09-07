# Explanation: Find the Index of the First Occurrence of a String
## Problem Description
The "Find the Index of the First Occurrence of a String" problem involves finding the index of the first occurrence of a string called "needle" within another string called "haystack." If the "needle" is not part of the "haystack," the function should return -1.

## Solution Approach
To solve this problem, we can use the following approach:

- We start by initializing a variable called answer to -1. This variable will store the index of the first occurrence of the "needle" in the "haystack."

- We handle some special cases:

  - If the "needle" is an empty string, we return 0 since an empty string is always present at the beginning of any string.
  - If the length of the "haystack" is less than the length of the "needle," there is no way the "needle" can be part of the "haystack," so we return -1.
  - If the "haystack" is equal to the "needle," the "needle" is found at the beginning of the "haystack," so we return 0.
- We convert both the "haystack" and "needle" strings into character arrays for easier character-level comparison.

- We iterate through the characters of the "haystack" using a for loop. We also check whether there are enough characters left in the "haystack" to match the "needle" by comparing the current index i with i + needleArray.count.

- Within the loop, we use a nested for loop to compare characters of the "needle" and "haystack" starting from the current index i. If we find a character in the "needle" that does not match the corresponding character in the "haystack," we set isTarget to false and break out of the inner loop.

- If isTarget is still true after the inner loop, it means we found the "needle" in the "haystack" starting from index i. We update the answer variable with the index i and break out of the outer loop.

- Finally, we return the answer, which will be either the index of the first occurrence of the "needle" or -1 if the "needle" is not found in the "haystack."

## Example
Consider the example haystack = "sadbutsad", needle = "sad":

- We initialize answer as -1.

- We compare "sad" with "sad" starting from index 0, and it's a match. So, we set answer to 0.

- We continue comparing "sad" with "sad" starting from index 6, and it's a match again. However, we already found the first occurrence at index 0, so we don't update answer again.

- After the loop, we return answer as 0.

## Time Complexity
The time complexity of this solution is O(N*M), where N is the length of the "haystack," and M is the length of the "needle." In the worst case, we may need to compare all characters of both strings.

## Space Complexity
The space complexity is O(1) because we use a constant amount of extra space for variables and character arrays.

## LeetCode Feedback

![F6F4ECF8-A072-4818-ACC8-33370F0B3241](https://github.com/guilhermemello07/LeetCode-Swift/assets/72673965/72e683e2-7ba7-4363-8c74-d6da037a1501)

