import Foundation

/**
 Exercise 6:
 Create a program with a set of elements that the user specifies, full of prime numbers. Create an algorithm that is able to calculate another set of random numbers that has at least 3 elements in common with the initial set.
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

func createPrimeSet(lenght: Int) -> Set<Int> {
    guard lenght >= 3 else {return [1, 2, 3]}
    
    var result : Set<Int> = []
    
    repeat {
        let number = Int.random(in: 0...1000)
        
        if isPrime(num: number) {
            result.insert(number)
        }
        
    } while result.count < lenght
    
    return result
}

// Precondition: elements has at least 3 elements
func createArrayWith3CommonElements(elements: Set<Int>, length: Int) -> Set<Int> {
    var result : Set<Int> = []
    var elementsInCommon = 0
    repeat {
        let number = Int.random(in: 0...1000)
        result.insert(number)
        if (elements.contains(number)) {
            elementsInCommon += 1
        }
        
    } while elementsInCommon < 3
    
    return result
}


var setA = createPrimeSet(lenght: 10)
var setB = createArrayWith3CommonElements(elements: setA, length: 10)
