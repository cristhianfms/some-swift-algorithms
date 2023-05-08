import Foundation

/**
 Exercise 2:
 Create a function that analyzes a text and returns the number of words in the text, the complete length of the text, and the length of each word that appears in the text in a list.
 */

struct TextDetail {
    let numberOfWords: Int
    let completeLength: Int
    let lengthOfWords: [Int]
}

func analizeText(text: String) -> TextDetail {
    
    let words = text.split(separator: " ", omittingEmptySubsequences: true)
    let wordsLenght:[Int] = words.map { s in
        s.count
    }
    
    return TextDetail(numberOfWords: words.count, completeLength: text.count, lengthOfWords: wordsLenght)
}

let result = analizeText(text: "   hello    how    is it going?    ")
print(result)
