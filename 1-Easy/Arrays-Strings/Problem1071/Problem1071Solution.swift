/*
 Problem 1071 - Greatest common divisor of strings
 Easy - Strings and Arrays
 
 For two strings s and t, we say "t divides s" if and only if s = t + ... + t (i.e., t is concatenated with itself one or more times).

 Given two strings str1 and str2, return the largest string x such that x divides both str1 and str2.

  

 Example 1:
 Input: str1 = "ABCABC", str2 = "ABC"
 Output: "ABC"
 
 Example 2:
 Input: str1 = "ABABAB", str2 = "ABAB"
 Output: "AB"
 
 Example 3:
 Input: str1 = "LEET", str2 = "CODE"
 Output: ""
  

 Constraints:

 1 <= str1.length, str2.length <= 1000
 str1 and str2 consist of English uppercase letters.
 */

func gcdOfStrings(_ str1: String, _ str2: String) -> String {
    
    var str1Array = Array(str1)
    var str2Array = Array(str2)
    
    var len1 = str1Array.count, len2 = str2Array.count
    
    func isDivisor(i: Int) -> Bool {
        if len1 % i != 0 || len2 % i != 0 {
            return false
        }
        
        var factor1 = len1 / i
        var factor2 = len2 / i
        
        return String(repeating: String(str1Array[0..<i]), count: factor1) == str1 && String(repeating: String(str1Array[0..<i]), count: factor2) == str2
    }
    
    for i in stride(from: min(len1, len2), to: 0, by: -1) {
        if isDivisor(i: i) {
            return String(str1Array[0..<i])
        }
    }
    return ""
}

//Testing
var str9 = "TAUXXTAUXXTAUXXTAUXXTAUXX", str10 = "TAUXXTAUXXTAUXXTAUXXTAUXXTAUXXTAUXXTAUXXTAUXX"
print(gcdOfStrings(str9, str10)) //TAUXX

var str11 = "ABCABC", str12 = "ABC"
print(gcdOfStrings(str11, str12)) //"ABC"

var str3 = "ABABAB", str4 = "ABAB"
print(gcdOfStrings(str3, str4)) //"AB"

var str5 = "LEET", str6 = "CODE"
print(gcdOfStrings(str5, str6)) //""

var str7 = "ABCDEF", str8 = "ABC"
print(gcdOfStrings(str7, str8)) //""
