/*
 Problem 35 - Search Insert Position
 Easy - Arrays&Strings
 
 Given a sorted array of distinct integers and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.

 You must write an algorithm with O(log n) runtime complexity.

  

 Example 1:

 Input: nums = [1,3,5,6], target = 5
 Output: 2
 Example 2:

 Input: nums = [1,3,5,6], target = 2
 Output: 1
 Example 3:

 Input: nums = [1,3,5,6], target = 7
 Output: 4
  

 Constraints:

 1 <= nums.length <= 104
 -104 <= nums[i] <= 104
 nums contains distinct values sorted in ascending order.
 -104 <= target <= 104
 
 */

func searchInsert(_ nums: [Int], _ target: Int) -> Int {
    
    var leftPointer = 0
    var rightPointer = nums.count - 1
    var middle = 0
    
    while leftPointer <= rightPointer {
        middle = (leftPointer + rightPointer) / 2
        if nums[middle] == target {
            return middle
        } else {
            if nums[middle] > target {
                rightPointer = middle - 1
            } else {
                leftPointer = middle + 1
            }
        }
    }
    return leftPointer
}

//testing
var nums1 = [1,3,5,6], target1 = 5
print(searchInsert(nums1, target1)) //2

var nums2 = [1,3,5,6], target2 = 2
print(searchInsert(nums2, target2)) //1

var nums3 = [1,3,5,6], target3 = 7
print(searchInsert(nums3, target3)) //4
