# Explanation: Reverse Vowels of a String

## Problem Description
Given a string s, the task is to reverse only all the vowels in the string and return the modified string. The vowels include 'a', 'e', 'i', 'o', and 'u', and they can appear in both lower and upper cases, and more than once.

## Solution Approach
To reverse the vowels in the string, follow these steps:

- Convert the input string s into an array of characters word.
- Initialize two pointers, leftPointer at the beginning of the array (0) and rightPointer at the end of the array (word.count - 1).
- Define an array vowels containing all the vowel characters ('a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U').
- Iterate through the array using the two pointers (leftPointer and rightPointer).
  - Check if the character at word[leftPointer] is a vowel.
    - If it is, check if the character at word[rightPointer] is also a vowel.
    - If it is, swap the characters at word[leftPointer] and word[rightPointer].
  - Increment leftPointer and decrement rightPointer.
  - Continue this process until leftPointer is less than rightPointer.
- If the character at word[rightPointer] is not a vowel, decrement rightPointer.
- If the character at word[leftPointer] is not a vowel, increment leftPointer.
- After the iteration, the array word contains the reversed vowels.
- Convert the modified array word back to a string and return the result.

## Complexity Analysis
The time complexity of this solution is O(n), where n is the length of the input string s. This is because we iterate through the entire string once. The space complexity is O(n) as well, as we convert the input string s into an array of characters.

## LeetCode feedback
![729E4E4B-7B5B-4C6D-998D-B41A4D6C739F](https://github.com/guilhermemello07/LeetCode-Swift/assets/72673965/d543997a-238d-467f-a12a-04ba6a50d41e)

