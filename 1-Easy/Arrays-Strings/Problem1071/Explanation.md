# Explanation: Greatest Common Divisor of Strings

## Problem Description
You are given two strings, str1 and str2. Your task is to find the largest string x that divides both str1 and str2. We say that "x divides s" if and only if s = t + ... + t, which means x is concatenated with itself one or more times to create s.

## Solution Approach
To find the greatest common divisor of str1 and str2, you can start by checking the common divisors from the longest possible length to the shortest. Here's a step-by-step approach to solve the problem:

- Convert str1 and str2 into character arrays, str1Array and str2Array, respectively.

- Find the lengths of str1 and str2 and store them in len1 and len2.

- Define a helper function, isDivisor(i), that checks if a given length i can be a divisor of both str1 and str2. This function checks if both len1 and len2 are divisible by i and if repeating i characters create str1 and str2.

- Iterate from the minimum of len1 and len2 to 1 in reverse order. For each i, check if it can be a common divisor using the isDivisor function.

  - If a common divisor is found, return a string containing the first i characters of str1Array.
  - If no common divisor is found, return an empty string to indicate that no common divisor exists between str1 and str2.

## Complexity Analysis
The time complexity of this solution is O(min(len1, len2)), where len1 and len2 are the lengths of str1 and str2. This is because we iterate through possible divisors from the longest to the shortest length. The space complexity is O(1) as we only use a few variables for computations.

## LeetCode Feedback
![AC82A507-729A-4EFB-B151-2464D05820B0](https://github.com/guilhermemello07/LeetCode-Swift/assets/72673965/dff29157-0469-4651-96aa-efef0a9aff97)

