import Cocoa

func randNum(from nums: [Int]?) -> Int {
    return nums?.randomElement() ?? Int.random(in: 1...100)
}

var primeNumbers = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]
print(randNum(from: primeNumbers))

var nums: [Int]? = nil
print(randNum(from: nums))
