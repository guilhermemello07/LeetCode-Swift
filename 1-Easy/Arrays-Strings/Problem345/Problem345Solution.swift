/*
 Problem 345 - Reverse Vowels of a String
 Easy - Srings and Arrays
 
 Given a string s, reverse only all the vowels in the string and return it.

 The vowels are 'a', 'e', 'i', 'o', and 'u', and they can appear in both lower and upper cases, more than once.

  

 Example 1:
 Input: s = "hello"
 Output: "holle"
 
 Example 2:
 Input: s = "leetcode"
 Output: "leotcede"

 Constraints:
 1 <= s.length <= 3 * 105
 s consist of printable ASCII characters.
 */

func reverseVowels(_ s: String) -> String {
    
    var word = Array(s)
    var leftPointer = 0
    var rightPointer = word.count - 1
    let vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
    
    while leftPointer < rightPointer {
        if vowels.contains(String(word[leftPointer])) {
            if vowels.contains(String(word[rightPointer])) {
                let c = word[leftPointer]
                word[leftPointer] = word[rightPointer]
                word[rightPointer] = c
                leftPointer += 1
                rightPointer -= 1
            } else {
                rightPointer -= 1
            }
        } else {
            leftPointer += 1
        }
    }
    return String(word)
}

//Testing
var s1 = "hello"
print(reverseVowels(s1)) //holle

var s2 = "leetcode"
print(reverseVowels(s2)) //leotcede
