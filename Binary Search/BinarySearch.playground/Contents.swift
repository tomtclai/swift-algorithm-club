//: Playground - noun: a place where people can play

// An unsorted array of numbers
let numbers = [1,3,4,22]
let sorted = numbers.sorted()

// Using recursive solution
binarySearch(sorted, key: 3, range: 0 ..< sorted.count)   // gives 0
binarySearch(sorted, key: 67, range: 0 ..< sorted.count)  // gives 18
binarySearch(sorted, key: 43, range: 0 ..< sorted.count)  // gives 13
binarySearch(sorted, key: 42, range: 0 ..< sorted.count)  // nil

// Using iterative solution
binarySearch(sorted, key: 2)   // gives 0
binarySearch(sorted, key: 67)  // gives 18
binarySearch(sorted, key: 43)  // gives 13
binarySearch(sorted, key: 42)  // nil
