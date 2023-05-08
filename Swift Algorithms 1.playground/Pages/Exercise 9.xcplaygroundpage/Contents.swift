import Foundation

/**
 Exercise 9:
 Create a program that is able to obtain the arithmetic mean of a sequence of numbers within an array.
 */

func calcArithmeticAverage(array:[Int]) -> Double {
    var sum:Int = 0
    for i in array {
        sum += i
    }
    
    let res:Double = Double(sum) / Double(array.count)
    
    return res
}

// Test cases
calcArithmeticAverage(array: [1, 2, 3, 4, 5, 6, 7, 99, 98, 77])
