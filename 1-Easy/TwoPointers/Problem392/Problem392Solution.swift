/*
 Problem 392 - Is Subsequence
 Easy - Two Pointers
 
 Given two strings s and t, return true if s is a subsequence of t, or false otherwise.

 A subsequence of a string is a new string that is formed from the original string by deleting some (can be none) of the characters without disturbing the relative positions of the remaining characters. (i.e., "ace" is a subsequence of "abcde" while "aec" is not).

  

 Example 1:

 Input: s = "abc", t = "ahbgdc"
 Output: true
 Example 2:

 Input: s = "axc", t = "ahbgdc"
 Output: false
  

 Constraints:

 0 <= s.length <= 100
 0 <= t.length <= 104
 s and t consist only of lowercase English letters.
 
 */

func isSubsequence(_ s: String, _ t: String) -> Bool {
    
    var sArray = Array(s)
    var tArray = Array(t)
    var leftPointer = 0
    var rightPointer = 0
    
    if sArray.count == 0 {
        return true
    }
    
    while rightPointer < tArray.count {
        if sArray[leftPointer] != tArray[rightPointer] {
            if rightPointer < tArray.count + 1 {
                rightPointer += 1
            } else {
                return false
            }
        } else if sArray[leftPointer] == tArray[rightPointer] {
            leftPointer += 1
            if leftPointer == sArray.count {
                return true
            } else if rightPointer < tArray.count + 1 {
                rightPointer += 1
            } else {
                return true
            }
        }
    }
    
    return false
}

//testing
var s1 = "abc", t1 = "ahbgdc"
print(isSubsequence(s1, t1)) //true

var s2 = "axc", t2 = "ahbgdc"
print(isSubsequence(s2, t2)) //false
