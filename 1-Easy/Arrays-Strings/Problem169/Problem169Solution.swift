/*
 Problem 169 - Majority Element
 
 Given an array nums of size n, return the majority element.

 The majority element is the element that appears more than ⌊n / 2⌋ times. You may assume that the majority element always exists in the array.

  

 Example 1:

 Input: nums = [3,2,3]
 Output: 3
 Example 2:

 Input: nums = [2,2,1,1,1,2,2]
 Output: 2
  

 Constraints:

 n == nums.length
 1 <= n <= 5 * 104
 -109 <= nums[i] <= 109
 */

import Cocoa

func majorityElement(_ nums: [Int]) -> Int {
    
    let cutNumber = floor(Double(nums.count) / 2)
    var counts: [Int: Int] = [:]
    
    for number in nums {
        counts[number] = (counts[number] ?? 0) + 1
    }
    
    let maximum = counts.max { a, b in a.value < b.value }
    
    if let answer = maximum {
        if Double(answer.value) > cutNumber {
            return Int(answer.key)
        }
    }
    
    return 0
}

//Testing
var nums1 = [2,2,1,1,1,2,2]
majorityElement(nums1)

var nums2 = [3,2,3]
majorityElement(nums2)
