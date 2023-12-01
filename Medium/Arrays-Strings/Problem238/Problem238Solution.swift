/*
 Problem 238 - Product of Array Except Self
 Medium - Array
 
 Given an integer array nums, return an array answer such that answer[i] is equal to the product of all the elements of nums except nums[i].

 The product of any prefix or suffix of nums is guaranteed to fit in a 32-bit integer.

 You must write an algorithm that runs in O(n) time and without using the division operation.


 Example 1:
 Input: nums = [1,2,3,4]
 Output: [24,12,8,6]
 
 Example 2:
 Input: nums = [-1,1,0,-3,3]
 Output: [0,0,9,0,0]
  
 Constraints:
 2 <= nums.length <= 105
 -30 <= nums[i] <= 30
 The product of any prefix or suffix of nums is guaranteed to fit in a 32-bit integer.
 */

func productExceptSelf(_ nums: [Int]) -> [Int] {
    
    let length = nums.count
    
    guard length > 0 else { return [] }
    
    var leftArray = Array(repeating: 1, count: length)
    var rightArray = Array(repeating: 1, count: length)
    var answer = Array(repeating: 1, count: length)
    
    //Left
    leftArray[0] = 1
    for i in 1...length - 1 {
        leftArray[i] = nums[i - 1] * leftArray[i - 1]
    }
    
    //Right
    for i in (0...length - 2).reversed() {
        rightArray[i] = nums[i + 1] * rightArray[i + 1]
    }
    
    //Answer
    for i in 0...length - 1 {
        answer[i] = leftArray[i] * rightArray[i]
    }
    
    return answer
}

//Testing
var nums1 = [1,2,3,4]
print(productExceptSelf(nums1)) //[24,12,8,6]

var nums2 = [-1,1,0,-3,3]
print(productExceptSelf(nums2)) //[0,0,9,0,0]
