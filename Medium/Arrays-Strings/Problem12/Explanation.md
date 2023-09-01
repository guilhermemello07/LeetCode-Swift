# Explanation: Integer to Roman

## Problem Description

The "Integer to Roman" problem involves converting a given integer num into its corresponding Roman numeral representation. Roman numerals are represented using seven different symbols: I, V, X, L, C, D, and M. Additionally, Roman numerals follow specific rules for subtraction to create numerals for numbers like 4, 9, 40, 90, 400, and 900.

## Solution Approach

To solve this problem, we'll convert the integer num into its Roman numeral representation by iteratively subtracting the largest possible values from num while building the Roman numeral string.

- Initialize actualNum with the value of num and an empty string romanString to store the Roman numeral.
- While actualNum is greater than 0, follow the Roman numeral rules to construct the Roman numeral string:
  - If actualNum is greater than or equal to 1000, subtract 1000 from actualNum and append "M" to romanString.
  - If actualNum is greater than or equal to 900, subtract 900 from actualNum and append "CM" to romanString.
  - If actualNum is greater than or equal to 500, subtract 500 from actualNum and append "D" to romanString.
  - If actualNum is greater than or equal to 400, subtract 400 from actualNum and append "CD" to romanString.
  - If actualNum is greater than or equal to 100, subtract 100 from actualNum and append "C" to romanString.
  - If actualNum is greater than or equal to 90, subtract 90 from actualNum and append "XC" to romanString.
  - If actualNum is greater than or equal to 50, subtract 50 from actualNum and append "L" to romanString.
  - If actualNum is greater than or equal to 40, subtract 40 from actualNum and append "XL" to romanString.
  - If actualNum is greater than or equal to 10, subtract 10 from actualNum and append "X" to romanString.
  - If actualNum is greater than or equal to 9, subtract 9 from actualNum and append "IX" to romanString.
  - If actualNum is greater than or equal to 5, subtract 5 from actualNum and append "V" to romanString.
  - If actualNum is greater than or equal to 4, subtract 4 from actualNum and append "IV" to romanString.
  - If actualNum is greater than or equal to 1, subtract 1 from actualNum and append "I" to romanString.
- Return the romanString as the result.

## Example

Consider the example num = 1994.

After applying the solution function, the integer 1994 is converted to the Roman numeral "MCMXCIV".

## Time Complexity

The solution iterates through the integer num by subtracting its largest possible components, so the time complexity is O(1).

## Space Complexity

The solution uses a constant amount of extra space to store the romanString and other variables, resulting in O(1) space complexity.

## LeetCode Feedback
![Image 01-09-23 at 11 23 AM](https://github.com/guilhermemello07/LeetCode-Swift/assets/72673965/544d0fd2-ec60-4553-9932-e1e1ae862fbe)

