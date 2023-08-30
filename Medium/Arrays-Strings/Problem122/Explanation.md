# Explanation: Best Time to Buy and Sell Stocks II

## Problem Description

The "Best Time to Buy and Sell Stocks II" problem involves an integer array prices, where prices[i] represents the price of a given stock on the i-th day. On each day, you can decide to buy and/or sell the stock. You can only hold at most one share of the stock at any time. However, you can buy and immediately sell on the same day. The goal is to find and return the maximum profit you can achieve.

## Solution Approach

To solve this problem, we can use a two-pointer approach to find the days for buying and selling while maximizing profit.

- Initialize a leftPointer at index 0 and a rightPointer at index 1 to represent the days for buying and selling.
- Initialize a variable maxP to store the maximum profit achieved.
- If the prices array has less than or equal to 1 element, return maxP since no transactions can be done.
- Iterate through the prices array using the rightPointer. Compare the price at the leftPointer with the price at the rightPointer.
  - If the price at the leftPointer is less than the price at the rightPointer, we have a potential profit.
    - Check if the price at the next day (rightPointer + 1) is less than or equal to the current price at the rightPointer. If so, calculate the profit as prices[rightPointer] - prices[leftPointer] and add it to maxP. Update the leftPointer to be rightPointer + 1.
    - If the above condition is not met and we are at the second-to-last day, calculate the profit as prices[rightPointer + 1] - prices[leftPointer] and add it to maxP. Return maxP.
- Continue the iteration until the rightPointer reaches the end of the prices array.
- Return the calculated maxP as the maximum profit achievable.

## Example

Consider the example prices = [7,1,5,3,6,4].

After applying the solution function, the maximum profit is 7. We buy on day 2 (price = 1) and sell on day 3 (price = 5), resulting in a profit of 5 - 1 = 4. Then we buy on day 4 (price = 3) and sell on day 5 (price = 6), resulting in a profit of 6 - 3 = 3. The total profit is 4 + 3 = 7.

## Time Complexity

The solution iterates through the prices array exactly once, so the time complexity is O(n), where n is the length of the input array.

## Space Complexity

The solution uses a constant amount of extra space, so the space complexity is O(1).

## LeetCode feedback

![Image 30-08-23 at 5 38 PM](https://github.com/guilhermemello07/LeetCode-Swift/assets/72673965/b64aaa70-3939-4104-80c9-90a38ee32970)

