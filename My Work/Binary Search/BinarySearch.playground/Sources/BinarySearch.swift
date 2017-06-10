
import Foundation

// must be sorted ascendingly
public func binarySearch<T: Comparable>(_ a:[T], target: T) -> Int? {
    return binarySearch(a, target: target, range: 0..<a.count)
}

private func binarySearch<T: Comparable>(_ a:[T], target: T, range: Range<Int>) -> Int? {

    // base case 1, no match
    guard range.lowerBound < range.upperBound else {
        return nil
    }
    let length = range.upperBound - range.lowerBound
    let halfLength = length / 2
    let midIndex = range.lowerBound + halfLength
    // base case 2, exact match
    guard target != a[midIndex] else {
        return midIndex
    }
    
    // recursive case
    if target < a[midIndex] {
        return binarySearch(a, target: target, range: 0..<midIndex)
    } else {
        return binarySearch(a, target: target, range: midIndex+1..<range.upperBound)
        // 0 1 2 3 4 target: 3
        // 1,2,3,4 range: 0..<4, midIndex: 2
        //   2,3,4 range: 1..<4, midIndex: 2
        //
        
    }
    
}
