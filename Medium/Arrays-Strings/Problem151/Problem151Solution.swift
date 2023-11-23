/*
 Problem 151 - Reverse Words in a String
 Medium - Strings and Arrays
 
 Given an input string s, reverse the order of the words.

 A word is defined as a sequence of non-space characters. The words in s will be separated by at least one space.

 Return a string of the words in reverse order concatenated by a single space.

 Note that s may contain leading or trailing spaces or multiple spaces between two words. The returned string should only have a single space separating the words. Do not include any extra spaces.

  

 Example 1:
 Input: s = "the sky is blue"
 Output: "blue is sky the"
 
 Example 2:
 Input: s = "  hello world  "
 Output: "world hello"
 Explanation: Your reversed string should not contain leading or trailing spaces.
 
 Example 3:
 Input: s = "a good   example"
 Output: "example good a"
 Explanation: You need to reduce multiple spaces between two words to a single space in the reversed string.
  

 Constraints:

 1 <= s.length <= 104
 s contains English letters (upper-case and lower-case), digits, and spaces ' '.
 There is at least one word in s.
 */

func reverseWords(_ s: String) -> String {
    
    var sArray = s.split(separator: " ")
    var resultString = String()
    
    for i in stride(from: sArray.count - 1, to: -1, by: -1) {
        resultString += sArray[i]
        if i > 0 {
            resultString += " "
        }
    }
    return resultString
}

//Testing
var s1 = "the sky is blue"
print(reverseWords(s1)) //"blue is sky the"

var s2 = "a good   example"
print(reverseWords(s2)) //"example good a"

var s3 = "  hello world  "
print(reverseWords(s3))
