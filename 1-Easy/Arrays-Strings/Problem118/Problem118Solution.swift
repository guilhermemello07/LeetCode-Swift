/*
 Problem 118 - Pascal's triangle
 Easy - Arrays&Strings
 
 Given an integer numRows, return the first numRows of Pascal's triangle.
 
 Example 1:

 Input: numRows = 5
 Output: [[1],[1,1],[1,2,1],[1,3,3,1],[1,4,6,4,1]]
 Example 2:

 Input: numRows = 1
 Output: [[1]]
  

 Constraints:

 1 <= numRows <= 30
 */

func generate(_ numRows: Int) -> [[Int]] {
    
    var res = [[1]]
    
    for _ in 0..<numRows - 1 {
        var temp = [0] + res.last! + [0]
        var row = [Int]()
        for j in 0...res.last!.count {
            row.append(temp[j] + temp[j+1])
        }
        res.append(row)
    }
    return res
}

//Testing
let numRows1 = 5 // Output: [[1],[1,1],[1,2,1],[1,3,3,1],[1,4,6,4,1]]
print(generate(numRows1))
