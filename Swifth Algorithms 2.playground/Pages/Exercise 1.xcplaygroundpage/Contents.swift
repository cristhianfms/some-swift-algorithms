import Foundation

/*Exercise 1:
 Create an array with 50 random integers. From it, create a response string that includes any prime numbers found in the array. The result should be a string similar to: "The random prime numbers in this list are x, x, x, x, x".*/

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


var numbers:[Int] = Array(repeating: 0, count: 50)
for i in 0..<numbers.count {
    
    var number:Int
    repeat {
        number = Int.random(in: 1...10000)
    } while !isPrime(num:number) || numbers.contains(number)
    
    numbers[i] = number
}



var result:String = String(numbers[0])
for i in 1..<numbers.count {
    result += ", " + String(numbers[i])
}


print("The random prime numbers in this list are \(result)")
