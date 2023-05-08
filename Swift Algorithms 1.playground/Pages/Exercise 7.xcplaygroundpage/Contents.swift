import Foundation

/**
 Exercise 7:
 Create a program that is able to add up all the numbers in an array of integers.
 */

func sum(_ array:[Int]) -> Int {
    var res:Int = 0
    for i in array {
        res += i
    }
    
    return res
}

// Test cases
var array2 : [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
sum(array2)
