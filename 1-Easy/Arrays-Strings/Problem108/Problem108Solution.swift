/*
 Problem 108 - Convert Sorted Array to Binary Search Tree
 Easy - Arrays&Strings
 
 Given an integer array nums where the elements are sorted in ascending order, convert it to a
 height-balanced
  binary search tree.
 
 Example 1:
 Input: nums = [-10,-3,0,5,9]
 Output: [0,-3,9,-10,null,5]
 Explanation: [0,-10,5,null,-3,null,9] is also accepted:
 
 Example 2:
 Input: nums = [1,3]
 Output: [3,1]
 Explanation: [1,null,3] and [3,1] are both height-balanced BSTs.
 
 Constraints:

 1 <= nums.length <= 104
 -104 <= nums[i] <= 104
 nums is sorted in a strictly increasing order.
 */


// Definition for a binary tree node.
// This definition was provided by LeetCode
  public class TreeNode {
      public var val: Int
      public var left: TreeNode?
      public var right: TreeNode?
      public init() { self.val = 0; self.left = nil; self.right = nil; }
      public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
      public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
          self.val = val
          self.left = left
          self.right = right
      }
 }

func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
    if nums.isEmpty {
        return nil
    }
    return buildTree(nums, 0, nums.count-1)
}

private func buildTree(_ nums: [Int], _ start: Int, _ end: Int) -> TreeNode? {
    
    if start > end {
        return nil
    }
    
    let mid = start  + (end - start)/2
    let midVal = nums[mid]
    
    let rootNode = TreeNode(midVal)
    rootNode.left = buildTree(nums, start, mid-1)
    rootNode.right = buildTree(nums, mid+1, end)
    return rootNode
}

//Testing
var nums1 = [-10,-3,0,5,9]
print(sortedArrayToBST(nums1))
