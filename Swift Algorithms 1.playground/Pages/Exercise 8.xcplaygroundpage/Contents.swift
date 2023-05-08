import Foundation

/**
 Exercise 8:
 Construct an array with at least 100 random numbers between 1 and 100, and then filter it to obtain only those numbers that are prime among the 100 that were originally there.
 */

func createArray(lenght:Int) -> [Int] {
    var array:[Int] = Array<Int>()
    
    for _ in 1...100 {
        array.append(Int.random(in: 1...100))
    }
    
    return array
}

func filterPrimes(array:[Int]) -> [Int] {
    var primes:[Int] = []
    for i in array {
        if isPrime(num: i) {
            primes.append(i)
        }
    }
    return primes
}

// Test cases
let randomArray = createArray(lenght: 100)
let primes = filterPrimes(array: randomArray)
