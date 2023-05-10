import Foundation

/**
 Exercise 6:
 Given an array of integers, return a dictionary in which each unique number in the array is a key and the value is the number of times it appears consecutively within the array sent.
 */


func numberOfOccurrences ( numbers: [Int]) -> [Int:Int] {
    var ocurrences: [Int:Int] = [:]
    for n in numbers {
        if let value = ocurrences[n] {
            ocurrences[n] = value + 1
        } else {
            ocurrences[n] = 1
        }
    }
    
    return ocurrences
}


let arrray1: [Int] = [1, 2, 3, 1, 2, 3, 4]

numberOfOccurrences(numbers: arrray1)
