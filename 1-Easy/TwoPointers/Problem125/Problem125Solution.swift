/*
 Problem 125 - Valid Palindrome
 Easy - Two Pointers
 
 A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and removing all non-alphanumeric characters, it reads the same forward and backward. Alphanumeric characters include letters and numbers.

 Given a string s, return true if it is a palindrome, or false otherwise.

  

 Example 1:

 Input: s = "A man, a plan, a canal: Panama"
 Output: true
 Explanation: "amanaplanacanalpanama" is a palindrome.
 Example 2:

 Input: s = "race a car"
 Output: false
 Explanation: "raceacar" is not a palindrome.
 Example 3:

 Input: s = " "
 Output: true
 Explanation: s is an empty string "" after removing non-alphanumeric characters.
 Since an empty string reads the same forward and backward, it is a palindrome.
  

 Constraints:

 1 <= s.length <= 2 * 105
 s consists only of printable ASCII characters.
 */

func isPalindrome(_ s: String) -> Bool {
    //convert to lowercase
    var newString = s.lowercased()
    
    //remove every non-alphanumeric characters including spaces.
    let result = newString.filter("0123456789abcdefghijklmnopqrstuvwxyz".contains)
    
    var leftPointer = 0
    var rightPointer = result.count - 1
    var arrayString = Array(result)
    
    while leftPointer < rightPointer {
        if arrayString[leftPointer] == arrayString[rightPointer] {
            leftPointer += 1
            rightPointer -= 1
        } else {
            return false
        }
    }
    return true
}

//testing
var s1 = "A man, a plan, a canal: Panama"
print(isPalindrome(s1)) //True

var s2 = "race a car"
print(isPalindrome(s2)) //False

var s3 = " "
print(isPalindrome(s3)) //True
