import Foundation

/**
 Exercise 3:
 Create a program that is able to return the total number of Fibonacci sequence numbers, in order from the first number, that the user requests.
 ALGORITHM: The Fibonacci sequence is obtained by starting with the first two numbers 1 and 2, and then adding the two previous positions consecutively to obtain the new value: 1, 2, 3, 5, 8, 13, 21...
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
