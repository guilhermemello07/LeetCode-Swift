/*
 Problem 217 - Contains Duplicate
 Arrays&Strings - Easy
 
 Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.

  

 Example 1:

 Input: nums = [1,2,3,1]
 Output: true
 Example 2:

 Input: nums = [1,2,3,4]
 Output: false
 Example 3:

 Input: nums = [1,1,1,3,3,4,3,2,4,2]
 Output: true
  

 Constraints:

 1 <= nums.length <= 105
 -109 <= nums[i] <= 109
 */

func containsDuplicate(_ nums: [Int]) -> Bool {
    
    let setNums = Set(nums)
    
    if setNums.count < nums.count {
        return true
    }
    return false
}

//Testing
var nums1 = [1,2,3,1]
print(containsDuplicate(nums1)) //True

var nums2 = [1,2,3,4]
print(containsDuplicate(nums2)) //False

var nums3 = [1,1,1,3,3,4,3,2,4,2]
print(containsDuplicate(nums3)) //True
