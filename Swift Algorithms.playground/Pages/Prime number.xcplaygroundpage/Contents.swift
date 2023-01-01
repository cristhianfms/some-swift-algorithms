import Foundation
/*
 Determine if a positive integer is prime or not
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


// Test cases
isPrime(num: 1)
isPrime(num: 2)
isPrime(num: 3)
isPrime(num: 4)
isPrime(num: 5)
isPrime(num: 6)
isPrime(num: 97)
isPrime(num: 53)
isPrime(num: 17)
