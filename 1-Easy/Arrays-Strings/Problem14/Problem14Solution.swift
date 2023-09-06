/*
 Problem 14 - Longest common prefix
 Easy - Arrays&Strings
 
 Write a function to find the longest common prefix string amongst an array of strings.

 If there is no common prefix, return an empty string "".

  

 Example 1:

 Input: strs = ["flower","flow","flight"]
 Output: "fl"
 Example 2:

 Input: strs = ["dog","racecar","car"]
 Output: ""
 Explanation: There is no common prefix among the input strings.
  

 Constraints:

 1 <= strs.length <= 200
 0 <= strs[i].length <= 200
 strs[i] consists of only lowercase English letters.
 
 */

func longestCommonPrefix(_ strs: [String]) -> String {
    if strs.isEmpty {
        return ""
    }

    var prefix = strs[0]

    for char in strs {
        while !char.hasPrefix(prefix) {
            prefix = String(prefix.dropLast())
        }
    }
    return prefix
}


//testing
print(longestCommonPrefix(["flower","flow","flight"])) // "fl"

print(longestCommonPrefix(["dog","racecar","car"])) // ""
