/*
 Problem 383 - Ransom Note
 Easy - Hashmaps
 
 Given two strings ransomNote and magazine, return true if ransomNote can be constructed by using the letters from magazine and false otherwise.

 Each letter in magazine can only be used once in ransomNote.

  

 Example 1:

 Input: ransomNote = "a", magazine = "b"
 Output: false
 Example 2:

 Input: ransomNote = "aa", magazine = "ab"
 Output: false
 Example 3:

 Input: ransomNote = "aa", magazine = "aab"
 Output: true
  

 Constraints:

 1 <= ransomNote.length, magazine.length <= 105
 ransomNote and magazine consist of lowercase English letters.
 */

func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
    
    guard ransomNote.count <= magazine.count else { return false }
    
    var magazineDict: [Character: Int] = [:]
    var ransomDict: [Character: Int] = [:]
    
    for letter in magazine {
        if magazineDict[letter] != nil {
            magazineDict[letter]! += 1
        } else {
            magazineDict[letter] = 1
        }
    }
    
    for letter in ransomNote {
        if ransomDict[letter] != nil {
            ransomDict[letter]! += 1
        } else {
            ransomDict[letter] = 1
        }
    }
    
    for key in ransomDict.keys {
        guard let magazineCharCount = magazineDict[key] else { return false }
        
        if magazineCharCount < ransomDict[key]! {
            return false
        }
    }
    
    return true
}

//Testing
var ransomNote1 = "aa", magazine1 = "aab"
print(canConstruct(ransomNote1, magazine1))
