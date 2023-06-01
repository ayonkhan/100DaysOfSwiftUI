import Cocoa

enum ValidationError: Error {
    case tooLow, tooHigh
}

enum MathError: Error {
    case noRoot
}

func findSqRt(of number: Int) throws -> Int {
    if number < 1 { throw ValidationError.tooLow }
    if number > 10_000 { throw ValidationError.tooHigh }
    
    for i in 1...100 {
        if i * i == number {
            return i
        }
    }
    
    throw MathError.noRoot
}

do {
    print(try findSqRt(of: 121))
} catch MathError.noRoot {
    print("No root")
} catch {
    print("Error: out of bounds")
}
