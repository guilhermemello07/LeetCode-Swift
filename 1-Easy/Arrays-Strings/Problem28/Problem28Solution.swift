/*
 Problem 28 - Find the index of the first occurence of a string
 Easy - Arrays&Strings
 
 Given two strings needle and haystack, return the index of the first occurrence of needle in haystack, or -1 if needle is not part of haystack.

  

 Example 1:

 Input: haystack = "sadbutsad", needle = "sad"
 Output: 0
 Explanation: "sad" occurs at index 0 and 6.
 The first occurrence is at index 0, so we return 0.
 Example 2:

 Input: haystack = "leetcode", needle = "leeto"
 Output: -1
 Explanation: "leeto" did not occur in "leetcode", so we return -1.
  

 Constraints:

 1 <= haystack.length, needle.length <= 104
 haystack and needle consist of only lowercase English characters
 
 */
func strStr(_ haystack: String, _ needle: String) -> Int {

    var answer = -1
    
    guard !needle.isEmpty else { return 0 }
    
    guard haystack.count >= needle.count else { return answer }
    
    guard haystack != needle else { return 0 }
    
    var haystackArray = Array(haystack)
    var needleArray = Array(needle)
    
    for i in 0..<haystackArray.count {
        if i + needleArray.count > haystack.count {
            break
        }
        var isTarget = true
        var haystackChar = haystackArray[i]
        for j in 0..<needleArray.count {
            let needleChar = needleArray[j]
            if haystackChar != needleChar {
                isTarget = false
                break
            } else if i + j + 1 < haystackArray.count {
                haystackChar = haystackArray[i + j + 1]
            } else {
                break
            }
        }
        if isTarget {
            answer = i
            break
        }
        
    }
    return answer
}


//testing
var haystack1 = "sadbutsad", needle1 = "sad"
print(strStr(haystack1, needle1))

var haystack2 = "leetcode", needle2 = "leeto"
print(strStr(haystack2, needle2))
