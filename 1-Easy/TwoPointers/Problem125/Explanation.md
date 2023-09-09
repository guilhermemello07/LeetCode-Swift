# Explanation: Valid Palindrome

## Problem Description
A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and removing all non-alphanumeric characters, it reads the same forward and backward. Alphanumeric characters include letters and numbers.

Given a string s, the task is to determine whether it is a palindrome or not. The function should return true if it is a palindrome and false otherwise.

## Solution Approach
To determine if a string is a valid palindrome, we can use the following approach:

- We start by converting the entire string to lowercase using the lowercased() method. This ensures that we handle uppercase and lowercase characters uniformly.

- Next, we remove all non-alphanumeric characters (including spaces) from the string. We do this by filtering the characters in the string and keeping only those that are alphanumeric (letters and numbers).

- After these preprocessing steps, we have a cleaned string containing only alphanumeric characters in lowercase.

- We then use two pointers, a leftPointer starting from the beginning of the cleaned string and a rightPointer starting from the end of the cleaned string.

- We compare the characters at the leftPointer and rightPointer. If they match, we move the leftPointer one step to the right and the rightPointer one step to the left.

- We continue this process until the leftPointer crosses the rightPointer. If at any point the characters at these pointers do not match, we return false because the string is not a palindrome.

- If we successfully traverse the entire string without finding any non-matching characters, we return true because the string is a valid palindrome.

## Example
Consider the example s = "A man, a plan, a canal: Panama":

- After preprocessing, we get the cleaned string "amanaplanacanalpanama".

- We initialize the leftPointer at index 0 and the rightPointer at the end of the string, which is index 20.

- We compare characters "a" and "a" at these pointers, and they match. So, we move the leftPointer to index 1 and the rightPointer to index 19.

- We continue comparing characters until we have traversed the entire string without any mismatches. Therefore, we return true because it is a palindrome.

## Time Complexity
The time complexity of this solution is O(N), where N is the length of the input string s. We preprocess the string once and then compare characters using two pointers, which takes linear time.

## Space Complexity
The space complexity is O(N) because we create a new string with the same length as the input string to store the cleaned version of the string.

## LeetCode Feedback

![713A6C49-A064-4CEB-A6D6-23A811E39E63](https://github.com/guilhermemello07/LeetCode-Swift/assets/72673965/52e8548f-a847-4987-915c-f565a19ddf9d)

