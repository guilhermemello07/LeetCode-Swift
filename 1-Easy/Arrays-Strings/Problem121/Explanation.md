# Explanation: Best Time to Buy and Sell Stocks

## Problem Description

The "Best Time to Buy and Sell Stocks" problem involves an array prices, where prices[i] represents the price of a given stock on the i-th day. The goal is to maximize profit by choosing a day to buy the stock and another day in the future to sell the stock, with the constraint that you must buy before you sell. If no profit can be achieved, return 0.

## Solution Approach

To solve this problem, we can use a two-pointer approach to find the best buying and selling days while maximizing profit.

- Initialize a leftPointer at index 0 and a rightPointer at index 1 to represent the days for buying and selling.
- Initialize a variable maxP to store the maximum profit achieved.
- Iterate through the prices array using the rightPointer. Compare the price at the leftPointer with the price at the rightPointer.
  - If the price at the leftPointer is less than the price at the rightPointer, calculate the profit as prices[rightPointer] - prices[leftPointer]. Update maxP to be the maximum of the current maxP and the calculated profit.
  - If the price at the leftPointer is not less than the price at the rightPointer, update the leftPointer to be the rightPointer.
- Continue the iteration until the rightPointer reaches the end of the prices array.
- Return the calculated maxP as the maximum profit achievable.

## Example

Consider the example prices = [7,1,5,3,6,4].

After applying the solution function, the maximum profit is 5. We buy on day 2 (price = 1) and sell on day 5 (price = 6), resulting in a profit of 6 - 1 = 5.

## Time Complexity

The solution iterates through the prices array exactly once, so the time complexity is O(n), where n is the length of the input array.

## Space Complexity

The solution uses a constant amount of extra space, so the space complexity is O(1).

## LeetCode Feedback

![Image 30-08-23 at 12 12 PM](https://github.com/guilhermemello07/LeetCode-Swift/assets/72673965/7dedee38-034c-4fa3-873f-6d7cf4600ba7)

