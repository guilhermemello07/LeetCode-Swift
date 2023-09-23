# Explanation: Pascal's Triangle

## Problem Description

Given an integer numRows, the task is to return the first numRows of Pascal's triangle.

Pascal's triangle is a triangular array of binomial coefficients, where each number is the sum of the two numbers directly above it.

## Solution Approach

To generate Pascal's triangle, we can use a nested loop approach:

- Start by initializing res as an array containing the first row of Pascal's triangle, which is [1].
- Use a loop to iterate from 0 to numRows - 2 (since we already have the first row).
  - Inside the loop, create a temporary array temp by adding 0 at the beginning and end of the last row of res. This represents the boundary values of the next row.
  - Initialize an empty array row to store the values of the current row being generated.
    - Use another loop to iterate from 0 to the length of the last row of res.
    - In each iteration, calculate the value for the current position in the row by summing the corresponding values from temp[j] and temp[j+1]. Append this value to the row array.
  - After completing the inner loop, the row array represents the values of the current row. Append it to the res array.
  - Repeat steps 3-7 for each row until we have generated numRows rows.
- Finally, return the res array, which contains the first numRows of Pascal's triangle.

## Example

Consider the example numRows = 5:

- Initialize res with the first row [1].
- In the first iteration:
  - Create temp as [0, 1, 0].
  - Initialize an empty row.
    - In the inner loop:
    - For j = 0, calculate temp[0] + temp[1] = 0 + 1 = 1 and append it to row.
    - For j = 1, calculate temp[1] + temp[2] = 1 + 0 = 1 and append it to row.
  - Append row to res, so res becomes [[1], [1, 1]].
  - Repeat the above steps for the remaining iterations, adding new rows to res.
- After completing all iterations, res contains [[1],[1,1],[1,2,1],[1,3,3,1],[1,4,6,4,1]], which represents the first 5 rows of Pascal's triangle.

## Time Complexity

The time complexity of this solution is O(numRows^2) because we generate each row by calculating its values based on the previous row.

## Space Complexity

The space complexity is O(numRows^2) as well since we store the values of all rows in the res array.

## LeetCode Feedback
![Image 23-09-23 at 8 44 AM](https://github.com/guilhermemello07/LeetCode-Swift/assets/72673965/b88af05b-51e6-470b-b81b-e8a933db1319)


