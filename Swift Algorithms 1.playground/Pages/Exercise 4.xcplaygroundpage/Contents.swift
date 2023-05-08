import Foundation

/**
 Exercise 4:
 Create a program that is able to determine if a string contains a palindrome value. It should reject when the string contains more than one word to avoid errors.
 ALGORITHM: A palindrome word reads the same forwards and backwards.
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
