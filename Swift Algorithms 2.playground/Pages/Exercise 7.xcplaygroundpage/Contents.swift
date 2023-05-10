import Foundation

/**
 Exercise 7:
 Given a sentence to a function, break it down into its individual words. Once done, return a dictionary with the words as keys and in the value, the number of times each word appears in the sentence.
 */

func numberOfWordsOcurrences(sentence: String) -> [String: Int] {
    var ocurrences: [String: Int] = [:]
    let words = sentence.components(separatedBy: " ")
    
    for w in words {
        if let value = ocurrences[w] {
            ocurrences[w] = value + 1
        } else {
            ocurrences[w] = 1
        }
    }
    
    return ocurrences
}


let sentence1 = "Hi this is a test yes it's only a crazy test"
numberOfWordsOcurrences(sentence: sentence1)
