/*
 Problem 1 - Two Sum
 Easy - Hashmap
 
 Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

 You may assume that each input would have exactly one solution, and you may not use the same element twice.

 You can return the answer in any order.

  

 Example 1:

 Input: nums = [2,7,11,15], target = 9
 Output: [0,1]
 Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].
 Example 2:

 Input: nums = [3,2,4], target = 6
 Output: [1,2]
 Example 3:

 Input: nums = [3,3], target = 6
 Output: [0,1]
  

 Constraints:

 2 <= nums.length <= 104
 -109 <= nums[i] <= 109
 -109 <= target <= 109
 Only one valid answer exists.
 
 */

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    
    var leftPointer = 0
    var rightPointer = 1 //constrain
    
    while leftPointer < nums.count - 1 {
        if nums[leftPointer] + nums[rightPointer] == target {
            return [leftPointer, rightPointer]
        } else {
            if rightPointer + 1 < nums.count {
                rightPointer += 1
            } else {
                leftPointer += 1
                rightPointer = leftPointer + 1
            }
        }
    }
    return []
}

//Testing
var nums1 = [2,7,11,15], target1 = 9
print(twoSum(nums1, target1)) //[0,1]

var nums2 = [3,2,4], target2 = 6
print(twoSum(nums2, target2)) //[1,2]

var nums3 = [3,3], target3 = 6
print(twoSum(nums3, target3)) //[0,1]
