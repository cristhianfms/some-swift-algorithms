import Foundation

/**
 Exercise 5:
 Create a program that is able to add up the different digits of a specified factorial number:
 EXAMPLE: 5! = 5 * 4 * 3 * 2 * 1 = 120 -> 1 + 2 + 0 = 3
 */

func sumFactorialDigits(_ n: Int) -> Int {
    let factorial = calculateFactorial(n)
    let sumDigits = calculateSumDigits(factorial)
    
    return sumDigits
}

func calculateFactorial(_ n: Int) -> Int {
    var factorial:Int = 1
    
    for i in 1...n {
        factorial *= i
    }
    
    return factorial
}

func calculateSumDigits( _ n: Int) -> Int {
    var sum: Int = 0
    var result: Int = n
    
    repeat {
        let rest = result % 10
        result = result / 10
        sum += rest
    } while result > 0
    
    return sum
}

// Tests caess
sumFactorialDigits(5)
sumFactorialDigits(6)
sumFactorialDigits(9)
