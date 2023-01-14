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


/*
 Count total prime numbers of an array
 */
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


/*
 Return n Fibonacci numbers
 */
func fibonacciNumbers(_ n: Int) -> [Int]{
    if n == 1 {
        return [1]
    } else if n == 2 {
        return [1, 2]
    } else {
        var result: [Int] = [1, 2]
        for i in 2...(n-1) {
            let antAnt = result[i - 2]
            let ant = result[i - 1]
            result.append(antAnt + ant)
        }
        return result
    }
}

// Tests cases
fibonacciNumbers(1)
fibonacciNumbers(2)
fibonacciNumbers(10)


/*
 Determine if a word is palindrome
 */
func isPalindrome(_ word: String) -> Bool {
    var i = 0
    var j = word.count - 1
    while i < j {
        var firstIndex = word.index(word.startIndex, offsetBy: i)
        var lastIndex = word.index(word.startIndex, offsetBy: j)
        
        if word[firstIndex] != word[lastIndex] {
            return false
        }
        
        i = i + 1
        j = j - 1
    }
    
    return true
}

// Tests cases
isPalindrome("test")
isPalindrome("somos")
isPalindrome("añoralaroña")


/*
 Sum digits of the factorial of a number
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



/*
 Create a set of n prime numbers (3 numbers minimum) and also another set with only 3 elements in common
 */
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


/*
 Sum all numbers of an array
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



/*
 Create an array with random numbers and filter only prime numbers
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



/*
 Arithmetic average of numbers in array
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


/*
 Create a diccionary that stores products and prices per kg.
 Create a function that receives a product and a weigth in kg and returns the price
 */
