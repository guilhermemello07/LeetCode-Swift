# Explanation: Majority Element

## Problem Description

The "Majority Element" problem requires finding the majority element in an array, which is defined as the element that appears more than ⌊n / 2⌋ times, where n is the size of the array. You can assume that the majority element always exists in the array.

## Solution Approach

To find the majority element, we can use a dictionary (counts) to keep track of the count of each unique element in the array. We iterate through the input array nums, and for each element, we update its count in the counts dictionary.

- Initialize a dictionary counts to store the count of each unique element.
- Iterate through the nums array:
  - For each element number in nums, update its count in the counts dictionary. If the element doesn't exist in counts, initialize its count to 1; otherwise, increment its count.
- After counting all the elements in the nums array, we have a dictionary counts where the keys are unique elements, and the values are their counts.
- Find the element with the maximum count in the counts dictionary. We can use the max method on the dictionary and compare the values (counts) of the key-value pairs.
- If the maximum count is greater than ⌊n / 2⌋ (where n is the size of the input array nums), we return the corresponding key as the majority element. Otherwise, we return 0, indicating that no majority element exists.

## Example

Consider the example nums = [2,2,1,1,1,2,2]. After applying the solution function:

The counts dictionary will contain the counts of each element: {2: 4, 1: 3}.
The element 2 has the maximum count (4), which is greater than ⌊n / 2⌋ (where n is 7), so we return 2 as the majority element.

## Time Complexity

The solution iterates through the nums array once to count the elements, which takes O(n) time, where n is the size of the input array.

## Space Complexity

The solution uses extra space to store the counts dictionary, which can have a maximum of n/2 unique elements in the worst case, resulting in O(n) space complexity.

## LeetCode Feedback

![Image 28-08-23 at 8 34 AM](https://github.com/guilhermemello07/LeetCode-Swift/assets/72673965/6d1cd099-4f36-429f-b7e5-74c50152333c)

