/*
 Problem 1768 - Merge Strings Alternately
 Easy - Strings and Arrays
 
 You are given two strings word1 and word2. Merge the strings by adding letters in alternating order, starting with word1. If a string is longer than the other, append the additional letters onto the end of the merged string.

 Return the merged string.

  

 Example 1:
 Input: word1 = "abc", word2 = "pqr"
 Output: "apbqcr"
 Explanation: The merged string will be merged as so:
 word1:  a   b   c
 word2:    p   q   r
 merged: a p b q c r
 
 
 Example 2:
 Input: word1 = "ab", word2 = "pqrs"
 Output: "apbqrs"
 Explanation: Notice that as word2 is longer, "rs" is appended to the end.
 word1:  a   b
 word2:    p   q   r   s
 merged: a p b q   r   s
 
 
 Example 3:
 Input: word1 = "abcd", word2 = "pq"
 Output: "apbqcd"
 Explanation: Notice that as word1 is longer, "cd" is appended to the end.
 word1:  a   b   c   d
 word2:    p   q
 merged: a p b q c   d
  

 Constraints:

 1 <= word1.length, word2.length <= 100
 word1 and word2 consist of lowercase English letters.
 */

func mergeAlternately(_ word1: String, _ word2: String) -> String {
    
    var word1Array = Array(word1)
    var word2Array = Array(word2)
    var resultString = ""
    
    if word1Array.count == word2Array.count {
        for i in 0..<word1Array.count {
            resultString += String(word1Array[i])
            resultString += String(word2Array[i])
        }
    } else {
        if word1Array.count > word2Array.count {
            for i in 0..<word1Array.count {
                if i < word2Array.count {
                    resultString += String(word1Array[i])
                    resultString += String(word2Array[i])
                } else {
                    resultString += String(word1Array[i])
                }
            }
        } else {
            for i in 0..<word2Array.count {
                if i < word1Array.count {
                    resultString += String(word1Array[i])
                    resultString += String(word2Array[i])
                } else {
                    resultString += String(word2Array[i])
                }
            }
        }
    }
    return resultString
}

//Testing
var word1 = "abc", word2 = "pqr"
print(mergeAlternately(word1, word2)) //"apbqcr"

var word12 = "ab", word22 = "pqrs"
print(mergeAlternately(word12, word22)) //"apbqrs"
