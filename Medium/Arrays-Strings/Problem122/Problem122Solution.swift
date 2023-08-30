/*
 Problem 122 - Best time to buy and sell stocks II
 Medium - Array&Strings
 
 You are given an integer array prices where prices[i] is the price of a given stock on the ith day.

 On each day, you may decide to buy and/or sell the stock. You can only hold at most one share of the stock at any time. However, you can buy it then immediately sell it on the same day.

 Find and return the maximum profit you can achieve.

  

 Example 1:

 Input: prices = [7,1,5,3,6,4]
 Output: 7
 Explanation: Buy on day 2 (price = 1) and sell on day 3 (price = 5), profit = 5-1 = 4.
 Then buy on day 4 (price = 3) and sell on day 5 (price = 6), profit = 6-3 = 3.
 Total profit is 4 + 3 = 7.
 Example 2:

 Input: prices = [1,2,3,4,5]
 Output: 4
 Explanation: Buy on day 1 (price = 1) and sell on day 5 (price = 5), profit = 5-1 = 4.
 Total profit is 4.
 Example 3:

 Input: prices = [7,6,4,3,1]
 Output: 0
 Explanation: There is no way to make a positive profit, so we never buy the stock to achieve the maximum profit of 0.
  

 Constraints:

 1 <= prices.length <= 3 * 104
 0 <= prices[i] <= 104
 */

import Cocoa

func maxProfit(_ prices: [Int]) -> Int {

    var leftPointer = 0
    var rightPointer = 1
    var maxP = 0
    
    if prices.count <= 1 {
        return maxP
    }
    
    while rightPointer < prices.count {
        if prices[leftPointer] < prices[rightPointer] {
            if rightPointer + 1 < prices.count {
                if prices[rightPointer] >= prices[rightPointer + 1] {
                    let profit = prices[rightPointer] - prices[leftPointer]
                    maxP += profit
                    leftPointer = rightPointer + 1
                } else {
                    if rightPointer + 1 == prices.count - 1 {
                        let profit = prices[rightPointer + 1] - prices[leftPointer]
                        maxP += profit
                        return maxP
                    }
                }
            } else {
                if prices[leftPointer] < prices[rightPointer] {
                    let profit = prices[rightPointer] - prices[leftPointer]
                    maxP += profit
                }
            }
        } else {
            leftPointer = rightPointer
        }
        rightPointer += 1
    }
    return maxP
}

//testing
var prices1 = [7,1,5,3,6,4] //expected 7
print(maxProfit(prices1))

var prices2 = [1,2,3,4,5] //expected 4
print(maxProfit(prices2))

var prices3 = [7,6,4,3,1] //expected 0
print(maxProfit(prices3))

var prices4 = [2,1,4] //expected 3
print(maxProfit(prices4))

var prices5 = [2,1,4,5,2,9,7] //expected 11
print(maxProfit(prices5))
