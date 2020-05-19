import UIKit

// Question # 1: What will be the output of the following code snippet?

//var thing = "cars"
//
//var closure = {[thing] in
//    print("I love \(thing)!")
//}
//
//thing = "airplanes"
//
//closure()

//Answer: 'I love cars!'

// Question # 2: Write a function to tell whether a string is a palindrome or not.

//print(isPalindrome("madam")) //Should print 'true'.
//print(isPalindrome("madame")) //Should print 'false'.
//print(isPalindrome("Ali")) //Should print 'false'.
//print(isPalindrome("AlA")) //Should print 'false'.

//Answer:

//func isPalindrome(_ word: String) -> Bool {
//
//    let count = word.count
//    let halfCount = count/2
//    let chars = Array(word)
//    for i in 0...halfCount {
//        if chars[i] != chars[count-1-i] {
//            return false
//        }
//    }
//    return true
//}

// Question # 3: Write a function to return the second largest element from an array of integers.

//print(getSecondLargestFrom([1,2,3,4,5,6]))// Should print '5'
//print(getSecondLargestFrom([1,2,5,4,9,6,3,7]))// Should print '7'
//print(getSecondLargestFrom([7,2,5,4,9,6,3,1]))// Should print '7'
//print(getSecondLargestFrom([1]))// Should print '1'

//Answer:

//func getSecondLargestFrom(_ array:[Int]) -> Int {
//
//    let count = array.count
//    guard count > 0 else {return 0}
//    var largest = array[0]
//    var secondLargest = array[0]
//
//    for i in 1..<count {
//        let element = array[i]
//        if largest < element {
//            secondLargest = largest
//            largest = element
//        } else if secondLargest < element {
//            secondLargest = element
//        }
//    }
//
//    return secondLargest
//}

// Question # 4: Write a function to print any duplicate characters in a string and the number of their occurances as well.

//printDuplicateElements("JAVA") //Should print 'A appears 2 time(s)'
//printDuplicateElements("BEBEBE") //Should print 'B appears 3 time(s)' & 'E appears 3 time(s)'

//func printDuplicateElementsFrom(_ string: String) {
//
//    var elementOccurances: Dictionary<Character, Int> = [:]
//
//    for element in Array(string) {
//        let elementOccurance = elementOccurances[element] ?? 0
//
//        elementOccurances[element] = elementOccurance + 1
//    }
//
//    for (element, occurances) in elementOccurances {
//        if occurances > 1 {
//            print("\(element) appears \(occurances) time(s).")
//        }
//    }
//}
