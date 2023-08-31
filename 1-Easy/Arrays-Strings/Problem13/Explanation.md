# Explanation: Roman to Integer

## Problem Description

The "Roman to Integer" problem involves converting a given Roman numeral string s into its corresponding integer value. Roman numerals are represented using the symbols 'I', 'V', 'X', 'L', 'C', 'D', and 'M', and their respective values are 1, 5, 10, 50, 100, 500, and 1000. Additionally, there are specific rules for subtractive notation in Roman numerals.

## Solution Approach

To solve this problem, we'll iterate through the Roman numeral string and convert each character to its corresponding integer value. We'll consider the subtractive notation rules to correctly calculate the integer value.

- Create a dictionary numbers that maps each Roman numeral character to its corresponding integer value.
- Initialize a leftPointer at index 0 to keep track of the current character being processed.
- Initialize an empty array count to store the integer values of the characters in the Roman numeral string.
- Initialize a variable finalValue to store the cumulative integer value of the Roman numeral.
- Iterate through each character char in the Roman numeral string s:
  - Convert the character to its corresponding integer value using the numbers dictionary.
  - Append the integer value to the count array.
  - Check if the length of count is greater than 1 (i.e., if we have processed at least two characters).
    - If the integer value of the current character is greater than the integer value of the previous character, subtract twice the integer value of the previous character from the finalValue and then add the integer value of the current character to the finalValue. This accounts for the subtractive notation.
    - If the integer value of the current character is not greater than the integer value of the previous character, simply add the integer value of the current character to the finalValue.
- Return the finalValue as the result.

## Example

Consider the example s = "MCMXCIV".

After applying the solution function, the Roman numeral "MCMXCIV" corresponds to the integer value 1994.

## Time Complexity

The solution iterates through the Roman numeral string once, so the time complexity is O(n), where n is the length of the input string.

## Space Complexity

The solution uses extra space to store the numbers dictionary, the count array, and a few variables, resulting in O(1) space complexity.

## LeetCode Feedback
![Image 31-08-23 at 6 24 PM](https://github.com/guilhermemello07/LeetCode-Swift/assets/72673965/429bd5ff-c5ce-4b42-809d-e26ee271259f)

