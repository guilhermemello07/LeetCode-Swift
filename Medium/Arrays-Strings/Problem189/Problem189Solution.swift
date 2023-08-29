/*
 Problem 189 - Rotate Array
 Medium - Array & Strings
 
 Given an integer array nums, rotate the array to the right by k steps, where k is non-negative.

 Example 1:

 Input: nums = [1,2,3,4,5,6,7], k = 3
 Output: [5,6,7,1,2,3,4]
 Explanation:
 rotate 1 steps to the right: [7,1,2,3,4,5,6]
 rotate 2 steps to the right: [6,7,1,2,3,4,5]
 rotate 3 steps to the right: [5,6,7,1,2,3,4]
 Example 2:

 Input: nums = [-1,-100,3,99], k = 2
 Output: [3,99,-1,-100]
 Explanation:
 rotate 1 steps to the right: [99,-1,-100,3]
 rotate 2 steps to the right: [3,99,-1,-100]
  

 Constraints:

 1 <= nums.length <= 105
 -231 <= nums[i] <= 231 - 1
 0 <= k <= 105
 
*/

import Cocoa

func rotate(_ nums: inout [Int], _ k: Int) {
    
    print("Original array: \(nums) to make \(k) rotations to the right.")
    var timesToRotate = k % nums.count
    var firstPartOfArray = nums[0..<nums.count - timesToRotate]
    var lastPartOfArray = nums[nums.count - timesToRotate..<nums.count]
    
    nums = Array(lastPartOfArray + firstPartOfArray)
    print("final array: \(nums)")
}


//testing
var nums1 = [-1,-100,3,99], k1 = 2
rotate(&nums1, k1)

var nums2 = [1,2,3,4,5,6,7], k2 = 3
rotate(&nums2, 3)

var nums3 = [-1], k3 = 2
rotate(&nums3, k3)

var nums4 = [2,3], k4 = 5
rotate(&nums4, k4)
