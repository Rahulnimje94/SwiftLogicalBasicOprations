import UIKit

// Removed Duplicate Values from Array

var numbers = [1,3,1,2,4,4,6,5,6]
print(Set(numbers))

// Convert To Array
print(Array(Set(numbers)))
print(Set(numbers).sorted())

extension Array where Element: Equatable {
    
    func removeDuplicateValues() -> [Element] {
        var tempArray: [Element] = []
        
        for number in self {
            if !tempArray.contains(number) {
                tempArray.append(number)
            }
        }
        return tempArray
    }
}

print("Result :", numbers.removeDuplicateValues())
