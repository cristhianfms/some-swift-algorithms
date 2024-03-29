import Foundation

/**
 Exercise 2:
 Create a program that is able to count the total number of prime numbers in an array of integers.
 */

func isPrime(num: Int) -> Bool{
    if num <= 3 {
        return true
    } else if (num % 3 == 0 || num % 2 == 0){
        return false
    } else {
        var i = 5
        while i*i <= num {
            if num % i == 0 || num % (i+2) == 0 {
                return false
            }
            i += 6
        }
        return true
    }
}


func countPrimes(arr: [Int]) -> Int{
    var total: Int = 0
    for i in 0..<arr.count {
        if isPrime(num: arr[i]){
            total += 1
        }
    }
    return total
}


// Test cases
var array1 : [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
countPrimes(arr: array1)
array1 = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]
countPrimes(arr: array1)
array1 = [74, 75, 76, 77, 78]
countPrimes(arr: array1)
