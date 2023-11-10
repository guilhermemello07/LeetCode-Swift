/*
 Problem 605 - Can place flowers
 Easy - Arrays and Strings
 
 You have a long flowerbed in which some of the plots are planted, and some are not. However, flowers cannot be planted in adjacent plots.

 Given an integer array flowerbed containing 0's and 1's, where 0 means empty and 1 means not empty, and an integer n, return true if n new flowers can be planted in the flowerbed without violating the no-adjacent-flowers rule and false otherwise.

  

 Example 1:
 Input: flowerbed = [1,0,0,0,1], n = 1
 Output: true
 
 Example 2:
 Input: flowerbed = [1,0,0,0,1], n = 2
 Output: false
  

 Constraints:
 1 <= flowerbed.length <= 2 * 104
 flowerbed[i] is 0 or 1.
 There are no two adjacent flowers in flowerbed.
 0 <= n <= flowerbed.length
 */

func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
    
    var counter = n
    var flowerbedCopy = flowerbed
    
    if n == 0 {
        return true 
    }
    
    if flowerbedCopy.count == 1 && n == 1 {
        if flowerbedCopy[0] == 0 {
            return true
        } else {
            return false
        }
    }
    
    for i in 0..<flowerbedCopy.count {
        
        if i + 1 < flowerbedCopy.count && i - 1 >= 0 {
            //I can check both sides
            if flowerbedCopy[i] == 0 {
                if flowerbedCopy[i + 1] == 0 && flowerbedCopy[i - 1] == 0 {
                    flowerbedCopy[i] = 1
                    counter -= 1
                }
            }
        } else if i + 1 < flowerbedCopy.count {
            //can check greater
            if flowerbedCopy[i] == 0 && flowerbedCopy[i + 1] == 0 {
                flowerbedCopy[i] = 1
                counter -= 1
            }
        } else if i - 1 >= 0 {
            if flowerbedCopy[i] == 0 && flowerbedCopy[i - 1] == 0 {
                flowerbedCopy[i] = 1
                counter -= 1
            }
        }
        
        if counter == 0 {
            return true
        }
    }
    return false
}


//Testing
var flowerbed1 = [1,0,0,0,1], n1 = 1
print(canPlaceFlowers(flowerbed1, n1)) //true

var flowerbed2 = [1,0,0,0,1], n2 = 2
print(canPlaceFlowers(flowerbed2, n2)) //false

var flowerbed3 = [0,0,1,0,1]
print(canPlaceFlowers(flowerbed3, 1)) //true

var flowerbed4 = [1,0,0,0,1,0,0]
print(canPlaceFlowers(flowerbed4, 2)) //true
