/*
 Problem 55 - JumpGame
 Medium - Arrays&Strings
 
 You are given an integer array nums. You are initially positioned at the array's first index, and each element in the array represents your maximum jump length at that position.

 Return true if you can reach the last index, or false otherwise.

  

 Example 1:

 Input: nums = [2,3,1,1,4]
 Output: true
 Explanation: Jump 1 step from index 0 to 1, then 3 steps to the last index.
 Example 2:

 Input: nums = [3,2,1,0,4]
 Output: false
 Explanation: You will always arrive at index 3 no matter what. Its maximum jump length is 0, which makes it impossible to reach the last index.
  

 Constraints:

 1 <= nums.length <= 104
 0 <= nums[i] <= 105
 
 */


func canJump(_ nums: [Int]) -> Bool {
    
    print(nums)
    
    var goalPointer = nums.count - 1
    
    for i in stride(from: nums.count - 1, to: -1, by: -1) {
        if i + nums[i] >= goalPointer {
            goalPointer = i
        }
    }
    return goalPointer == 0 ? true : false
}



//testing
print("First call ********************")
var nums1 = [5,9,3,2,1,0,2,3,3,1,0,0] // true
print(canJump(nums1))

print("Second call ********************")
var nums2 = [3,2,1,0,4] // false
print(canJump(nums2))

print("Third call ********************")
var nums3 = [0] //true
print(canJump(nums3))

print("Fourth call ********************")
var nums4 = [1,2,3] //true
print(canJump(nums4))


print("Fifth call ********************")
var nums5 = [3,0,8,2,0,0,1] //true
print(canJump(nums5))

print("Sixth call ********************")
var nums6 = [1,1,2,2,0,1,1] //true
print(canJump(nums6))
