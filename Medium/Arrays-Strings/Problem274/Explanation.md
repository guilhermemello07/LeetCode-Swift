# Explanation: H-Index

## Problem Description

The problem asks us to find the h-index of a researcher based on their citations array. The h-index is a measure of the impact and productivity of a researcher. It is defined as the maximum value of h such that the researcher has published at least h papers that have each been cited at least h times.

## Solution Approach

To solve this problem, we can use the following steps:

- Sort the citations array in descending order, so that the most cited papers are at the front.
- Loop through the sorted array, and keep track of the index i as the number of papers we have seen so far.
  - For each paper, check if its citation count is greater than or equal to i. If yes, then it means that we have i papers that have at least i citations each, so we can update our h-index to i.
- If no, then it means that we have reached a paper that has less citations than the number of papers we have seen, so we can stop the loop and return the current h-index.

## Example
Here is an example of how this solution works:

Input: citations = [3,0,6,1,5] Output: 3

- We sort the citations array in descending order: [6,5,3,1,0]
- We loop through the sorted array, and check each paper’s citation count against the index i:
  - i = 0, citation = 6, 6 >= 0, so we update h-index to 0
  - i = 1, citation = 5, 5 >= 1, so we update h-index to 1
  - i = 2, citation = 3, 3 >= 2, so we update h-index to 2
  - i = 3, citation = 1, 1 < 3, so we stop the loop and return h-index as 2
- The final answer is 3

## Time Complexity
The time complexity of this solution is O(n log n), where n is the length of the citations array. This is because we need to sort the array first, which takes O(n log n) time on average using a comparison-based sorting algorithm.

## Space Complexity
The space complexity of this solution is O(1), since we only use constant extra space. We create a new array to store the sorted citations, but we do not count it as extra space since it is just a copy of the input array. We also use a variable i to keep track of the index in the loop, but it does not depend on the size of the input array. Therefore, our space complexity is O(1).

## Leetcode Feedback
![53F5A43B-34C5-46FB-B0A4-EAD0D7974A5C](https://github.com/guilhermemello07/LeetCode-Swift/assets/72673965/d68fa631-5761-4543-8427-5af11bc9e12a)

