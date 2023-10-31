/*
 Problem 219 - Contains Duplicate II
 Easy - Arrays&Strings
 
 Given an integer array nums and an integer k, return true if there are two distinct indices i and j in the array such that nums[i] == nums[j] and abs(i - j) <= k.

  

 Example 1:

 Input: nums = [1,2,3,1], k = 3
 Output: true
 Example 2:

 Input: nums = [1,0,1,1], k = 1
 Output: true
 Example 3:

 Input: nums = [1,2,3,1,2,3], k = 2
 Output: false
  

 Constraints:

 1 <= nums.length <= 105
 -109 <= nums[i] <= 109
 0 <= k <= 105
 */

func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
    
    var leftPointer = 0
    var rightPointer = 1
    
    if nums.count < 2 {
        return false
    }
    
    while leftPointer < nums.count - 1 { //left goes one less than final
        while rightPointer < nums.count {
            if nums[rightPointer] == nums[leftPointer] {
                if abs(leftPointer - rightPointer) <= k && abs(leftPointer - rightPointer) <= k {
                    return true
                } else {
                    rightPointer += 1
                }
            } else {
                rightPointer += 1
            }
        }
        leftPointer += 1
        rightPointer = leftPointer + 1
    }
    return false
}


//Testing
var nums1 = [1,2,3,1], k1 = 3
print(containsNearbyDuplicate(nums1, k1)) //True

var nums2 = [1,0,1,1], k2 = 1
print(containsNearbyDuplicate(nums2, k2)) //True

var nums3 = [1,2,3,1,2,3], k3 = 2
print(containsNearbyDuplicate(nums3, k3)) //False
