import UIKit

// Swap the numbers

var a = 10.11
var b = 12.12

//(a,b) = (b,a)

func swapNumbers<T>(a: inout T, b: inout T) {
    (a,b) = (b,a)
}

swapNumbers(a: &b, b: &a)

print("a", a)
print("b", b)


// Swaping Array values
// By Adding T we create generics and We can pass different types of values like Int, float or Double
var numbers = [10, 12, 15]

func swapNumberUsingIndex<T>(_ array: inout [T], i: Int, j: Int) {
    array.swapAt(i, j)
}

swapNumberUsingIndex(&numbers, i: 0, j: 2)
print(numbers)
